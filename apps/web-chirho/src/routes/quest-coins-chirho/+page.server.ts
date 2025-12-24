// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect } from '@sveltejs/kit';
import { desc, eq, or } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { questCoinTransactionChirho, userChirho } from '$lib/server/db/schema';

// Sample transaction data for demonstration
const SAMPLE_TRANSACTIONS_CHIRHO = [
	{
		transactionId: 'tx-001',
		fromUsername: 'SYSTEM',
		toUsername: 'faithCoder2025',
		amount: 15,
		transactionHash: 'a1b2c3d4e5f6789012345678901234567890abcd',
		previousHash: 'genesis',
		transactionType: 'quest_reward',
		referenceId: 'quest-functions-101',
		memo: 'Completed: Functions 101',
		createdAt: new Date(Date.now() - 1000 * 60 * 30) // 30 min ago
	},
	{
		transactionId: 'tx-002',
		fromUsername: 'SYSTEM',
		toUsername: 'bibleBytes',
		amount: 20,
		transactionHash: 'b2c3d4e5f6789012345678901234567890abcde',
		previousHash: 'a1b2c3d4e5f6789012345678901234567890abcd',
		transactionType: 'quest_reward',
		referenceId: 'quest-arrays-intro',
		memo: 'Completed: Arrays Introduction (+5 bonus)',
		createdAt: new Date(Date.now() - 1000 * 60 * 60 * 2) // 2 hours ago
	},
	{
		transactionId: 'tx-003',
		fromUsername: 'faithCoder2025',
		toUsername: 'graceScript',
		amount: 5,
		transactionHash: 'c3d4e5f6789012345678901234567890abcdef',
		previousHash: 'b2c3d4e5f6789012345678901234567890abcde',
		transactionType: 'transfer',
		referenceId: null,
		memo: 'Thanks for the help!',
		createdAt: new Date(Date.now() - 1000 * 60 * 60 * 5) // 5 hours ago
	},
	{
		transactionId: 'tx-004',
		fromUsername: 'SYSTEM',
		toUsername: 'holyHacker',
		amount: 50,
		transactionHash: 'd4e5f6789012345678901234567890abcdefgh',
		previousHash: 'c3d4e5f6789012345678901234567890abcdef',
		transactionType: 'system_grant',
		referenceId: 'mentorship-bonus',
		memo: 'Mentorship bonus - helped 5 students',
		createdAt: new Date(Date.now() - 1000 * 60 * 60 * 24) // 1 day ago
	},
	{
		transactionId: 'tx-005',
		fromUsername: 'SYSTEM',
		toUsername: 'prayerProgrammer',
		amount: 10,
		transactionHash: 'e5f6789012345678901234567890abcdefghi',
		previousHash: 'd4e5f6789012345678901234567890abcdefgh',
		transactionType: 'quest_reward',
		referenceId: 'quest-hello-world',
		memo: 'Completed: Hello World',
		createdAt: new Date(Date.now() - 1000 * 60 * 60 * 48) // 2 days ago
	},
	{
		transactionId: 'tx-006',
		fromUsername: 'SYSTEM',
		toUsername: 'gospelGuru',
		amount: 15,
		transactionHash: 'f6789012345678901234567890abcdefghij',
		previousHash: 'e5f6789012345678901234567890abcdefghi',
		transactionType: 'quest_reward',
		referenceId: 'quest-variables-basics',
		memo: 'Completed: Variables Basics',
		createdAt: new Date(Date.now() - 1000 * 60 * 60 * 72) // 3 days ago
	}
];

export const load: PageServerLoad = async ({ locals, url }) => {
	// Get filter params
	const filterTypeChirho = url.searchParams.get('type') || 'all';
	const filterUserChirho = url.searchParams.get('user') || '';

	// Try to load from database
	if (locals.dbChirho) {
		try {
			let transactionsQueryChirho = locals.dbChirho
				.select()
				.from(questCoinTransactionChirho)
				.orderBy(desc(questCoinTransactionChirho.createdAt))
				.limit(100);

			const transactionsChirho = await transactionsQueryChirho;

			// Filter if needed
			let filteredTransactionsChirho = transactionsChirho;

			if (filterTypeChirho !== 'all') {
				filteredTransactionsChirho = filteredTransactionsChirho.filter(
					(t) => t.transactionType === filterTypeChirho
				);
			}

			if (filterUserChirho) {
				filteredTransactionsChirho = filteredTransactionsChirho.filter(
					(t) => t.fromUsername === filterUserChirho || t.toUsername === filterUserChirho
				);
			}

			// Get user's transactions if logged in
			let userTransactionsChirho: typeof transactionsChirho = [];
			if (locals.userChirho) {
				userTransactionsChirho = transactionsChirho.filter(
					(t) =>
						t.fromUsername === locals.userChirho?.username ||
						t.toUsername === locals.userChirho?.username
				);
			}

			// Calculate stats
			const totalTransactionsChirho = transactionsChirho.length;
			const totalCoinsTransferredChirho = transactionsChirho.reduce((sumChirho, t) => sumChirho + t.amount, 0);

			if (transactionsChirho.length > 0) {
				return {
					transactionsChirho: filteredTransactionsChirho,
					userTransactionsChirho,
					totalTransactionsChirho,
					totalCoinsTransferredChirho,
					filterTypeChirho,
					filterUserChirho,
					isFromDatabaseChirho: true,
					userChirho: locals.userChirho || null
				};
			}
		} catch (errorChirho) {
			console.error('Error loading transactions from database:', errorChirho);
		}
	}

	// Fall back to sample data
	let filteredSampleChirho = [...SAMPLE_TRANSACTIONS_CHIRHO];

	if (filterTypeChirho !== 'all') {
		filteredSampleChirho = filteredSampleChirho.filter((t) => t.transactionType === filterTypeChirho);
	}

	if (filterUserChirho) {
		filteredSampleChirho = filteredSampleChirho.filter(
			(t) => t.fromUsername === filterUserChirho || t.toUsername === filterUserChirho
		);
	}

	return {
		transactionsChirho: filteredSampleChirho,
		userTransactionsChirho: [],
		totalTransactionsChirho: SAMPLE_TRANSACTIONS_CHIRHO.length,
		totalCoinsTransferredChirho: SAMPLE_TRANSACTIONS_CHIRHO.reduce((s, t) => s + t.amount, 0),
		filterTypeChirho,
		filterUserChirho,
		isFromDatabaseChirho: false,
		userChirho: locals.userChirho || null
	};
};
