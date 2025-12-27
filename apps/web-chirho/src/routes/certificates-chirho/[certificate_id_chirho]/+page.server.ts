// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { PageServerLoad } from './$types';
import { error, redirect } from '@sveltejs/kit';

export const load: PageServerLoad = async ({ params, locals, platform }) => {
	const userChirho = locals.userChirho;

	if (!userChirho) {
		redirect(303, '/auth-chirho/login?redirect=/certificates-chirho');
	}

	const dbChirho = platform?.env?.DB_CHIRHO;
	if (!dbChirho) {
		error(500, 'Database unavailable');
	}

	try {
		const certificateChirho = await dbChirho
			.prepare(
				`
			SELECT
				c.*,
				co.icon_chirho as courseIcon,
				co.description_chirho as courseDescription,
				co.level_chirho as courseLevel
			FROM certificates_chirho c
			LEFT JOIN courses_chirho co ON c.course_id_chirho = co.course_id_chirho
			WHERE c.certificate_id_chirho = ?
		`
			)
			.bind(params.certificate_id_chirho)
			.first();

		if (!certificateChirho) {
			error(404, 'Certificate not found');
		}

		// Check ownership (unless it's a public view)
		if (certificateChirho.user_id_chirho !== userChirho.userId) {
			// Allow viewing but note it's not theirs
			return {
				certificateChirho,
				isOwnerChirho: false,
				userChirho
			};
		}

		return {
			certificateChirho,
			isOwnerChirho: true,
			userChirho
		};
	} catch (err) {
		console.error('Error loading certificate:', err);
		error(500, 'Failed to load certificate');
	}
};
