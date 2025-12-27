// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail } from '@sveltejs/kit';

// Course structure templates
/** @type {Record<number, {title: string, theme: string, scripture: string}>} */
const weekThemesChirho = {
	1: { title: 'The Beginning', theme: 'What is Code?', scripture: 'Genesis 1:1' },
	2: { title: 'Let There Be Light', theme: 'CSS Basics', scripture: 'John 1:5' },
	3: { title: 'The Word Became Code', theme: 'JavaScript Basics', scripture: 'John 1:1' },
	4: { title: 'Truth & Logic', theme: 'Booleans & Conditionals', scripture: 'John 14:6' },
	5: { title: 'Collections & Community', theme: 'Arrays & Objects', scripture: '1 Corinthians 12:12' },
	6: { title: 'Repetition & Persistence', theme: 'Loops', scripture: 'Galatians 6:9' },
	7: { title: 'The DOM', theme: 'Document Object Model', scripture: 'Matthew 7:7' },
	8: { title: 'Forms & Input', theme: 'User Input', scripture: 'James 1:19' },
	9: { title: 'Layout Mastery', theme: 'Flexbox & Grid', scripture: '1 Corinthians 14:40' },
	10: { title: 'Animation & Motion', theme: 'CSS & JS Animations', scripture: 'Psalm 149:3' },
	11: { title: 'Data & APIs', theme: 'Fetch & Async', scripture: 'Isaiah 40:31' },
	12: { title: 'Local Storage', theme: 'Persisting Data', scripture: 'Matthew 6:20' },
	13: { title: 'Scripture Memory App', theme: 'Project Week', scripture: 'Psalm 119:11' },
	14: { title: 'Advanced JavaScript', theme: 'Higher-Order Functions', scripture: 'Proverbs 2:6' },
	15: { title: 'Modern CSS', theme: 'Variables & Architecture', scripture: 'Colossians 2:5' },
	16: { title: 'Interactive Bible Story', theme: 'Project Week', scripture: '2 Timothy 3:16' },
	17: { title: 'Final Project Start', theme: 'Planning & Building', scripture: 'Proverbs 16:3' },
	18: { title: 'Final Project & Celebration', theme: 'Completion & Presentations', scripture: '2 Timothy 4:7' }
};

/** @type {import('./$types').PageServerLoad} */
export async function load({ platform }) {
	const dbChirho = platform?.env?.DB_CHIRHO;

	if (!dbChirho) {
		return {
			coursesChirho: [],
			statsChirho: {
				totalCoursesChirho: 0,
				publishedChirho: 0,
				totalModulesChirho: 0,
				totalLessonsChirho: 0
			}
		};
	}

	try {
		// Fetch all courses with module/lesson counts
		const coursesResultChirho = await dbChirho
			.prepare(`
				SELECT
					c.course_id_chirho AS courseId,
					c.title_chirho AS title,
					c.slug_chirho AS slug,
					c.description_chirho AS description,
					c.total_weeks_chirho AS totalWeeks,
					c.sessions_per_week_chirho AS sessionsPerWeek,
					c.is_published_chirho AS isPublished,
					c.is_active_chirho AS isActive,
					c.created_at_chirho AS createdAt,
					(SELECT COUNT(*) FROM course_modules_chirho WHERE course_id_chirho = c.course_id_chirho) AS moduleCount,
					(SELECT COUNT(*) FROM lessons_chirho l
					 JOIN course_sessions_chirho cs ON l.session_id_chirho = cs.session_id_chirho
					 JOIN course_modules_chirho cm ON cs.module_id_chirho = cm.module_id_chirho
					 WHERE cm.course_id_chirho = c.course_id_chirho) AS lessonCount
				FROM courses_chirho c
				ORDER BY c.created_at_chirho DESC
			`)
			.all();

		const coursesChirho = coursesResultChirho.results || [];

		// Calculate stats
		const totalCoursesChirho = coursesChirho.length;
		const publishedChirho = coursesChirho.filter((c) => c.isPublished).length;
		const totalModulesChirho = coursesChirho.reduce((sum, c) => sum + (Number(c.moduleCount) || 0), 0);
		const totalLessonsChirho = coursesChirho.reduce((sum, c) => sum + (Number(c.lessonCount) || 0), 0);

		return {
			coursesChirho,
			statsChirho: {
				totalCoursesChirho,
				publishedChirho,
				totalModulesChirho,
				totalLessonsChirho
			}
		};
	} catch (errorChirho) {
		console.error('Error loading courses:', errorChirho);
		return {
			coursesChirho: [],
			statsChirho: {
				totalCoursesChirho: 0,
				publishedChirho: 0,
				totalModulesChirho: 0,
				totalLessonsChirho: 0
			}
		};
	}
}

