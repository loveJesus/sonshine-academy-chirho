// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { desc, sql } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { userChirho, questSubmissionChirho } from '$lib/server/db/schema';

// Sample leaderboard data for demonstration
const SAMPLE_LEADERBOARD_CHIRHO = [
	{
		rank: 1,
		username: 'faithCoder2025',
		displayName: 'Faith Coder',
		questCoinsBalance: 2450,
		questsCompleted: 45,
		backgroundColor: '#F59E0B'
	},
	{
		rank: 2,
		username: 'bibleBytes',
		displayName: 'Bible Bytes',
		questCoinsBalance: 2180,
		questsCompleted: 42,
		backgroundColor: '#3B82F6'
	},
	{
		rank: 3,
		username: 'graceScript',
		displayName: 'Grace Script',
		questCoinsBalance: 1950,
		questsCompleted: 38,
		backgroundColor: '#10B981'
	},
	{
		rank: 4,
		username: 'holyHacker',
		displayName: 'Holy Hacker',
		questCoinsBalance: 1820,
		questsCompleted: 35,
		backgroundColor: '#8B5CF6'
	},
	{
		rank: 5,
		username: 'prayerProgrammer',
		displayName: 'Prayer Programmer',
		questCoinsBalance: 1650,
		questsCompleted: 32,
		backgroundColor: '#EF4444'
	},
	{
		rank: 6,
		username: 'gospelGuru',
		displayName: 'Gospel Guru',
		questCoinsBalance: 1480,
		questsCompleted: 28,
		backgroundColor: '#EC4899'
	},
	{
		rank: 7,
		username: 'christCode',
		displayName: 'Christ Code',
		questCoinsBalance: 1320,
		questsCompleted: 25,
		backgroundColor: '#14B8A6'
	},
	{
		rank: 8,
		username: 'divineDebugger',
		displayName: 'Divine Debugger',
		questCoinsBalance: 1150,
		questsCompleted: 22,
		backgroundColor: '#F97316'
	},
	{
		rank: 9,
		username: 'scriptureScripter',
		displayName: 'Scripture Scripter',
		questCoinsBalance: 980,
		questsCompleted: 19,
		backgroundColor: '#6366F1'
	},
	{
		rank: 10,
		username: 'worshipWeb',
		displayName: 'Worship Web',
		questCoinsBalance: 850,
		questsCompleted: 16,
		backgroundColor: '#84CC16'
	}
];

export const load: PageServerLoad = async ({ locals }) => {
	// Try to load from database
	if (locals.dbChirho) {
		try {
			// Get top users by quest coins balance
			const topUsersChirho = await locals.dbChirho
				.select({
					userId: userChirho.userId,
					username: userChirho.username,
					displayName: userChirho.displayName,
					questCoinsBalance: userChirho.questCoinsBalance,
					backgroundColor: userChirho.backgroundColor
				})
				.from(userChirho)
				.orderBy(desc(userChirho.questCoinsBalance))
				.limit(50);

			// Get quest completion counts for each user
			const leaderboardChirho = await Promise.all(
				topUsersChirho.map(async (userDataChirho, indexChirho) => {
					const questCountChirho = await locals.dbChirho!
						.select({ count: sql<number>`count(*)` })
						.from(questSubmissionChirho)
						.where(
							sql`${questSubmissionChirho.userId} = ${userDataChirho.userId} AND ${questSubmissionChirho.isCorrect} = 1`
						);

					return {
						rank: indexChirho + 1,
						username: userDataChirho.username,
						displayName: userDataChirho.displayName || userDataChirho.username,
						questCoinsBalance: userDataChirho.questCoinsBalance || 0,
						questsCompleted: questCountChirho[0]?.count || 0,
						backgroundColor: userDataChirho.backgroundColor || '#3B82F6'
					};
				})
			);

			// Only return database data if we have users with coins
			if (leaderboardChirho.length > 0 && leaderboardChirho.some((u) => u.questCoinsBalance > 0)) {
				return {
					leaderboardChirho,
					isFromDatabaseChirho: true,
					userChirho: locals.userChirho || null,
					userRankChirho: locals.userChirho
						? leaderboardChirho.findIndex((u) => u.username === locals.userChirho?.username) + 1
						: null
				};
			}
		} catch (errorChirho) {
			console.error('Error loading leaderboard from database:', errorChirho);
		}
	}

	// Fall back to sample data
	return {
		leaderboardChirho: SAMPLE_LEADERBOARD_CHIRHO,
		isFromDatabaseChirho: false,
		userChirho: locals.userChirho || null,
		userRankChirho: null
	};
};
