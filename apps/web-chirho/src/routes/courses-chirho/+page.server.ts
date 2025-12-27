// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { desc, eq } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { courseChirho } from '$lib/server/db/schema';

// Sample courses for demo when database is empty
const SAMPLE_COURSES_CHIRHO = [
	{
		courseId: 'sonshine-coders-fundamentals',
		title: 'Sonshine Coders Fundamentals',
		slug: 'sonshine-coders-fundamentals',
		description:
			'Our flagship 18-week course! Learn HTML, CSS, and JavaScript by building three real-world Bible-themed projects. Includes 141 coding quests and hands-on terminal exercises.',
		thumbnailUrl: null,
		totalWeeks: 18,
		sessionsPerWeek: 3,
		isPublished: true,
		isActive: true
	},
	{
		courseId: 'web-fundamentals-chirho',
		title: 'Web Fundamentals',
		slug: 'web-fundamentals',
		description:
			'Begin your journey into web development with a Christ-centered approach. Learn HTML, CSS, and JavaScript fundamentals while building a strong foundation.',
		thumbnailUrl: null,
		totalWeeks: 18,
		sessionsPerWeek: 3,
		isPublished: true,
		isActive: true
	}
];

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.dbChirho) {
		return {
			coursesChirho: SAMPLE_COURSES_CHIRHO
		};
	}

	try {
		const coursesChirho = await locals.dbChirho
			.select()
			.from(courseChirho)
			.where(eq(courseChirho.isActive, true))
			.orderBy(desc(courseChirho.createdAt));

		// If no courses in database, return sample courses
		if (coursesChirho.length === 0) {
			return {
				coursesChirho: SAMPLE_COURSES_CHIRHO
			};
		}

		return {
			coursesChirho
		};
	} catch (error) {
		console.error('Error loading courses:', error);
		return {
			coursesChirho: SAMPLE_COURSES_CHIRHO
		};
	}
};
