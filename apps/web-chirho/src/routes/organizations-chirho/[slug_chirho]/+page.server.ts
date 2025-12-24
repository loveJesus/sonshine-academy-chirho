// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { organizationChirho, cohortChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ params, locals }) => {
	if (!locals.dbChirho) {
		error(500, 'Database not available');
	}

	const { slug_chirho } = params;

	// Get the organization
	const orgsChirho = await locals.dbChirho
		.select()
		.from(organizationChirho)
		.where(eq(organizationChirho.slug, slug_chirho))
		.limit(1);

	if (orgsChirho.length === 0) {
		error(404, 'Organization not found');
	}

	const organizationDataChirho = orgsChirho[0];

	if (!organizationDataChirho.isActive) {
		error(404, 'This organization is no longer active');
	}

	// Get active cohorts accepting enrollment
	const cohortsChirho = await locals.dbChirho
		.select()
		.from(cohortChirho)
		.where(eq(cohortChirho.organizationId, organizationDataChirho.organizationId));

	const activeCohortsChirho = cohortsChirho.filter(
		(cChirho) =>
			cChirho.isAcceptingEnrollment &&
			(cChirho.status === 'upcoming' || cChirho.status === 'active') &&
			(cChirho.currentEnrollment || 0) < (cChirho.maxStudents || 30)
	);

	// Check if user is already a member
	const isAlreadyMemberChirho =
		locals.userChirho?.organizationId === organizationDataChirho.organizationId;

	// Check if user is an admin of this org
	const isOrgAdminChirho =
		locals.userChirho?.role === 'platform_admin' ||
		(locals.userChirho?.role === 'org_admin' &&
			locals.userChirho?.organizationId === organizationDataChirho.organizationId);

	return {
		organizationChirho: {
			name: organizationDataChirho.name,
			slug: organizationDataChirho.slug,
			description: organizationDataChirho.description,
			organizationType: organizationDataChirho.organizationType,
			logoUrl: organizationDataChirho.logoUrl,
			primaryColor: organizationDataChirho.primaryColor,
			isVerified: organizationDataChirho.isVerified,
			city: organizationDataChirho.city,
			state: organizationDataChirho.state
		},
		cohortsChirho: activeCohortsChirho.map((cChirho) => ({
			cohortId: cChirho.cohortId,
			name: cChirho.name,
			description: cChirho.description,
			startDate: cChirho.startDate,
			endDate: cChirho.endDate,
			maxStudents: cChirho.maxStudents,
			currentEnrollment: cChirho.currentEnrollment,
			status: cChirho.status
		})),
		isAlreadyMemberChirho,
		isOrgAdminChirho,
		isLoggedInChirho: !!locals.userChirho
	};
};
