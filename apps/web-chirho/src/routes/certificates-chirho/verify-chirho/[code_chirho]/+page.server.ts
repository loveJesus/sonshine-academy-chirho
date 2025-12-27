// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ params, platform }) => {
	const dbChirho = platform?.env?.DB_CHIRHO;
	if (!dbChirho) {
		return {
			certificateChirho: null,
			errorChirho: 'Verification service unavailable'
		};
	}

	try {
		const certificateChirho = await dbChirho
			.prepare(
				`
			SELECT
				c.certificate_id_chirho,
				c.recipient_name_chirho,
				c.course_title_chirho,
				c.issue_date_chirho,
				c.verification_code_chirho,
				c.quests_completed_chirho,
				c.coins_earned_chirho,
				co.icon_chirho as courseIcon,
				co.level_chirho as courseLevel
			FROM certificates_chirho c
			LEFT JOIN courses_chirho co ON c.course_id_chirho = co.course_id_chirho
			WHERE c.verification_code_chirho = ?
		`
			)
			.bind(params.code_chirho)
			.first();

		if (!certificateChirho) {
			return {
				certificateChirho: null,
				errorChirho: 'Certificate not found'
			};
		}

		return {
			certificateChirho,
			errorChirho: null
		};
	} catch (err) {
		console.error('Error verifying certificate:', err);
		return {
			certificateChirho: null,
			errorChirho: 'Verification failed'
		};
	}
};
