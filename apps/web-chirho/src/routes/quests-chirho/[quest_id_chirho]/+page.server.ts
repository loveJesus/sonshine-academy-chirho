// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error } from '@sveltejs/kit';
import { eq, asc } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { questChirho, questTestChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ params, locals }) => {
	const questIdChirho = params.quest_id_chirho;

	if (!locals.dbChirho) {
		error(500, 'Database not available');
	}

	// Load the quest
	const questsChirho = await locals.dbChirho
		.select()
		.from(questChirho)
		.where(eq(questChirho.questId, questIdChirho))
		.limit(1);

	if (questsChirho.length === 0) {
		error(404, 'Quest not found');
	}

	const questDataChirho = questsChirho[0];

	// Load visible tests for this quest
	const testsChirho = await locals.dbChirho
		.select({
			testId: questTestChirho.testId,
			testName: questTestChirho.testName,
			testCode: questTestChirho.testCode,
			isVisible: questTestChirho.isVisible,
			testOrder: questTestChirho.testOrder
		})
		.from(questTestChirho)
		.where(eq(questTestChirho.questId, questIdChirho))
		.orderBy(asc(questTestChirho.testOrder));

	// Separate visible and hidden tests
	const visibleTestsChirho = testsChirho.filter((t) => t.isVisible);
	const hiddenTestCountChirho = testsChirho.filter((t) => !t.isVisible).length;

	// Get adjacent quests for navigation
	const prevQuestChirho = await locals.dbChirho
		.select({ questId: questChirho.questId, title: questChirho.title })
		.from(questChirho)
		.where(eq(questChirho.isActive, true))
		.orderBy(asc(questChirho.orderIndex))
		.limit(1)
		.offset(Math.max(0, questDataChirho.orderIndex - 1));

	const nextQuestChirho = await locals.dbChirho
		.select({ questId: questChirho.questId, title: questChirho.title })
		.from(questChirho)
		.where(eq(questChirho.isActive, true))
		.orderBy(asc(questChirho.orderIndex))
		.limit(1)
		.offset(questDataChirho.orderIndex + 1);

	return {
		questChirho: questDataChirho,
		testsChirho: testsChirho, // All tests for running
		visibleTestsChirho,
		hiddenTestCountChirho,
		prevQuestChirho: prevQuestChirho[0] || null,
		nextQuestChirho: nextQuestChirho[0] || null,
		userChirho: locals.userChirho || null
	};
};
