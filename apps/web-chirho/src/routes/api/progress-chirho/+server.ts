// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { json } from '@sveltejs/kit';
import type { RequestHandler } from './$types';
import { eq, and, sql, count } from 'drizzle-orm';
import {
	studentProgressChirho,
	lessonChirho,
	courseSessionChirho,
	courseModuleChirho,
	courseChirho,
	questSubmissionChirho,
	questChirho
} from '$lib/server/db/schema';

// GET - Fetch user's progress summary
export const GET: RequestHandler = async ({ locals, url }) => {
	const dbChirho = locals.dbChirho;
	const userChirho = locals.userChirho;

	if (!userChirho) {
		return json({ error: 'Unauthorized' }, { status: 401 });
	}

	const courseSlugChirho = url.searchParams.get('course');

	try {
		// Get overall progress stats
		const progressStatsChirho = await dbChirho
			.select({
				totalLessons: count(studentProgressChirho.lessonId),
				completedLessons: sql<number>`SUM(CASE WHEN ${studentProgressChirho.status} = 'completed' THEN 1 ELSE 0 END)`,
				inProgressLessons: sql<number>`SUM(CASE WHEN ${studentProgressChirho.status} = 'in_progress' THEN 1 ELSE 0 END)`
			})
			.from(studentProgressChirho)
			.where(eq(studentProgressChirho.userId, userChirho.userId));

		// Get quest completion stats
		const questStatsChirho = await dbChirho
			.select({
				totalCompleted: count(questSubmissionChirho.submissionId),
				coinsEarned: sql<number>`SUM(${questSubmissionChirho.coinsAwarded})`
			})
			.from(questSubmissionChirho)
			.where(
				and(eq(questSubmissionChirho.userId, userChirho.userId), eq(questSubmissionChirho.isCorrect, true))
			);

		// Get total quests available
		const totalQuestsChirho = await dbChirho
			.select({ count: count(questChirho.questId) })
			.from(questChirho)
			.where(eq(questChirho.isActive, true));

		// Get recent activity (last 5 lessons accessed)
		const recentActivityChirho = await dbChirho
			.select({
				lessonId: studentProgressChirho.lessonId,
				status: studentProgressChirho.status,
				completionPercentage: studentProgressChirho.completionPercentage,
				lastAccessedAt: studentProgressChirho.lastAccessedAt,
				lessonTitle: lessonChirho.title,
				lessonType: lessonChirho.lessonType
			})
			.from(studentProgressChirho)
			.leftJoin(lessonChirho, eq(studentProgressChirho.lessonId, lessonChirho.lessonId))
			.where(eq(studentProgressChirho.userId, userChirho.userId))
			.orderBy(sql`${studentProgressChirho.lastAccessedAt} DESC`)
			.limit(5);

		// If course specified, get course-specific progress
		let courseProgressChirho = null;
		if (courseSlugChirho) {
			const courseDataChirho = await dbChirho
				.select()
				.from(courseChirho)
				.where(eq(courseChirho.slug, courseSlugChirho))
				.limit(1);

			if (courseDataChirho.length > 0) {
				const courseIdChirho = courseDataChirho[0].courseId;

				// Get all lessons in this course
				const courseLessonsChirho = await dbChirho
					.select({
						lessonId: lessonChirho.lessonId
					})
					.from(lessonChirho)
					.innerJoin(courseSessionChirho, eq(lessonChirho.sessionId, courseSessionChirho.sessionId))
					.innerJoin(courseModuleChirho, eq(courseSessionChirho.moduleId, courseModuleChirho.moduleId))
					.where(eq(courseModuleChirho.courseId, courseIdChirho));

				const lessonIdsChirho = courseLessonsChirho.map((l) => l.lessonId);

				if (lessonIdsChirho.length > 0) {
					// Get user's progress for these lessons
					const userProgressChirho = await dbChirho
						.select({
							completedCount: sql<number>`SUM(CASE WHEN ${studentProgressChirho.status} = 'completed' THEN 1 ELSE 0 END)`
						})
						.from(studentProgressChirho)
						.where(
							and(
								eq(studentProgressChirho.userId, userChirho.userId),
								sql`${studentProgressChirho.lessonId} IN (${sql.join(
									lessonIdsChirho.map((id) => sql`${id}`),
									sql`, `
								)})`
							)
						);

					courseProgressChirho = {
						courseId: courseIdChirho,
						courseTitle: courseDataChirho[0].title,
						totalLessons: lessonIdsChirho.length,
						completedLessons: userProgressChirho[0]?.completedCount || 0,
						percentComplete: lessonIdsChirho.length > 0
							? Math.round(((userProgressChirho[0]?.completedCount || 0) / lessonIdsChirho.length) * 100)
							: 0
					};
				}
			}
		}

		return json({
			success: true,
			progressChirho: {
				overall: {
					lessonsStarted: progressStatsChirho[0]?.totalLessons || 0,
					lessonsCompleted: progressStatsChirho[0]?.completedLessons || 0,
					lessonsInProgress: progressStatsChirho[0]?.inProgressLessons || 0
				},
				quests: {
					completed: questStatsChirho[0]?.totalCompleted || 0,
					total: totalQuestsChirho[0]?.count || 0,
					coinsEarned: questStatsChirho[0]?.coinsEarned || 0
				},
				recentActivity: recentActivityChirho,
				courseProgress: courseProgressChirho
			}
		});
	} catch (errorChirho) {
		console.error('Progress fetch error:', errorChirho);
		return json({ error: 'Failed to fetch progress' }, { status: 500 });
	}
};

