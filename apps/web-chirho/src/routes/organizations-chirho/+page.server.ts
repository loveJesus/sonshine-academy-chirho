// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { eq, and } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { organizationChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.dbChirho) {
		return {
			organizationsChirho: []
		};
	}

	// Get all active, verified organizations
	const organizationsChirho = await locals.dbChirho
		.select({
			name: organizationChirho.name,
			slug: organizationChirho.slug,
			organizationType: organizationChirho.organizationType,
			city: organizationChirho.city,
			state: organizationChirho.state,
			logoUrl: organizationChirho.logoUrl
		})
		.from(organizationChirho)
		.where(
			and(
				eq(organizationChirho.isActive, true),
				eq(organizationChirho.isVerified, true)
			)
		);

	return {
		organizationsChirho
	};
};
