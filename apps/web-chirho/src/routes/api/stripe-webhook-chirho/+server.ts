// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { json, error } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';
import type { RequestHandler } from './$types';
import {
	getStripeConfigChirho,
	createStripeClientChirho,
	verifyWebhookSignatureChirho
} from '$lib/server/stripe_chirho';
import { userChirho } from '$lib/server/db/schema';

export const POST: RequestHandler = async ({ request, locals, platform }) => {
	const env = platform?.env || {};
	const stripeConfigChirho = getStripeConfigChirho(env);

	if (!stripeConfigChirho) {
		error(500, 'Stripe not configured');
	}

	const signatureChirho = request.headers.get('stripe-signature');
	if (!signatureChirho) {
		error(400, 'Missing signature');
	}

	const payloadChirho = await request.text();
	const stripeChirho = createStripeClientChirho(stripeConfigChirho);

	let eventChirho;
	try {
		eventChirho = verifyWebhookSignatureChirho(
			stripeChirho,
			payloadChirho,
			signatureChirho,
			stripeConfigChirho.webhookSecret
		);
	} catch (errChirho) {
		console.error('Webhook signature verification failed:', errChirho);
		error(400, 'Invalid signature');
	}

	// Handle the event
	switch (eventChirho.type) {
		case 'checkout.session.completed': {
			const sessionChirho = eventChirho.data.object;
			const userIdChirho = sessionChirho.client_reference_id;
			const tierIdChirho = sessionChirho.metadata?.tierId;

			if (userIdChirho && tierIdChirho && locals.dbChirho) {
				// Update user's payment status
				await locals.dbChirho
					.update(userChirho)
					.set({
						paymentStatus: 'donated',
						donationAmountCents: sessionChirho.amount_total || 0,
						updatedAt: new Date()
					})
					.where(eq(userChirho.userId, userIdChirho));

				console.log(`Payment completed for user ${userIdChirho}, tier: ${tierIdChirho}`);
			}
			break;
		}

		case 'customer.subscription.updated': {
			const subscriptionChirho = eventChirho.data.object;
			// Handle subscription updates (upgrades, downgrades)
			console.log('Subscription updated:', subscriptionChirho.id);
			break;
		}

		case 'customer.subscription.deleted': {
			const subscriptionChirho = eventChirho.data.object;
			// Handle subscription cancellation
			console.log('Subscription cancelled:', subscriptionChirho.id);
			break;
		}

		default:
			console.log(`Unhandled event type: ${eventChirho.type}`);
	}

	return json({ received: true });
};
