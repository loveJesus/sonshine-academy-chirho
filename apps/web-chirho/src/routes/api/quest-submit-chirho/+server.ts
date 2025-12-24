// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { json } from '@sveltejs/kit';
import { eq, and, sql } from 'drizzle-orm';
import type { RequestHandler } from './$types';
import {
	questChirho,
	questSubmissionChirho,
	questCoinTransactionChirho,
	userChirho,
	questSolutionViewChirho
} from '$lib/server/db/schema';
import { nanoid } from 'nanoid';

// Simple hash function for transaction chain
function createTransactionHashChirho(dataChirho: string, previousHashChirho: string): string {
	// Simple hash for demo - in production use crypto.subtle
	let hashChirho = 0;
	const combinedChirho = previousHashChirho + dataChirho + Date.now().toString();
	for (let iChirho = 0; iChirho < combinedChirho.length; iChirho++) {
		const charChirho = combinedChirho.charCodeAt(iChirho);
		hashChirho = ((hashChirho << 5) - hashChirho) + charChirho;
		hashChirho = hashChirho & hashChirho;
	}
	return Math.abs(hashChirho).toString(16).padStart(40, '0');
}

export const POST: RequestHandler = async ({ request, locals }) => {
	// Require authentication
	if (!locals.userChirho) {
		return json({ error: 'Not authenticated' }, { status: 401 });
	}

	if (!locals.dbChirho) {
		return json({ error: 'Database not available' }, { status: 500 });
	}

	try {
		const bodyChirho = await request.json();
		const { questId, submittedCode, testResults, viewedSolution } = bodyChirho;

		if (!questId || !submittedCode || !testResults) {
			return json({ error: 'Missing required fields' }, { status: 400 });
		}

		// Check if all tests passed
		const allPassedChirho = testResults.every((t: { passed: boolean }) => t.passed);
		if (!allPassedChirho) {
			return json({ error: 'Not all tests passed' }, { status: 400 });
		}

		// Get the quest details
		const questResultChirho = await locals.dbChirho
			.select()
			.from(questChirho)
			.where(eq(questChirho.questId, questId))
			.limit(1);

		if (questResultChirho.length === 0) {
			return json({ error: 'Quest not found' }, { status: 404 });
		}

		const questDataChirho = questResultChirho[0];

		// Check if user already completed this quest
		const existingSubmissionChirho = await locals.dbChirho
			.select()
			.from(questSubmissionChirho)
			.where(
				and(
					eq(questSubmissionChirho.questId, questId),
					eq(questSubmissionChirho.userId, locals.userChirho.userId),
					eq(questSubmissionChirho.isCorrect, true)
				)
			)
			.limit(1);

		if (existingSubmissionChirho.length > 0) {
			// Already completed - don't award coins again
			return json({
				success: true,
				alreadyCompleted: true,
				message: 'Quest already completed!',
				coinsAwarded: 0
			});
		}

		// Check if user viewed the solution before passing
		let viewedSolutionBeforePassChirho = viewedSolution || false;

		// Also check database for solution views
		const solutionViewChirho = await locals.dbChirho
			.select()
			.from(questSolutionViewChirho)
			.where(
				and(
					eq(questSolutionViewChirho.questId, questId),
					eq(questSolutionViewChirho.userId, locals.userChirho.userId)
				)
			)
			.limit(1);

		if (solutionViewChirho.length > 0) {
			viewedSolutionBeforePassChirho = true;
		}

		// Calculate coins to award
		const baseCoinsChirho = questDataChirho.coinReward || 10;
		const bonusCoinsChirho = viewedSolutionBeforePassChirho ? 0 : (questDataChirho.bonusCoinNoSolutionView || 5);
		const totalCoinsChirho = baseCoinsChirho + bonusCoinsChirho;

		// Create submission record
		const submissionIdChirho = `sub_${nanoid(16)}`;
		await locals.dbChirho.insert(questSubmissionChirho).values({
			submissionId: submissionIdChirho,
			questId: questId,
			userId: locals.userChirho.userId,
			submittedCode: submittedCode,
			isCorrect: true,
			testResultsJson: JSON.stringify(testResults),
			viewedSolutionBeforePass: viewedSolutionBeforePassChirho,
			coinsAwarded: totalCoinsChirho,
			submittedAt: new Date()
		});

		// Get the last transaction hash for the chain
		const lastTransactionChirho = await locals.dbChirho
			.select({ transactionHash: questCoinTransactionChirho.transactionHash })
			.from(questCoinTransactionChirho)
			.orderBy(sql`${questCoinTransactionChirho.createdAt} DESC`)
			.limit(1);

		const previousHashChirho = lastTransactionChirho.length > 0
			? lastTransactionChirho[0].transactionHash
			: 'genesis';

		// Create transaction record
		const transactionIdChirho = `tx_${nanoid(16)}`;
		const transactionDataChirho = `${locals.userChirho.username}:${questId}:${totalCoinsChirho}`;
		const transactionHashChirho = createTransactionHashChirho(transactionDataChirho, previousHashChirho);

		await locals.dbChirho.insert(questCoinTransactionChirho).values({
			transactionId: transactionIdChirho,
			fromUsername: 'SYSTEM',
			toUsername: locals.userChirho.username,
			amount: totalCoinsChirho,
			transactionHash: transactionHashChirho,
			previousHash: previousHashChirho,
			transactionType: 'quest_reward',
			referenceId: questId,
			memo: `Completed: ${questDataChirho.title}${bonusCoinsChirho > 0 ? ` (+${bonusCoinsChirho} bonus!)` : ''}`,
			createdAt: new Date()
		});

		// Update user's coin balance
		await locals.dbChirho
			.update(userChirho)
			.set({
				questCoinsBalance: sql`${userChirho.questCoinsBalance} + ${totalCoinsChirho}`,
				updatedAt: new Date()
			})
			.where(eq(userChirho.userId, locals.userChirho.userId));

		return json({
			success: true,
			alreadyCompleted: false,
			message: 'Quest completed!',
			coinsAwarded: totalCoinsChirho,
			baseCoins: baseCoinsChirho,
			bonusCoins: bonusCoinsChirho,
			viewedSolution: viewedSolutionBeforePassChirho
		});
	} catch (errorChirho) {
		console.error('Error submitting quest:', errorChirho);
		return json({ error: 'Failed to submit quest' }, { status: 500 });
	}
};

