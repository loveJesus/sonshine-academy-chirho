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
	'sonshine-coders-fundamentals': {
		courseId: 'sonshine-coders-fundamentals',
		title: 'Sonshine Coders Fundamentals',
		slug: 'sonshine-coders-fundamentals',
		description:
			'Our flagship 18-week course! Learn HTML, CSS, and JavaScript by building three real-world Bible-themed projects. Includes 141 coding quests and hands-on terminal exercises.',
		thumbnailUrl: null,
		totalWeeks: 18,
		sessionsPerWeek: 3,
		isPublished: true,
		isActive: true,
		icon: '✝️',
		level: 'Beginner to Intermediate',
		verse: 'Study to shew thyself approved unto God, a workman that needeth not to be ashamed, rightly dividing the word of truth. — 2 Timothy 2:15 (KJV)',
		modules: [
			{
				moduleId: 'scf-week1',
				title: 'Week 1: Getting Started',
				description: 'Set up your development environment and write your first lines of code.',
				weekNumber: 1,
				scriptureReference: 'Genesis 1:1',
				theologicalTheme: 'In the Beginning - Starting Your Journey',
				sessions: [
					{
						sessionId: 'scf-w1-s1',
						title: 'Welcome to Sonshine Coders',
						description: 'Introduction to the course and what you will learn.',
						prayerFocus: 'Lord, guide my learning and help me use these skills for Your glory.',
						estimatedDurationMinutes: 30,
						lessons: [
							{
								lessonId: 'scf-w1-s1-l1',
								title: 'Course Overview',
								lessonType: 'video',
								estimatedDurationMinutes: 15
							},
							{
								lessonId: 'scf-w1-s1-l2',
								title: 'Setting Up Your Environment',
								lessonType: 'payload',
								estimatedDurationMinutes: 15
							}
						]
					},
					{
						sessionId: 'scf-w1-s2',
						title: 'Introduction to HTML',
						description: 'Learn the building blocks of web pages.',
						prayerFocus: 'Thank God for the gift of creativity and communication.',
						estimatedDurationMinutes: 45,
						lessons: [
							{
								lessonId: 'scf-w1-s2-l1',
								title: 'What is HTML?',
								lessonType: 'video',
								estimatedDurationMinutes: 20
							},
							{
								lessonId: 'scf-w1-s2-l2',
								title: 'Your First HTML Page',
								lessonType: 'quest',
								estimatedDurationMinutes: 25
							}
						]
					}
				]
			},
			{
				moduleId: 'scf-week2',
				title: 'Week 2: HTML Deep Dive',
				description: 'Master HTML elements and structure your content.',
				weekNumber: 2,
				scriptureReference: 'Proverbs 24:3-4',
				theologicalTheme: 'Building on a Strong Foundation',
				sessions: []
			},
			{
				moduleId: 'scf-week3',
				title: 'Week 3: CSS Fundamentals',
				description: 'Add style and beauty to your web pages.',
				weekNumber: 3,
				scriptureReference: 'Exodus 35:31-32',
				theologicalTheme: 'God-Given Creativity',
				sessions: []
			},
			{
				moduleId: 'scf-week4',
				title: 'Week 4: Bible Flashcard App',
				description: 'Build your first complete project - a Scripture memorization app.',
				weekNumber: 4,
				scriptureReference: 'Psalm 119:11',
				theologicalTheme: 'Hiding God\'s Word in Your Heart',
				sessions: []
			},
			{
				moduleId: 'scf-week5',
				title: 'Week 5: JavaScript Basics',
				description: 'Learn to make your web pages interactive.',
				weekNumber: 5,
				scriptureReference: 'Proverbs 3:5-6',
				theologicalTheme: 'Trusting in Divine Guidance',
				sessions: []
			},
			{
				moduleId: 'scf-week6',
				title: 'Week 6: JavaScript Functions',
				description: 'Master functions and write reusable code.',
				weekNumber: 6,
				scriptureReference: 'Ecclesiastes 3:1',
				theologicalTheme: 'A Time for Everything',
				sessions: []
			},
			{
				moduleId: 'scf-week7',
				title: 'Week 7: Working with Data',
				description: 'Arrays, objects, and data manipulation.',
				weekNumber: 7,
				scriptureReference: '1 Corinthians 14:40',
				theologicalTheme: 'Order and Organization',
				sessions: []
			},
			{
				moduleId: 'scf-week8',
				title: 'Week 8: Bible Study Notes App',
				description: 'Build a full-stack app to save your Bible study notes.',
				weekNumber: 8,
				scriptureReference: '2 Timothy 2:15',
				theologicalTheme: 'Rightly Dividing the Word',
				sessions: []
			},
			{
				moduleId: 'scf-week9',
				title: 'Week 9: Introduction to Databases',
				description: 'Learn to store and retrieve data persistently.',
				weekNumber: 9,
				scriptureReference: 'Matthew 6:19-20',
				theologicalTheme: 'Storing Treasures',
				sessions: []
			},
			{
				moduleId: 'scf-week10',
				title: 'Week 10: Backend Development',
				description: 'Create server-side logic for your applications.',
				weekNumber: 10,
				scriptureReference: 'Colossians 3:23',
				theologicalTheme: 'Working for the Lord',
				sessions: []
			},
			{
				moduleId: 'scf-week11',
				title: 'Week 11: User Authentication',
				description: 'Secure your apps with login and registration.',
				weekNumber: 11,
				scriptureReference: 'John 10:9',
				theologicalTheme: 'The Door - Access Through Christ',
				sessions: []
			},
			{
				moduleId: 'scf-week12',
				title: 'Week 12: Real-Time Features',
				description: 'Add live updates and real-time communication.',
				weekNumber: 12,
				scriptureReference: 'Acts 2:42',
				theologicalTheme: 'Fellowship and Sharing',
				sessions: []
			},
			{
				moduleId: 'scf-week13',
				title: 'Week 13: Verse Share Network',
				description: 'Build a social platform to share Scripture with friends.',
				weekNumber: 13,
				scriptureReference: 'Matthew 28:19-20',
				theologicalTheme: 'The Great Commission',
				sessions: []
			},
			{
				moduleId: 'scf-week14',
				title: 'Week 14: Deployment',
				description: 'Put your apps live on the internet for the world to see.',
				weekNumber: 14,
				scriptureReference: 'Matthew 5:14-16',
				theologicalTheme: 'Let Your Light Shine',
				sessions: []
			},
			{
				moduleId: 'scf-week15',
				title: 'Week 15: AI Tools & Ethics',
				description: 'Learn to use AI tools wisely and ethically.',
				weekNumber: 15,
				scriptureReference: 'Proverbs 2:6',
				theologicalTheme: 'Wisdom and Understanding',
				sessions: []
			},
			{
				moduleId: 'scf-week16',
				title: 'Week 16: Business & Freelancing',
				description: 'Turn your skills into income while honoring God.',
				weekNumber: 16,
				scriptureReference: 'Proverbs 22:29',
				theologicalTheme: 'Excellence in Work',
				sessions: []
			},
			{
				moduleId: 'scf-week17',
				title: 'Week 17: Biblical Work Ethics',
				description: 'Balance work, family, and faith in your career.',
				weekNumber: 17,
				scriptureReference: 'Matthew 6:33',
				theologicalTheme: 'Seek First the Kingdom',
				sessions: []
			},
			{
				moduleId: 'scf-week18',
				title: 'Week 18: Graduation & Next Steps',
				description: 'Celebrate your journey and plan for the future.',
				weekNumber: 18,
				scriptureReference: 'Philippians 1:6',
				theologicalTheme: 'He Who Began a Good Work',
				sessions: []
			}
		]
	},
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
