// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { PageServerLoad, Actions } from './$types';
import { fail, redirect } from '@sveltejs/kit';

export const load: PageServerLoad = async ({ locals, platform }) => {
	const userChirho = locals.userChirho;

	if (!userChirho) {
		return {
			userChirho: null,
			statsChirho: null
		};
	}

	const dbChirho = platform?.env?.DB_CHIRHO;
	if (!dbChirho) {
		return {
			userChirho,
			statsChirho: null
		};
	}

	// Get user stats
	try {
		const statsChirho = await dbChirho.prepare(`
			SELECT
				(SELECT COUNT(*) FROM course_enrollments_chirho WHERE user_id_chirho = ?) as coursesEnrolled,
				(SELECT COUNT(*) FROM user_quest_progress_chirho WHERE user_id_chirho = ? AND completed_at_chirho IS NOT NULL) as questsCompleted,
				(SELECT COUNT(*) FROM lesson_progress_chirho WHERE user_id_chirho = ? AND status_chirho = 'completed') as lessonsCompleted
		`).bind(userChirho.userId, userChirho.userId, userChirho.userId).first();

		return {
			userChirho,
			statsChirho
		};
	} catch (errorChirho) {
		console.error('Failed to load user stats:', errorChirho);
		return {
			userChirho,
			statsChirho: null
		};
	}
};

export const actions: Actions = {
	exportData: async ({ locals, platform }) => {
		const userChirho = locals.userChirho;

		if (!userChirho) {
			return fail(401, { exportErrorChirho: 'Please log in to export your data.' });
		}

		const dbChirho = platform?.env?.DB_CHIRHO;
		if (!dbChirho) {
			return fail(500, { exportErrorChirho: 'Service temporarily unavailable.' });
		}

		try {
			// Gather all user data
			const userDataChirho = {
				exportDate: new Date().toISOString(),
				account: {
					userId: userChirho.userId,
					username: userChirho.username,
					email: userChirho.email,
					displayName: userChirho.displayName,
					createdAt: userChirho.createdAt,
					questCoinsBalance: userChirho.questCoinsBalance
				},
				courseEnrollments: [],
				questProgress: [],
				lessonProgress: [],
				feedback: [],
				coinTransactions: []
			};

			// Course enrollments
			const enrollmentsChirho = await dbChirho.prepare(`
				SELECT ce.*, c.title_chirho as courseTitle
				FROM course_enrollments_chirho ce
				LEFT JOIN courses_chirho c ON ce.course_id_chirho = c.course_id_chirho
				WHERE ce.user_id_chirho = ?
			`).bind(userChirho.userId).all();
			userDataChirho.courseEnrollments = enrollmentsChirho.results || [];

			// Quest progress
			const questProgressChirho = await dbChirho.prepare(`
				SELECT uqp.*, q.title_chirho as questTitle
				FROM user_quest_progress_chirho uqp
				LEFT JOIN quests_chirho q ON uqp.quest_id_chirho = q.quest_id_chirho
				WHERE uqp.user_id_chirho = ?
			`).bind(userChirho.userId).all();
			userDataChirho.questProgress = questProgressChirho.results || [];

			// Lesson progress
			const lessonProgressChirho = await dbChirho.prepare(`
				SELECT lp.*, l.title_chirho as lessonTitle
				FROM lesson_progress_chirho lp
				LEFT JOIN lessons_chirho l ON lp.lesson_id_chirho = l.lesson_id_chirho
				WHERE lp.user_id_chirho = ?
			`).bind(userChirho.userId).all();
			userDataChirho.lessonProgress = lessonProgressChirho.results || [];

			// Feedback submissions
			const feedbackChirho = await dbChirho.prepare(`
				SELECT * FROM feedback_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).all();
			userDataChirho.feedback = feedbackChirho.results || [];

			// Coin transactions
			const transactionsChirho = await dbChirho.prepare(`
				SELECT * FROM quest_coin_transactions_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).all();
			userDataChirho.coinTransactions = transactionsChirho.results || [];

			// Return as downloadable JSON
			const jsonDataChirho = JSON.stringify(userDataChirho, null, 2);

			return new Response(jsonDataChirho, {
				headers: {
					'Content-Type': 'application/json',
					'Content-Disposition': `attachment; filename="sonshine-data-export-${userChirho.username}-${new Date().toISOString().split('T')[0]}.json"`
				}
			});
		} catch (errorChirho) {
			console.error('Failed to export user data:', errorChirho);
			return fail(500, { exportErrorChirho: 'Failed to export data. Please try again.' });
		}
	},

	deleteAccount: async ({ request, locals, platform, cookies }) => {
		const userChirho = locals.userChirho;

		if (!userChirho) {
			return fail(401, { deleteErrorChirho: 'Please log in to delete your account.' });
		}

		const formDataChirho = await request.formData();
		const confirmTextChirho = formDataChirho.get('confirmText')?.toString();

		if (confirmTextChirho !== 'DELETE') {
			return fail(400, { deleteErrorChirho: 'Please type DELETE to confirm account deletion.' });
		}

		const dbChirho = platform?.env?.DB_CHIRHO;
		if (!dbChirho) {
			return fail(500, { deleteErrorChirho: 'Service temporarily unavailable.' });
		}

		try {
			// Delete all user data in order (respecting foreign keys)
			// Note: In production, you might want to soft-delete first

			// Delete coin transactions
			await dbChirho.prepare(`
				DELETE FROM quest_coin_transactions_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Delete lesson progress
			await dbChirho.prepare(`
				DELETE FROM lesson_progress_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Delete quest progress
			await dbChirho.prepare(`
				DELETE FROM user_quest_progress_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Delete course enrollments
			await dbChirho.prepare(`
				DELETE FROM course_enrollments_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Delete feedback
			await dbChirho.prepare(`
				DELETE FROM feedback_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Delete OAuth accounts
			await dbChirho.prepare(`
				DELETE FROM oauth_accounts_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Delete sessions
			await dbChirho.prepare(`
				DELETE FROM sessions_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Finally, delete the user
			await dbChirho.prepare(`
				DELETE FROM users_chirho WHERE user_id_chirho = ?
			`).bind(userChirho.userId).run();

			// Clear the session cookie
			cookies.delete('session_chirho', { path: '/' });

			// Redirect to homepage with a goodbye message
			redirect(303, '/?accountDeleted=true');
		} catch (errorChirho) {
			console.error('Failed to delete account:', errorChirho);
			return fail(500, { deleteErrorChirho: 'Failed to delete account. Please contact support.' });
		}
	}
};
