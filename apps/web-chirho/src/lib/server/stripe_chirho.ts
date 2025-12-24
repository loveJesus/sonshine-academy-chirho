// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import Stripe from 'stripe';

// Subscription tiers
export const SUBSCRIPTION_TIERS_CHIRHO = {
	scholarship: {
		id: 'scholarship',
		name: 'Scholarship',
		price: 0,
		priceId: null, // Free tier, no Stripe product
		description: 'Full access, no cost - for those who cannot afford to pay',
		features: ['Full course access', 'All quests', 'Quest Coins', 'Community Discord']
	},
	supporter: {
		id: 'supporter',
		name: 'Supporter',
		price: 500, // $5.00 in cents
		priceId: 'price_supporter_chirho', // Will be replaced with actual Stripe price ID
		description: 'Covers server infrastructure costs',
		features: [
			'Full course access',
			'All quests',
			'Quest Coins',
			'Community Discord',
			'Supporter badge'
		]
	},
	champion: {
		id: 'champion',
		name: 'Champion',
		price: 1000, // $10.00 in cents
		priceId: 'price_champion_chirho',
		description: 'Supports the mission and funds scholarships',
		features: [
			'Full course access',
			'All quests',
			'Quest Coins',
			'Community Discord',
			'Champion badge',
			'Priority support'
		]
	},
	hero: {
		id: 'hero',
		name: 'Hero',
		price: 2500, // $25.00 in cents
		priceId: 'price_hero_chirho',
		description: 'Sponsors 5 students, supports missions',
		features: [
			'Full course access',
			'All quests',
			'Quest Coins',
			'Community Discord',
			'Hero badge',
			'Priority support',
			'Monthly progress reports',
			'Name on sponsors page'
		]
	}
} as const;

export type SubscriptionTierChirho = keyof typeof SUBSCRIPTION_TIERS_CHIRHO;

export interface StripeConfigChirho {
	secretKey: string;
	webhookSecret: string;
	publishableKey: string;
}

export function getStripeConfigChirho(env: Record<string, unknown>): StripeConfigChirho | null {
	const secretKeyChirho = env.STRIPE_SECRET_KEY as string | undefined;
	const webhookSecretChirho = env.STRIPE_WEBHOOK_SECRET as string | undefined;
	const publishableKeyChirho = env.STRIPE_PUBLISHABLE_KEY as string | undefined;

	if (!secretKeyChirho) {
		return null;
	}

	return {
		secretKey: secretKeyChirho,
		webhookSecret: webhookSecretChirho || '',
		publishableKey: publishableKeyChirho || ''
	};
}

export function createStripeClientChirho(configChirho: StripeConfigChirho): Stripe {
	return new Stripe(configChirho.secretKey);
}

export async function createCheckoutSessionChirho(
	stripeChirho: Stripe,
	tierIdChirho: SubscriptionTierChirho,
	userIdChirho: string,
	userEmailChirho: string,
	successUrlChirho: string,
	cancelUrlChirho: string
): Promise<Stripe.Checkout.Session | null> {
	const tierChirho = SUBSCRIPTION_TIERS_CHIRHO[tierIdChirho];

	if (!tierChirho || !tierChirho.priceId) {
		return null;
	}

	const sessionChirho = await stripeChirho.checkout.sessions.create({
		mode: 'subscription',
		payment_method_types: ['card'],
		line_items: [
			{
				price: tierChirho.priceId,
				quantity: 1
			}
		],
		customer_email: userEmailChirho,
		client_reference_id: userIdChirho,
		success_url: successUrlChirho,
		cancel_url: cancelUrlChirho,
		metadata: {
			userId: userIdChirho,
			tierId: tierIdChirho
		}
	});

	return sessionChirho;
}

export async function createCustomerPortalSessionChirho(
	stripeChirho: Stripe,
	customerIdChirho: string,
	returnUrlChirho: string
): Promise<Stripe.BillingPortal.Session> {
	return await stripeChirho.billingPortal.sessions.create({
		customer: customerIdChirho,
		return_url: returnUrlChirho
	});
}

export function verifyWebhookSignatureChirho(
	stripeChirho: Stripe,
	payloadChirho: string,
	signatureChirho: string,
	webhookSecretChirho: string
): Stripe.Event {
	return stripeChirho.webhooks.constructEvent(payloadChirho, signatureChirho, webhookSecretChirho);
}
