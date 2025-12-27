// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { PageServerLoad, Actions } from './$types';
import { fail, redirect } from '@sveltejs/kit';

function generateVerificationCodeChirho(): string {
	const charsChirho = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
	let codeChirho = '';
	for (let iChirho = 0; iChirho < 12; iChirho++) {
		if (iChirho > 0 && iChirho % 4 === 0) {
			codeChirho += '-';
		}
		codeChirho += charsChirho.charAt(Math.floor(Math.random() * charsChirho.length));
	}
	return codeChirho;
}

export const load: PageServerLoad = async ({ url, locals, platform }) => {
	const userChirho = locals.userChirho;

	if (!userChirho) {
		redirect(303, '/auth-chirho/login?redirect=/certificates-chirho');
	}

	const courseIdChirho = url.searchParams.get('course');
	if (!courseIdChirho) {
		redirect(303, '/certificates-chirho');
	}

	const dbChirho = platform?.env?.DB_CHIRHO;
	if (!dbChirho) {
		return {
			userChirho,
			courseChirho: null,
			enrollmentChirho: null,
			errorChirho: 'Service unavailable'
		};
	}

	try {
		// Check if user has completed this course
		const enrollmentChirho = await dbChirho
			.prepare(
				`
			SELECT
				ce.*,
				c.title_chirho,
				c.icon_chirho,
				c.level_chirho
			FROM course_enrollments_chirho ce
			JOIN courses_chirho c ON ce.course_id_chirho = c.course_id_chirho
			WHERE ce.user_id_chirho = ?
				AND ce.course_id_chirho = ?
				AND ce.status_chirho = 'completed'
		`
			)
			.bind(userChirho.userId, courseIdChirho)
			.first();

		if (!enrollmentChirho) {
			return {
				userChirho,
				courseChirho: null,
				enrollmentChirho: null,
				errorChirho: 'Course not completed or not found'
			};
		}

		// Check if certificate already exists
		const existingCertChirho = await dbChirho
			.prepare(
				`SELECT certificate_id_chirho FROM certificates_chirho
			 WHERE user_id_chirho = ? AND course_id_chirho = ?`
			)
			.bind(userChirho.userId, courseIdChirho)
			.first();

		if (existingCertChirho) {
			redirect(303, `/certificates-chirho/${existingCertChirho.certificate_id_chirho}`);
		}

		// Get quest stats for this course
		const questStatsChirho = await dbChirho
			.prepare(
				`
			SELECT
				COUNT(*) as totalQuests,
				COALESCE(SUM(CASE WHEN uqp.status_chirho = 'completed' THEN 1 ELSE 0 END), 0) as completedQuests,
				COALESCE(SUM(uqp.coins_earned_chirho), 0) as totalCoins
			FROM quests_chirho q
			LEFT JOIN user_quest_progress_chirho uqp ON q.quest_id_chirho = uqp.quest_id_chirho
				AND uqp.user_id_chirho = ?
			WHERE q.course_id_chirho = ?
		`
			)
			.bind(userChirho.userId, courseIdChirho)
			.first();

		return {
			userChirho,
			enrollmentChirho,
			questStatsChirho: questStatsChirho || { totalQuests: 0, completedQuests: 0, totalCoins: 0 },
			errorChirho: null
		};
	} catch (err) {
		console.error('Error loading certificate data:', err);
		return {
			userChirho,
			courseChirho: null,
			enrollmentChirho: null,
			errorChirho: 'Failed to load data'
		};
	}
};

export const actions: Actions = {
	default: async ({ request, locals, platform }) => {
		const userChirho = locals.userChirho;

		if (!userChirho) {
			return fail(401, { errorChirho: 'Not authenticated' });
		}

		const formDataChirho = await request.formData();
		const courseIdChirho = formDataChirho.get('courseId')?.toString();
		const recipientNameChirho = formDataChirho.get('recipientName')?.toString()?.trim();

		if (!courseIdChirho || !recipientNameChirho) {
			return fail(400, { errorChirho: 'Missing required fields' });
		}

		if (recipientNameChirho.length < 2 || recipientNameChirho.length > 100) {
			return fail(400, { errorChirho: 'Name must be between 2 and 100 characters' });
		}

		const dbChirho = platform?.env?.DB_CHIRHO;
		if (!dbChirho) {
			return fail(500, { errorChirho: 'Service unavailable' });
		}

		try {
			// Verify enrollment is completed
			const enrollmentChirho = await dbChirho
				.prepare(
					`
				SELECT ce.*, c.title_chirho
				FROM course_enrollments_chirho ce
				JOIN courses_chirho c ON ce.course_id_chirho = c.course_id_chirho
				WHERE ce.user_id_chirho = ?
					AND ce.course_id_chirho = ?
					AND ce.status_chirho = 'completed'
			`
				)
				.bind(userChirho.userId, courseIdChirho)
				.first();

			if (!enrollmentChirho) {
				return fail(400, { errorChirho: 'Course not completed' });
			}

			// Check if certificate already exists
			const existingChirho = await dbChirho
				.prepare(
					`SELECT certificate_id_chirho FROM certificates_chirho
				 WHERE user_id_chirho = ? AND course_id_chirho = ?`
				)
				.bind(userChirho.userId, courseIdChirho)
				.first();

			if (existingChirho) {
				redirect(303, `/certificates-chirho/${existingChirho.certificate_id_chirho}`);
			}

			// Get quest stats
			const questStatsChirho = await dbChirho
				.prepare(
					`
				SELECT
					COUNT(*) as totalQuests,
					COALESCE(SUM(CASE WHEN uqp.status_chirho = 'completed' THEN 1 ELSE 0 END), 0) as completedQuests,
					COALESCE(SUM(uqp.coins_earned_chirho), 0) as totalCoins
				FROM quests_chirho q
				LEFT JOIN user_quest_progress_chirho uqp ON q.quest_id_chirho = uqp.quest_id_chirho
					AND uqp.user_id_chirho = ?
				WHERE q.course_id_chirho = ?
			`
				)
				.bind(userChirho.userId, courseIdChirho)
				.first();

			// Generate certificate
			const certificateIdChirho = crypto.randomUUID();
			const verificationCodeChirho = generateVerificationCodeChirho();

			await dbChirho
				.prepare(
					`
				INSERT INTO certificates_chirho (
					certificate_id_chirho,
					user_id_chirho,
					course_id_chirho,
					recipient_name_chirho,
					course_title_chirho,
					verification_code_chirho,
					quests_completed_chirho,
					total_quests_chirho,
					coins_earned_chirho
				) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
			`
				)
				.bind(
					certificateIdChirho,
					userChirho.userId,
					courseIdChirho,
					recipientNameChirho,
					enrollmentChirho.title_chirho,
					verificationCodeChirho,
					questStatsChirho?.completedQuests || 0,
					questStatsChirho?.totalQuests || 0,
					questStatsChirho?.totalCoins || 0
				)
				.run();

			redirect(303, `/certificates-chirho/${certificateIdChirho}`);
		} catch (err) {
			console.error('Error generating certificate:', err);
			return fail(500, { errorChirho: 'Failed to generate certificate' });
		}
	}
};
