// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect } from '@sveltejs/kit';
import { eq, and, desc } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import {
	organizationChirho,
	cohortChirho,
	terminalContainerChirho,
	questSubmissionChirho,
	questChirho,
	payloadExecutionChirho,
	studentProgressChirho,
	announcementChirho
} from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login?redirect=/dashboard-chirho');
	}

	const userChirhoData = locals.userChirho;

	// Get organization info if user belongs to one
	let organizationDataChirho = null;
	if (userChirhoData.organizationId) {
		const orgsChirho = await locals.dbChirho
			.select()
			.from(organizationChirho)
			.where(eq(organizationChirho.organizationId, userChirhoData.organizationId))
			.limit(1);
		if (orgsChirho.length > 0) {
			organizationDataChirho = orgsChirho[0];
		}
	}

	// Get cohort info if user belongs to one
	let cohortDataChirho = null;
	if (userChirhoData.cohortId) {
		const cohortsChirho = await locals.dbChirho
			.select()
			.from(cohortChirho)
			.where(eq(cohortChirho.cohortId, userChirhoData.cohortId))
			.limit(1);
		if (cohortsChirho.length > 0) {
			cohortDataChirho = cohortsChirho[0];
		}
	}

	// Get terminal container info
	let terminalDataChirho = null;
	if (userChirhoData.terminalContainerId) {
		const containersChirho = await locals.dbChirho
			.select()
			.from(terminalContainerChirho)
			.where(eq(terminalContainerChirho.containerId, userChirhoData.terminalContainerId))
			.limit(1);
		if (containersChirho.length > 0) {
			terminalDataChirho = containersChirho[0];
		}
	}

	// Get recent quest submissions
	const recentQuestSubmissionsChirho = await locals.dbChirho
		.select({
			submissionId: questSubmissionChirho.submissionId,
			questId: questSubmissionChirho.questId,
			isCorrect: questSubmissionChirho.isCorrect,
			coinsAwarded: questSubmissionChirho.coinsAwarded,
			submittedAt: questSubmissionChirho.submittedAt,
			questTitle: questChirho.title
		})
		.from(questSubmissionChirho)
		.leftJoin(questChirho, eq(questSubmissionChirho.questId, questChirho.questId))
		.where(eq(questSubmissionChirho.userId, userChirhoData.userId))
		.orderBy(desc(questSubmissionChirho.submittedAt))
		.limit(5);

	// Get completed quest count
	const completedQuestsChirho = await locals.dbChirho
		.select()
		.from(questSubmissionChirho)
		.where(
			and(
				eq(questSubmissionChirho.userId, userChirhoData.userId),
				eq(questSubmissionChirho.isCorrect, true)
			)
		);

	// Get total quests count
	const totalQuestsChirho = await locals.dbChirho.select().from(questChirho);

	// Get recent payload executions
	const recentPayloadsChirho = await locals.dbChirho
		.select()
		.from(payloadExecutionChirho)
		.where(eq(payloadExecutionChirho.userId, userChirhoData.userId))
		.orderBy(desc(payloadExecutionChirho.startedAt))
		.limit(5);

	// Get announcements for user
	const announcementsChirho = await locals.dbChirho
		.select()
		.from(announcementChirho)
		.where(eq(announcementChirho.isActive, true))
		.orderBy(desc(announcementChirho.createdAt))
		.limit(3);

	// Filter announcements based on scope
	const relevantAnnouncementsChirho = announcementsChirho.filter((aChirho) => {
		if (aChirho.scope === 'global') return true;
		if (aChirho.scope === 'organization' && aChirho.organizationId === userChirhoData.organizationId)
			return true;
		if (aChirho.scope === 'cohort' && aChirho.cohortId === userChirhoData.cohortId) return true;
		return false;
	});

	// Calculate progress stats
	const uniqueCompletedQuestIdsChirho = new Set(
		completedQuestsChirho.filter((sChirho) => sChirho.isCorrect).map((sChirho) => sChirho.questId)
	);

	return {
		userChirho: {
			username: userChirhoData.username,
			displayName: userChirhoData.displayName,
			email: userChirhoData.email,
			role: userChirhoData.role,
			questCoinsBalance: userChirhoData.questCoinsBalance,
			backgroundColor: userChirhoData.backgroundColor
		},
		organizationChirho: organizationDataChirho
			? {
					name: organizationDataChirho.name,
					slug: organizationDataChirho.slug
				}
			: null,
		cohortChirho: cohortDataChirho
			? {
					name: cohortDataChirho.name,
					startDate: cohortDataChirho.startDate,
					status: cohortDataChirho.status
				}
			: null,
		terminalChirho: terminalDataChirho
			? {
					ttydUrl: terminalDataChirho.ttydUrl,
					status: terminalDataChirho.status
				}
			: null,
		statsChirho: {
			questCoins: userChirhoData.questCoinsBalance || 0,
			completedQuests: uniqueCompletedQuestIdsChirho.size,
			totalQuests: totalQuestsChirho.length,
			payloadsRun: recentPayloadsChirho.length
		},
		recentQuestSubmissionsChirho,
		announcementsChirho: relevantAnnouncementsChirho
	};
};
