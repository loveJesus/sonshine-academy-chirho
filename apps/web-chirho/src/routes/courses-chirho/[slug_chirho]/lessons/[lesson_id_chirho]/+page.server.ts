// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error, redirect } from '@sveltejs/kit';
import { eq, and, asc } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import {
	courseChirho,
	lessonChirho,
	videoLessonChirho,
	courseSessionChirho,
	courseModuleChirho,
	studentProgressChirho,
	questChirho
} from '$lib/server/db/schema';

// Sample lessons for demonstration
const SAMPLE_LESSONS_CHIRHO: Record<string, SampleLessonDataChirho> = {
	'wf-w1-s1-l1': {
		lessonId: 'wf-w1-s1-l1',
		title: 'Welcome to the Course',
		lessonType: 'video',
		content:
			'Welcome to Web Fundamentals! In this video, we will introduce you to the exciting world of web development and explain what you will learn throughout this course.',
		estimatedDurationMinutes: 10,
		videoId: 'dQw4w9WgXcQ', // Sample YouTube ID
		videoTitle: 'Welcome to Web Fundamentals',
		videoDurationSeconds: 600,
		chapters: [
			{ time: 0, title: 'Introduction' },
			{ time: 120, title: 'What is Web Development?' },
			{ time: 300, title: 'Course Overview' },
			{ time: 480, title: 'Getting Started' }
		]
	},
	'wf-w1-s1-l2': {
		lessonId: 'wf-w1-s1-l2',
		title: 'Understanding HTTP',
		lessonType: 'reading',
		content: `
# Understanding HTTP

HTTP (HyperText Transfer Protocol) is the foundation of data communication on the World Wide Web.

## What is HTTP?

HTTP is a protocol that allows web browsers and servers to communicate. When you type a URL into your browser, you're making an HTTP request.

## How It Works

1. **Request**: Your browser sends a request to a server
2. **Processing**: The server processes the request
3. **Response**: The server sends back a response with the requested content

## Common HTTP Methods

- **GET**: Retrieve data from the server
- **POST**: Send data to the server
- **PUT**: Update existing data
- **DELETE**: Remove data

## Scripture Connection

Just as HTTP enables communication between computers, prayer enables communication between us and God. "Call unto me, and I will answer thee" (Jeremiah 33:3).

## Key Takeaways

- HTTP is the language of the web
- Every website you visit uses HTTP
- Understanding HTTP helps you become a better developer
		`,
		estimatedDurationMinutes: 15
	},
	'wf-w1-s1-l3': {
		lessonId: 'wf-w1-s1-l3',
		title: 'Quiz: Internet Basics',
		lessonType: 'quest',
		content: 'Complete this quest to test your understanding of internet basics.',
		estimatedDurationMinutes: 10,
		questId: 'internet-basics-quiz'
	},
	'wf-w1-s2-l1': {
		lessonId: 'wf-w1-s2-l1',
		title: 'HTML Document Structure',
		lessonType: 'video',
		content: 'Learn about the basic structure of an HTML document.',
		estimatedDurationMinutes: 15,
		videoId: 'UB1O30fR-EE', // Sample YouTube ID
		videoTitle: 'HTML Document Structure',
		videoDurationSeconds: 900
	},
	'wf-w1-s2-l2': {
		lessonId: 'wf-w1-s2-l2',
		title: 'Create Your First Page',
		lessonType: 'payload',
		content:
			'In this hands-on exercise, you will create your very first HTML page using our terminal environment.',
		estimatedDurationMinutes: 30,
		payloadId: 'first-html-page'
	}
};

interface VideoChapterChirho {
	time: number;
	title: string;
}

interface SampleLessonDataChirho {
	lessonId: string;
	title: string;
	lessonType: string;
	content: string;
	estimatedDurationMinutes: number;
	videoId?: string;
	videoTitle?: string;
	videoDurationSeconds?: number;
	chapters?: VideoChapterChirho[];
	questId?: string;
	payloadId?: string;
}

