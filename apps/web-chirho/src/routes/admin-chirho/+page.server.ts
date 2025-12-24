// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { eq } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import {
	userChirho,
	organizationChirho,
	cohortChirho,
	questChirho,
	questSubmissionChirho,
	payloadChirho,
	vpsNodeChirho,
	terminalContainerChirho,
	paymentChirho
} from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.dbChirho) {
		return { statsChirho: null };
	}

	// Get counts for dashboard stats
	const usersChirho = await locals.dbChirho.select().from(userChirho);
	const orgsChirho = await locals.dbChirho.select().from(organizationChirho);
	const cohortsChirho = await locals.dbChirho.select().from(cohortChirho);
	const questsChirho = await locals.dbChirho.select().from(questChirho);
	const payloadsChirho = await locals.dbChirho.select().from(payloadChirho);
	const vpsNodesChirho = await locals.dbChirho.select().from(vpsNodeChirho);
	const containersChirho = await locals.dbChirho.select().from(terminalContainerChirho);
	const paymentsChirho = await locals.dbChirho.select().from(paymentChirho);

	// Count by role
	const studentsCountChirho = usersChirho.filter((uChirho) => uChirho.role === 'student').length;
	const instructorsCountChirho = usersChirho.filter((uChirho) => uChirho.role === 'instructor').length;
	const orgAdminsCountChirho = usersChirho.filter((uChirho) => uChirho.role === 'org_admin').length;

	// Active orgs and cohorts
	const activeOrgsCountChirho = orgsChirho.filter((oChirho) => oChirho.isActive).length;
	const activeCohortsCountChirho = cohortsChirho.filter(
		(cChirho) => cChirho.status === 'active' || cChirho.status === 'upcoming'
	).length;

	// VPS stats
	const onlineNodesCountChirho = vpsNodesChirho.filter((nChirho) => nChirho.status === 'online').length;
	const runningContainersCountChirho = containersChirho.filter(
		(cChirho) => cChirho.status === 'running'
	).length;

	// Payment stats
	const successfulPaymentsChirho = paymentsChirho.filter((pChirho) => pChirho.status === 'succeeded');
	const totalRevenueCentsChirho = successfulPaymentsChirho.reduce(
		(sumChirho, pChirho) => sumChirho + (pChirho.amountCents || 0),
		0
	);

	// Recent users (last 7 days)
	const oneWeekAgoChirho = new Date();
	oneWeekAgoChirho.setDate(oneWeekAgoChirho.getDate() - 7);
	const recentUsersChirho = usersChirho.filter(
		(uChirho) => uChirho.createdAt && new Date(uChirho.createdAt) > oneWeekAgoChirho
	);

	return {
		statsChirho: {
			totalUsersChirho: usersChirho.length,
			studentsCountChirho,
			instructorsCountChirho,
			orgAdminsCountChirho,
			totalOrgsChirho: orgsChirho.length,
			activeOrgsCountChirho,
			totalCohortsChirho: cohortsChirho.length,
			activeCohortsCountChirho,
			totalQuestsChirho: questsChirho.length,
			totalPayloadsChirho: payloadsChirho.length,
			totalVpsNodesChirho: vpsNodesChirho.length,
			onlineNodesCountChirho,
			totalContainersChirho: containersChirho.length,
			runningContainersCountChirho,
			totalRevenueChirho: totalRevenueCentsChirho / 100,
			recentUsersCountChirho: recentUsersChirho.length
		},
		recentUsersChirho: recentUsersChirho.slice(0, 10).map((uChirho) => ({
			username: uChirho.username,
			email: uChirho.email,
			role: uChirho.role,
			createdAt: uChirho.createdAt
		}))
	};
};
