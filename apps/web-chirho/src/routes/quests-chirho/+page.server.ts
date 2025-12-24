// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { asc, eq } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { questChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.dbChirho) {
		return {
			questsChirho: [],
			totalCountChirho: 0
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

	return {
		questsChirho,
		totalCountChirho: questsChirho.length
	};
};
