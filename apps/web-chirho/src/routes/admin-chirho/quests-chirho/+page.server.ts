// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { Actions, PageServerLoad } from './$types';
import { questChirho, questTestChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals, url }) => {
	if (!locals.dbChirho) {
		return { questsChirho: [] };
	}

	const difficultyFilterChirho = url.searchParams.get('difficulty') || '';
	const typeFilterChirho = url.searchParams.get('type') || '';

	const questsChirho = await locals.dbChirho
		.select()
		.from(questChirho)
		.orderBy(questChirho.orderIndex, desc(questChirho.createdAt));

	// Filter in memory
	let filteredQuestsChirho = questsChirho;

	if (difficultyFilterChirho) {
		filteredQuestsChirho = filteredQuestsChirho.filter(
			(qChirho) => qChirho.difficultyLevel === difficultyFilterChirho
		);
	}

	if (typeFilterChirho) {
		filteredQuestsChirho = filteredQuestsChirho.filter(
			(qChirho) => qChirho.questType === typeFilterChirho
		);
	}

	return {
		questsChirho: filteredQuestsChirho,
		filtersChirho: {
			difficulty: difficultyFilterChirho,
			type: typeFilterChirho
		},
		statsChirho: {
			totalChirho: questsChirho.length,
			beginnerChirho: questsChirho.filter((qChirho) => qChirho.difficultyLevel === 'beginner').length,
			intermediateChirho: questsChirho.filter((qChirho) => qChirho.difficultyLevel === 'intermediate')
				.length,
			advancedChirho: questsChirho.filter((qChirho) => qChirho.difficultyLevel === 'advanced').length
		}
	};
};

export const actions: Actions = {
	importQuestChirho: async ({ request, locals }) => {
		if (!locals.dbChirho || !locals.userChirho) {
			return fail(401, { errorChirho: 'Unauthorized' });
		}

		const formDataChirho = await request.formData();
		const questJsonChirho = formDataChirho.get('questJsonChirho')?.toString();

		if (!questJsonChirho) {
			return fail(400, { errorChirho: 'Quest JSON is required' });
		}

		try {
			const questDataChirho = JSON.parse(questJsonChirho);

			// Validate required fields
			if (
				!questDataChirho.title ||
				!questDataChirho.description ||
				!questDataChirho.starterCode ||
				!questDataChirho.solutionCode
			) {
				return fail(400, { errorChirho: 'Missing required quest fields' });
			}

			const questIdChirho = nanoid();

			// Insert quest
			await locals.dbChirho.insert(questChirho).values({
				questId: questIdChirho,
				title: questDataChirho.title,
				description: questDataChirho.description,
				instructions: questDataChirho.instructions || questDataChirho.description,
				starterCode: questDataChirho.starterCode,
				solutionCode: questDataChirho.solutionCode,
				difficultyLevel: questDataChirho.difficulty || 'beginner',
				questType: questDataChirho.type || 'javascript',
				headerVerse: questDataChirho.headerVerse || null,
				coinReward: questDataChirho.coinReward || 10,
				bonusCoinNoSolutionView: questDataChirho.bonusCoin || 5,
				orderIndex: questDataChirho.orderIndex || 0,
				isActive: true
			});

			// Insert tests if provided
			if (questDataChirho.tests && Array.isArray(questDataChirho.tests)) {
				for (let iChirho = 0; iChirho < questDataChirho.tests.length; iChirho++) {
					const testChirho = questDataChirho.tests[iChirho];
					await locals.dbChirho.insert(questTestChirho).values({
						testId: nanoid(),
						questId: questIdChirho,
						testName: testChirho.name || `Test ${iChirho + 1}`,
						testCode: testChirho.code,
						isVisible: testChirho.visible !== false,
						testOrder: iChirho
					});
				}
			}

			return { successChirho: true, actionChirho: 'importQuestChirho', titleChirho: questDataChirho.title };
		} catch (eChirho) {
			return fail(400, { errorChirho: `Invalid JSON: ${(eChirho as Error).message}` });
		}
	},

	deleteQuestChirho: async ({ request, locals }) => {
		if (!locals.dbChirho || !locals.userChirho) {
			return fail(401, { errorChirho: 'Unauthorized' });
		}

		const formDataChirho = await request.formData();
		const questIdChirho = formDataChirho.get('questIdChirho')?.toString();

		if (!questIdChirho) {
			return fail(400, { errorChirho: 'Quest ID is required' });
		}

		// Delete tests first (cascade should handle this but being explicit)
		await locals.dbChirho.delete(questTestChirho).where(eq(questTestChirho.questId, questIdChirho));

		// Delete quest
		await locals.dbChirho.delete(questChirho).where(eq(questChirho.questId, questIdChirho));

		return { successChirho: true, actionChirho: 'deleteQuestChirho' };
	},

	toggleActiveChirho: async ({ request, locals }) => {
		if (!locals.dbChirho || !locals.userChirho) {
			return fail(401, { errorChirho: 'Unauthorized' });
		}

		const formDataChirho = await request.formData();
		const questIdChirho = formDataChirho.get('questIdChirho')?.toString();
		const isActiveChirho = formDataChirho.get('isActiveChirho') === 'true';

		if (!questIdChirho) {
			return fail(400, { errorChirho: 'Quest ID is required' });
		}

		await locals.dbChirho
			.update(questChirho)
			.set({ isActive: !isActiveChirho })
			.where(eq(questChirho.questId, questIdChirho));

		return { successChirho: true, actionChirho: 'toggleActiveChirho' };
	}
};