export const load: PageServerLoad = async ({ params, locals }) => {
	const slugChirho = params.slug_chirho;
	const lessonIdChirho = params.lesson_id_chirho;

	// Require authentication for lesson access
	if (!locals.userChirho) {
		redirect(302, `/auth-chirho/login?redirect=/courses-chirho/${slugChirho}/lessons/${lessonIdChirho}`);
	}

	// Try to load from database first
	if (locals.dbChirho) {
		// Get the course
		const courseResultChirho = await locals.dbChirho
			.select()
			.from(courseChirho)
			.where(eq(courseChirho.slug, slugChirho))
			.limit(1);

		if (courseResultChirho.length > 0) {
			const courseDataChirho = courseResultChirho[0];

			// Get the lesson
			const lessonResultChirho = await locals.dbChirho
				.select()
				.from(lessonChirho)
				.where(eq(lessonChirho.lessonId, lessonIdChirho))
				.limit(1);

			if (lessonResultChirho.length > 0) {
				const lessonDataChirho = lessonResultChirho[0];

				// Get video details if it's a video lesson
				let videoDataChirho = null;
				if (lessonDataChirho.lessonType === 'video') {
					const videoResultChirho = await locals.dbChirho
						.select()
						.from(videoLessonChirho)
						.where(eq(videoLessonChirho.lessonId, lessonIdChirho))
						.limit(1);

					if (videoResultChirho.length > 0) {
						videoDataChirho = videoResultChirho[0];
					}
				}

				// Get quest details if it's a quest lesson
				let questDataChirho = null;
				if (lessonDataChirho.lessonType === 'quest') {
					const questResultChirho = await locals.dbChirho
						.select()
						.from(questChirho)
						.where(eq(questChirho.lessonId, lessonIdChirho))
						.limit(1);

					if (questResultChirho.length > 0) {
						questDataChirho = questResultChirho[0];
					}
				}

				// Get session info with module info
				const sessionResultChirho = await locals.dbChirho
					.select({
						sessionId: courseSessionChirho.sessionId,
						moduleId: courseSessionChirho.moduleId,
						title: courseSessionChirho.title,
						description: courseSessionChirho.description,
						orderIndex: courseSessionChirho.orderIndex,
						moduleTitle: courseModuleChirho.title,
						weekNumber: courseModuleChirho.weekNumber
					})
					.from(courseSessionChirho)
					.leftJoin(courseModuleChirho, eq(courseSessionChirho.moduleId, courseModuleChirho.moduleId))
					.where(eq(courseSessionChirho.sessionId, lessonDataChirho.sessionId))
					.limit(1);

				// Get student progress
				let progressDataChirho = null;
				const progressResultChirho = await locals.dbChirho
					.select()
					.from(studentProgressChirho)
					.where(
						and(
							eq(studentProgressChirho.userId, locals.userChirho.userId),
							eq(studentProgressChirho.lessonId, lessonIdChirho)
						)
					)
					.limit(1);

				if (progressResultChirho.length > 0) {
					progressDataChirho = progressResultChirho[0];
				}

				// Get adjacent lessons for navigation
				const allLessonsChirho = await locals.dbChirho
					.select({ lessonId: lessonChirho.lessonId, title: lessonChirho.title, orderIndex: lessonChirho.orderIndex })
					.from(lessonChirho)
					.where(eq(lessonChirho.sessionId, lessonDataChirho.sessionId))
					.orderBy(asc(lessonChirho.orderIndex));

				const currentIndexChirho = allLessonsChirho.findIndex((l) => l.lessonId === lessonIdChirho);
				const prevLessonChirho = currentIndexChirho > 0 ? allLessonsChirho[currentIndexChirho - 1] : null;
				const nextLessonChirho =
					currentIndexChirho < allLessonsChirho.length - 1 ? allLessonsChirho[currentIndexChirho + 1] : null;

				return {
					courseChirho: courseDataChirho,
					lessonChirho: lessonDataChirho,
					videoChirho: videoDataChirho,
					questChirho: questDataChirho,
					sessionChirho: sessionResultChirho[0] || null,
					progressChirho: progressDataChirho,
					prevLessonChirho,
					nextLessonChirho,
					isFromDatabaseChirho: true,
					userChirho: locals.userChirho
				};
			}
		}
	}

	// Fall back to sample data
	const sampleLessonChirho = SAMPLE_LESSONS_CHIRHO[lessonIdChirho];

	if (!sampleLessonChirho) {
		error(404, 'Lesson not found');
	}

	return {
		courseChirho: {
			courseId: 'web-fundamentals',
			title: 'Web Fundamentals',
			slug: 'web-fundamentals'
		},
		lessonChirho: {
			lessonId: sampleLessonChirho.lessonId,
			title: sampleLessonChirho.title,
			lessonType: sampleLessonChirho.lessonType,
			content: sampleLessonChirho.content,
			estimatedDurationMinutes: sampleLessonChirho.estimatedDurationMinutes
		},
		videoChirho: sampleLessonChirho.videoId
			? {
					youtubeVideoId: sampleLessonChirho.videoId,
					title: sampleLessonChirho.videoTitle || sampleLessonChirho.title,
					durationSeconds: sampleLessonChirho.videoDurationSeconds,
					chaptersJson: sampleLessonChirho.chapters ? JSON.stringify(sampleLessonChirho.chapters) : null
				}
			: null,
		questChirho: sampleLessonChirho.questId ? { questId: sampleLessonChirho.questId } : null,
		sessionChirho: null,
		progressChirho: null,
		prevLessonChirho: null,
		nextLessonChirho: null,
		isFromDatabaseChirho: false,
		userChirho: locals.userChirho
	};
};
