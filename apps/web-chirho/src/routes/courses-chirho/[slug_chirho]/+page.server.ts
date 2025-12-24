// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error } from '@sveltejs/kit';
import { eq, asc } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import {
	courseChirho,
	courseModuleChirho,
	courseSessionChirho,
	lessonChirho
} from '$lib/server/db/schema';

// Sample course data for demonstration when database is empty
const SAMPLE_COURSES_CHIRHO: Record<string, SampleCourseChirho> = {
	'web-fundamentals': {
		courseId: 'web-fundamentals',
		title: 'Web Fundamentals',
		slug: 'web-fundamentals',
		description:
			'Learn the basics of HTML, CSS, and JavaScript. Build your first websites from scratch while growing in your faith.',
		thumbnailUrl: null,
		totalWeeks: 8,
		sessionsPerWeek: 3,
		isPublished: true,
		isActive: true,
		icon: '🌐',
		level: 'Beginner',
		verse: 'In the beginning God created the heaven and the earth. — Genesis 1:1',
		modules: [
			{
				moduleId: 'wf-week1',
				title: 'Week 1: Introduction to the Web',
				description:
					'Understand how the internet works and write your first HTML page.',
				weekNumber: 1,
				scriptureReference: 'Genesis 1:1-5',
				theologicalTheme: 'Creation and Order',
				sessions: [
					{
						sessionId: 'wf-w1-s1',
						title: 'How the Internet Works',
						description: 'Learn about browsers, servers, and HTTP.',
						prayerFocus: 'Thank God for the gift of communication.',
						estimatedDurationMinutes: 45,
						lessons: [
							{
								lessonId: 'wf-w1-s1-l1',
								title: 'Welcome to the Course',
								lessonType: 'video',
								estimatedDurationMinutes: 10
							},
							{
								lessonId: 'wf-w1-s1-l2',
								title: 'Understanding HTTP',
								lessonType: 'reading',
								estimatedDurationMinutes: 15
							},
							{
								lessonId: 'wf-w1-s1-l3',
								title: 'Quiz: Internet Basics',
								lessonType: 'quest',
								estimatedDurationMinutes: 10
							}
						]
					},
					{
						sessionId: 'wf-w1-s2',
						title: 'Your First HTML Page',
						description: 'Create a simple HTML document from scratch.',
						prayerFocus: 'Pray for patience and perseverance in learning.',
						estimatedDurationMinutes: 60,
						lessons: [
							{
								lessonId: 'wf-w1-s2-l1',
								title: 'HTML Document Structure',
								lessonType: 'video',
								estimatedDurationMinutes: 15
							},
							{
								lessonId: 'wf-w1-s2-l2',
								title: 'Create Your First Page',
								lessonType: 'payload',
								estimatedDurationMinutes: 30
							}
						]
					},
					{
						sessionId: 'wf-w1-s3',
						title: 'HTML Elements & Tags',
						description: 'Learn common HTML tags and their purposes.',
						prayerFocus: 'Ask God for wisdom to understand new concepts.',
						estimatedDurationMinutes: 45,
						lessons: [
							{
								lessonId: 'wf-w1-s3-l1',
								title: 'Common HTML Tags',
								lessonType: 'video',
								estimatedDurationMinutes: 20
							},
							{
								lessonId: 'wf-w1-s3-l2',
								title: 'Practice: HTML Elements',
								lessonType: 'quest',
								estimatedDurationMinutes: 20
							}
						]
					}
				]
			},
			{
				moduleId: 'wf-week2',
				title: 'Week 2: Styling with CSS',
				description: 'Add colors, fonts, and layouts to your web pages.',
				weekNumber: 2,
				scriptureReference: 'Exodus 35:31-32',
				theologicalTheme: 'God-given Creativity',
				sessions: [
					{
						sessionId: 'wf-w2-s1',
						title: 'CSS Fundamentals',
						description: 'Learn how to add styles to HTML elements.',
						prayerFocus: 'Thank God for the beauty in His creation.',
						estimatedDurationMinutes: 45,
						lessons: [
							{
								lessonId: 'wf-w2-s1-l1',
								title: 'Introduction to CSS',
								lessonType: 'video',
								estimatedDurationMinutes: 20
							},
							{
								lessonId: 'wf-w2-s1-l2',
								title: 'Selectors and Properties',
								lessonType: 'reading',
								estimatedDurationMinutes: 15
							}
						]
					}
				]
			}
		]
	},
	'javascript-journey': {
		courseId: 'javascript-journey',
		title: 'JavaScript Journey',
		slug: 'javascript-journey',
		description:
			'Deep dive into JavaScript programming. Master functions, objects, and modern ES6+ features.',
		thumbnailUrl: null,
		totalWeeks: 10,
		sessionsPerWeek: 3,
		isPublished: true,
		isActive: true,
		icon: '📜',
		level: 'Intermediate',
		verse:
			'Trust in the LORD with all thine heart; and lean not unto thine own understanding. — Proverbs 3:5',
		modules: [
			{
				moduleId: 'js-week1',
				title: 'Week 1: JavaScript Foundations',
				description: 'Variables, data types, and basic operations.',
				weekNumber: 1,
				scriptureReference: 'Proverbs 3:5-6',
				theologicalTheme: 'Trusting in Divine Guidance',
				sessions: []
			}
		]
	}
};