/** @type {import('./$types').Actions} */
export const actions = {
	createCourseChirho: async ({ request, platform }) => {
		const dbChirho = platform?.env?.DB_CHIRHO;

		if (!dbChirho) {
			return fail(500, { errorChirho: 'Database not available' });
		}

		try {
			const formDataChirho = await request.formData();

			const titleChirho = String(formDataChirho.get('titleChirho') || '');
			const slugChirho = String(formDataChirho.get('slugChirho') || '');
			const descriptionChirho = String(formDataChirho.get('descriptionChirho') || '');
			const totalWeeksChirho = parseInt(String(formDataChirho.get('totalWeeksChirho') || '18'), 10) || 18;
			const sessionsPerWeekChirho = parseInt(String(formDataChirho.get('sessionsPerWeekChirho') || '3'), 10) || 3;

			if (!titleChirho || !slugChirho) {
				return fail(400, { errorChirho: 'Title and slug are required' });
			}

			const courseIdChirho = crypto.randomUUID();

			// Create the course
			await dbChirho
				.prepare(`
					INSERT INTO courses_chirho (
						course_id_chirho,
						title_chirho,
						slug_chirho,
						description_chirho,
						total_weeks_chirho,
						sessions_per_week_chirho,
						is_published_chirho,
						is_active_chirho
					) VALUES (?, ?, ?, ?, ?, ?, 0, 1)
				`)
				.bind(
					courseIdChirho,
					titleChirho,
					slugChirho,
					descriptionChirho,
					totalWeeksChirho,
					sessionsPerWeekChirho
				)
				.run();

			// Create modules (weeks) and sessions
			let modulesCreatedChirho = 0;

			for (let weekChirho = 1; weekChirho <= totalWeeksChirho; weekChirho++) {
				const moduleIdChirho = crypto.randomUUID();
				const weekInfoChirho = weekThemesChirho[weekChirho] || {
					title: `Week ${weekChirho}`,
					theme: 'Learning',
					scripture: 'Proverbs 1:7'
				};

				// Create module
				await dbChirho
					.prepare(`
						INSERT INTO course_modules_chirho (
							module_id_chirho,
							course_id_chirho,
							title_chirho,
							description_chirho,
							week_number_chirho,
							scripture_reference_chirho,
							theological_theme_chirho,
							order_index_chirho,
							is_active_chirho
						) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 1)
					`)
					.bind(
						moduleIdChirho,
						courseIdChirho,
						weekInfoChirho.title,
						weekInfoChirho.theme,
						weekChirho,
						weekInfoChirho.scripture,
						weekInfoChirho.theme,
						weekChirho
					)
					.run();

				modulesCreatedChirho++;

				// Create sessions for this week
				for (let sessionChirho = 1; sessionChirho <= sessionsPerWeekChirho; sessionChirho++) {
					const sessionIdChirho = crypto.randomUUID();

					await dbChirho
						.prepare(`
							INSERT INTO course_sessions_chirho (
								session_id_chirho,
								module_id_chirho,
								title_chirho,
								description_chirho,
								session_number_chirho,
								order_index_chirho,
								is_active_chirho
							) VALUES (?, ?, ?, ?, ?, ?, 1)
						`)
						.bind(
							sessionIdChirho,
							moduleIdChirho,
							`Session ${sessionChirho}`,
							`Week ${weekChirho}, Session ${sessionChirho}`,
							sessionChirho,
							sessionChirho
						)
						.run();
				}
			}

			return {
				successChirho: true,
				actionChirho: 'createCourseChirho',
				titleChirho,
				modulesCreatedChirho
			};
		} catch (errorChirho) {
			console.error('Error creating course:', errorChirho);
			const errMsgChirho = errorChirho instanceof Error ? errorChirho.message : String(errorChirho);
			return fail(500, { errorChirho: 'Failed to create course: ' + errMsgChirho });
		}
	},

	deleteCourseChirho: async ({ request, platform }) => {
		const dbChirho = platform?.env?.DB_CHIRHO;

		if (!dbChirho) {
			return fail(500, { errorChirho: 'Database not available' });
		}

		try {
			const formDataChirho = await request.formData();
			const courseIdChirho = formDataChirho.get('courseIdChirho');

			if (!courseIdChirho) {
				return fail(400, { errorChirho: 'Course ID is required' });
			}

			// Delete course (cascade will handle modules/sessions if FK set up)
			await dbChirho
				.prepare('DELETE FROM courses_chirho WHERE course_id_chirho = ?')
				.bind(courseIdChirho)
				.run();

			return {
				successChirho: true,
				actionChirho: 'deleteCourseChirho'
			};
		} catch (errorChirho) {
			console.error('Error deleting course:', errorChirho);
			return fail(500, { errorChirho: 'Failed to delete course' });
		}
	},

	togglePublishChirho: async ({ request, platform }) => {
		const dbChirho = platform?.env?.DB_CHIRHO;

		if (!dbChirho) {
			return fail(500, { errorChirho: 'Database not available' });
		}

		try {
			const formDataChirho = await request.formData();
			const courseIdChirho = formDataChirho.get('courseIdChirho');
			const isPublishedChirho = formDataChirho.get('isPublishedChirho') === 'true' ? 0 : 1;

			await dbChirho
				.prepare('UPDATE courses_chirho SET is_published_chirho = ? WHERE course_id_chirho = ?')
				.bind(isPublishedChirho, courseIdChirho)
				.run();

			return { successChirho: true };
		} catch (errorChirho) {
			console.error('Error toggling course publish status:', errorChirho);
			return fail(500, { errorChirho: 'Failed to update course status' });
		}
	}
};
