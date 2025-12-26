// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { asc, eq, and } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { questChirho, questSubmissionChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.dbChirho) {
		return {
			questsChirho: [],
			totalCountChirho: 0,
			completedQuestIdsChirho: []
		};
	}

	// Load all active quests
	const questsChirho = await locals.dbChirho
		.select({
			questId: questChirho.questId,
			title: questChirho.title,
			description: questChirho.description,
			difficultyLevel: questChirho.difficultyLevel,
			questType: questChirho.questType,
			headerVerse: questChirho.headerVerse,
			coinReward: questChirho.coinReward,
			orderIndex: questChirho.orderIndex
		})
		.from(questChirho)
		.where(eq(questChirho.isActive, true))
		.orderBy(asc(questChirho.orderIndex));

	// If user is logged in, fetch their completed quests
	let completedQuestIdsChirho: string[] = [];
	if (locals.userChirho) {
		const completionsChirho = await locals.dbChirho
			.select({ questId: questSubmissionChirho.questId })
			.from(questSubmissionChirho)
			.where(
				and(
					eq(questSubmissionChirho.userId, locals.userChirho.userId),
					eq(questSubmissionChirho.isCorrect, true)
				)
			);
		completedQuestIdsChirho = completionsChirho.map((c) => c.questId);
	}

	return {
		questsChirho,
		totalCountChirho: questsChirho.length,
		completedQuestIdsChirho
	};
};
