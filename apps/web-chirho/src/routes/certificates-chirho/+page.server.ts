// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { PageServerLoad } from './$types';
import { redirect } from '@sveltejs/kit';

export const load: PageServerLoad = async ({ locals, platform }) => {
	const userChirho = locals.userChirho;

	if (!userChirho) {
		redirect(303, '/auth-chirho/login?redirect=/certificates-chirho');
	}

	const dbChirho = platform?.env?.DB_CHIRHO;
	if (!dbChirho) {
		return {
			userChirho,
			certificatesChirho: [],
			completedCoursesChirho: []
		};
	}

	try {
		// Get user's certificates
		const certificatesChirho = await dbChirho
			.prepare(
				`
			SELECT
				c.*,
				co.icon_chirho as courseIcon
			FROM certificates_chirho c
			LEFT JOIN courses_chirho co ON c.course_id_chirho = co.course_id_chirho
			WHERE c.user_id_chirho = ?
			ORDER BY c.issue_date_chirho DESC
		`
			)
			.bind(userChirho.userId)
			.all();

		// Get completed courses without certificates (eligible for certificate)
		const completedCoursesChirho = await dbChirho
			.prepare(
				`
			SELECT
				ce.enrollment_id_chirho,
				ce.course_id_chirho,
				ce.completed_at_chirho,
				ce.progress_percentage_chirho,
				co.title_chirho,
				co.icon_chirho,
				co.slug_chirho
			FROM course_enrollments_chirho ce
			JOIN courses_chirho co ON ce.course_id_chirho = co.course_id_chirho
			LEFT JOIN certificates_chirho cert ON ce.user_id_chirho = cert.user_id_chirho
				AND ce.course_id_chirho = cert.course_id_chirho
			WHERE ce.user_id_chirho = ?
				AND ce.status_chirho = 'completed'
				AND cert.certificate_id_chirho IS NULL
			ORDER BY ce.completed_at_chirho DESC
		`
			)
			.bind(userChirho.userId)
			.all();

		return {
			userChirho,
			certificatesChirho: certificatesChirho.results || [],
			completedCoursesChirho: completedCoursesChirho.results || []
		};
	} catch (errorChirho) {
		console.error('Error loading certificates:', errorChirho);
		return {
			userChirho,
			certificatesChirho: [],
			completedCoursesChirho: []
		};
	}
};