interface SampleLessonChirho {
	lessonId: string;
	title: string;
	lessonType: string;
	estimatedDurationMinutes: number;
}

interface SampleSessionChirho {
	sessionId: string;
	title: string;
	description: string;
	prayerFocus: string;
	estimatedDurationMinutes: number;
	lessons: SampleLessonChirho[];
}

interface SampleModuleChirho {
	moduleId: string;
	title: string;
	description: string;
	weekNumber: number;
	scriptureReference: string;
	theologicalTheme: string;
	sessions: SampleSessionChirho[];
}

interface SampleCourseChirho {
	courseId: string;
	title: string;
	slug: string;
	description: string;
	thumbnailUrl: string | null;
	totalWeeks: number;
	sessionsPerWeek: number;
	isPublished: boolean;
	isActive: boolean;
	icon: string;
	level: string;
	verse: string;
	modules: SampleModuleChirho[];
}

export const load: PageServerLoad = async ({ params, locals }) => {
	const slugChirho = params.slug_chirho;

	// Try to load from database first
	if (locals.dbChirho) {
		const courseResultChirho = await locals.dbChirho
			.select()
			.from(courseChirho)
			.where(eq(courseChirho.slug, slugChirho))
			.limit(1);

		if (courseResultChirho.length > 0) {
			const courseDataChirho = courseResultChirho[0];

			// Load modules for this course
			const modulesChirho = await locals.dbChirho
				.select()
				.from(courseModuleChirho)
				.where(eq(courseModuleChirho.courseId, courseDataChirho.courseId))
				.orderBy(asc(courseModuleChirho.orderIndex));

			// Load sessions and lessons for each module
			const modulesWithContentChirho = await Promise.all(
				modulesChirho.map(async (moduleChirho) => {
					const sessionsChirho = await locals.dbChirho!
						.select()
						.from(courseSessionChirho)
						.where(eq(courseSessionChirho.moduleId, moduleChirho.moduleId))
						.orderBy(asc(courseSessionChirho.orderIndex));

					const sessionsWithLessonsChirho = await Promise.all(
						sessionsChirho.map(async (sessionChirho) => {
							const lessonsChirho = await locals.dbChirho!
								.select()
								.from(lessonChirho)
								.where(eq(lessonChirho.sessionId, sessionChirho.sessionId))
								.orderBy(asc(lessonChirho.orderIndex));

							return {
								...sessionChirho,
								lessons: lessonsChirho
							};
						})
					);

					return {
						...moduleChirho,
						sessions: sessionsWithLessonsChirho
					};
				})
			);

			return {
				courseChirho: courseDataChirho,
				modulesChirho: modulesWithContentChirho,
				isFromDatabaseChirho: true,
				userChirho: locals.userChirho || null
			};
		}
	}

	// Fall back to sample data
	const sampleCourseChirho = SAMPLE_COURSES_CHIRHO[slugChirho];

	if (!sampleCourseChirho) {
		error(404, 'Course not found');
	}

	return {
		courseChirho: {
			courseId: sampleCourseChirho.courseId,
			title: sampleCourseChirho.title,
			slug: sampleCourseChirho.slug,
			description: sampleCourseChirho.description,
			thumbnailUrl: sampleCourseChirho.thumbnailUrl,
			totalWeeks: sampleCourseChirho.totalWeeks,
			sessionsPerWeek: sampleCourseChirho.sessionsPerWeek,
			isPublished: sampleCourseChirho.isPublished,
			isActive: sampleCourseChirho.isActive,
			icon: sampleCourseChirho.icon,
			level: sampleCourseChirho.level,
			verse: sampleCourseChirho.verse
		},
		modulesChirho: sampleCourseChirho.modules,
		isFromDatabaseChirho: false,
		userChirho: locals.userChirho || null
	};
};