// Endpoint to record solution view
export const PUT: RequestHandler = async ({ request, locals }) => {
	if (!locals.userChirho) {
		return json({ error: 'Not authenticated' }, { status: 401 });
	}

	if (!locals.dbChirho) {
		return json({ error: 'Database not available' }, { status: 500 });
	}

	try {
		const bodyChirho = await request.json();
		const { questId } = bodyChirho;

		if (!questId) {
			return json({ error: 'Quest ID required' }, { status: 400 });
		}

		// Check if already recorded
		const existingViewChirho = await locals.dbChirho
			.select()
			.from(questSolutionViewChirho)
			.where(
				and(
					eq(questSolutionViewChirho.questId, questId),
					eq(questSolutionViewChirho.userId, locals.userChirho.userId)
				)
			)
			.limit(1);

		if (existingViewChirho.length === 0) {
			// Check if user has already passed this quest
			const existingPassChirho = await locals.dbChirho
				.select()
				.from(questSubmissionChirho)
				.where(
					and(
						eq(questSubmissionChirho.questId, questId),
						eq(questSubmissionChirho.userId, locals.userChirho.userId),
						eq(questSubmissionChirho.isCorrect, true)
					)
				)
				.limit(1);

			const viewedBeforePassChirho = existingPassChirho.length === 0;

			// Record the solution view
			await locals.dbChirho.insert(questSolutionViewChirho).values({
				solutionViewId: `sv_${nanoid(16)}`,
				questId: questId,
				userId: locals.userChirho.userId,
				viewedAt: new Date(),
				viewedBeforePass: viewedBeforePassChirho
			});
		}

		return json({ success: true });
	} catch (errorChirho) {
		console.error('Error recording solution view:', errorChirho);
		return json({ error: 'Failed to record solution view' }, { status: 500 });
	}
};
