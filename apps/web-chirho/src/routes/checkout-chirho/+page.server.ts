// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, error } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';
import {
	getStripeConfigChirho,
	createStripeClientChirho,
	createCheckoutSessionChirho,
	SUBSCRIPTION_TIERS_CHIRHO,
	type SubscriptionTierChirho
} from '$lib/server/stripe_chirho';

export const load: PageServerLoad = async ({ url, locals, platform }) => {
	// Must be logged in
	if (!locals.userChirho) {
		redirect(302, `/auth-chirho/login?redirect=${encodeURIComponent(url.pathname + url.search)}`);
	}

	const tierIdChirho = url.searchParams.get('tier') as SubscriptionTierChirho | null;

	if (!tierIdChirho || !SUBSCRIPTION_TIERS_CHIRHO[tierIdChirho]) {
		redirect(302, '/pricing-chirho');
	}

	const tierChirho = SUBSCRIPTION_TIERS_CHIRHO[tierIdChirho];

	// Scholarship tier doesn't use Stripe
	if (tierIdChirho === 'scholarship') {
		redirect(302, '/scholarship-chirho');
	}

	// Check for Stripe configuration
	const env = platform?.env || {};
	const stripeConfigChirho = getStripeConfigChirho(env);

	if (!stripeConfigChirho) {
		// Stripe not configured - show message
		return {
			stripeConfiguredChirho: false,
			tierChirho: {
				id: tierIdChirho,
				name: tierChirho.name,
				price: tierChirho.price,
				description: tierChirho.description
			}
		};
	}

	try {
		const stripeChirho = createStripeClientChirho(stripeConfigChirho);

		const successUrlChirho = `${url.origin}/checkout-chirho/success?session_id={CHECKOUT_SESSION_ID}`;
		const cancelUrlChirho = `${url.origin}/pricing-chirho`;

		const sessionChirho = await createCheckoutSessionChirho(
			stripeChirho,
			tierIdChirho,
			locals.userChirho.userId,
			locals.userChirho.email,
			successUrlChirho,
			cancelUrlChirho
		);

		if (!sessionChirho?.url) {
			error(500, 'Failed to create checkout session');
		}

		// Redirect to Stripe Checkout
		redirect(303, sessionChirho.url);
	} catch (errChirho) {
		console.error('Stripe checkout error:', errChirho);
		error(500, 'Failed to initialize payment');
	}
};