// POST - Update lesson progress
export const POST: RequestHandler = async ({ request, locals }) => {
	const dbChirho = locals.dbChirho;
	const userChirho = locals.userChirho;

	if (!userChirho) {
		return json({ error: 'Unauthorized' }, { status: 401 });
	}

	try {
		const bodyChirho = (await request.json()) as {
			lessonId?: string;
			status?: string;
			completionPercentage?: number;
			videoWatchedSeconds?: number;
			videoCompleted?: boolean;
		};
		const { lessonId, status, completionPercentage, videoWatchedSeconds, videoCompleted } = bodyChirho;

		if (!lessonId) {
			return json({ error: 'lessonId is required' }, { status: 400 });
		}

		// Check if progress record exists
		const existingChirho = await dbChirho
			.select()
			.from(studentProgressChirho)
			.where(
				and(eq(studentProgressChirho.userId, userChirho.userId), eq(studentProgressChirho.lessonId, lessonId))
			)
			.limit(1);

		const nowChirho = new Date();

		if (existingChirho.length > 0) {
			// Update existing record
			const updateDataChirho: Record<string, unknown> = {
				lastAccessedAt: nowChirho
			};

			if (status) updateDataChirho.status = status;
			if (completionPercentage !== undefined) updateDataChirho.completionPercentage = completionPercentage;
			if (videoWatchedSeconds !== undefined) updateDataChirho.videoWatchedSeconds = videoWatchedSeconds;
			if (videoCompleted !== undefined) updateDataChirho.videoCompleted = videoCompleted;

			// Set startedAt if transitioning to in_progress
			if (status === 'in_progress' && !existingChirho[0].startedAt) {
				updateDataChirho.startedAt = nowChirho;
			}

			// Set completedAt if transitioning to completed
			if (status === 'completed' && !existingChirho[0].completedAt) {
				updateDataChirho.completedAt = nowChirho;
			}

			await dbChirho
				.update(studentProgressChirho)
				.set(updateDataChirho)
				.where(eq(studentProgressChirho.progressId, existingChirho[0].progressId));

			return json({
				success: true,
				message: 'Progress updated',
				progressChirho: { ...existingChirho[0], ...updateDataChirho }
			});
		} else {
			// Create new record
			const progressIdChirho = crypto.randomUUID();
			const newProgressChirho = {
				progressId: progressIdChirho,
				userId: userChirho.userId,
				lessonId,
				status: status || 'in_progress',
				completionPercentage: completionPercentage || 0,
				videoWatchedSeconds: videoWatchedSeconds || 0,
				videoCompleted: videoCompleted || false,
				startedAt: nowChirho,
				lastAccessedAt: nowChirho,
				completedAt: status === 'completed' ? nowChirho : null
			};

			await dbChirho.insert(studentProgressChirho).values(newProgressChirho);

			return json({
				success: true,
				message: 'Progress created',
				progressChirho: newProgressChirho
			});
		}
	} catch (errorChirho) {
		console.error('Progress update error:', errorChirho);
		return json({ error: 'Failed to update progress' }, { status: 500 });
	}
};
