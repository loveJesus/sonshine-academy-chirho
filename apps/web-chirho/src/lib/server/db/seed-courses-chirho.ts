// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

/**
 * Database seeding script for course curriculum
 * Run with: npx tsx src/lib/server/db/seed-courses-chirho.ts
 */

import type { DbChirho } from './index';
import {
	courseChirho,
	courseModuleChirho,
	courseSessionChirho,
	lessonChirho,
	videoLessonChirho,
	questChirho
} from './schema';

// ============================================================================
// WEB FUNDAMENTALS COURSE DATA
// ============================================================================

const WEB_FUNDAMENTALS_COURSE_CHIRHO = {
	courseId: 'web-fundamentals-chirho',
	title: 'Web Fundamentals',
	slug: 'web-fundamentals',
	description:
		'Begin your journey into web development with a Christ-centered approach. Learn HTML, CSS, and JavaScript fundamentals while building a strong foundation in both coding skills and faith.',
	thumbnailUrl: '/images/courses/web-fundamentals.jpg',
	totalWeeks: 18,
	sessionsPerWeek: 3,
	isPublished: true,
	isActive: true
};

const WEB_FUNDAMENTALS_MODULES_CHIRHO = [
	{
		moduleId: 'wf-mod-1-chirho',
		courseId: 'web-fundamentals-chirho',
		title: 'Week 1: Introduction to the Web',
		description: 'Understand how the internet works and set up your development environment.',
		weekNumber: 1,
		scriptureReference: 'In the beginning God created the heaven and the earth. - Genesis 1:1',
		theologicalTheme: 'Creation and Purpose',
		orderIndex: 1,
		isActive: true
	},
	{
		moduleId: 'wf-mod-2-chirho',
		courseId: 'web-fundamentals-chirho',
		title: 'Week 2: HTML Foundations',
		description: 'Learn the building blocks of web pages with semantic HTML.',
		weekNumber: 2,
		scriptureReference:
			'For other foundation can no man lay than that is laid, which is Jesus Christ. - 1 Corinthians 3:11',
		theologicalTheme: 'Building on a Solid Foundation',
		orderIndex: 2,
		isActive: true
	},
	{
		moduleId: 'wf-mod-3-chirho',
		courseId: 'web-fundamentals-chirho',
		title: 'Week 3: CSS Styling',
		description: 'Add beauty and design to your web pages with CSS.',
		weekNumber: 3,
		scriptureReference:
			'He hath made every thing beautiful in his time. - Ecclesiastes 3:11',
		theologicalTheme: 'Beauty and Design',
		orderIndex: 3,
		isActive: true
	},
	{
		moduleId: 'wf-mod-4-chirho',
		courseId: 'web-fundamentals-chirho',
		title: 'Week 4: CSS Layout',
		description: 'Master Flexbox and Grid for powerful page layouts.',
		weekNumber: 4,
		scriptureReference:
			'For God is not the author of confusion, but of peace. - 1 Corinthians 14:33',
		theologicalTheme: 'Order and Structure',
		orderIndex: 4,
		isActive: true
	},
	{
		moduleId: 'wf-mod-5-chirho',
		courseId: 'web-fundamentals-chirho',
		title: 'Week 5: JavaScript Basics',
		description: 'Bring your pages to life with JavaScript programming.',
		weekNumber: 5,
		scriptureReference: 'The Spirit gives life. - John 6:63',
		theologicalTheme: 'Bringing Life and Interactivity',
		orderIndex: 5,
		isActive: true
	},
	{
		moduleId: 'wf-mod-6-chirho',
		courseId: 'web-fundamentals-chirho',
		title: 'Week 6: DOM Manipulation',
		description: 'Learn to dynamically modify web pages with JavaScript.',
		weekNumber: 6,
		scriptureReference:
			'Behold, I make all things new. - Revelation 21:5',
		theologicalTheme: 'Transformation and Renewal',
		orderIndex: 6,
		isActive: true
	}
];

const WEB_FUNDAMENTALS_SESSIONS_CHIRHO = [
	// Week 1 Sessions
	{
		sessionId: 'wf-w1-s1-chirho',
		moduleId: 'wf-mod-1-chirho',
		title: 'How the Internet Works',
		description: 'Understanding the fundamental architecture of the World Wide Web.',
		prayerFocus: 'Lord, help me understand Your creation and use technology for Your glory.',
		sessionNumber: 1,
		estimatedDurationMinutes: 45,
		orderIndex: 1,
		isActive: true
	},
	{
		sessionId: 'wf-w1-s2-chirho',
		moduleId: 'wf-mod-1-chirho',
		title: 'Setting Up Your Environment',
		description: 'Install VS Code and configure your development workspace.',
		prayerFocus: 'Father, prepare my tools and my heart for the learning journey ahead.',
		sessionNumber: 2,
		estimatedDurationMinutes: 30,
		orderIndex: 2,
		isActive: true
	},
	{
		sessionId: 'wf-w1-s3-chirho',
		moduleId: 'wf-mod-1-chirho',
		title: 'Your First HTML Page',
		description: 'Create and view your very first web page.',
		prayerFocus: 'Thank You, Lord, for the gift of creation. Help me create with purpose.',
		sessionNumber: 3,
		estimatedDurationMinutes: 45,
		orderIndex: 3,
		isActive: true
	},
	// Week 2 Sessions
	{
		sessionId: 'wf-w2-s1-chirho',
		moduleId: 'wf-mod-2-chirho',
		title: 'HTML Document Structure',
		description: 'Learn the anatomy of an HTML document.',
		prayerFocus: 'Lord, teach me to build on Your solid foundation.',
		sessionNumber: 1,
		estimatedDurationMinutes: 45,
		orderIndex: 1,
		isActive: true
	},
	{
		sessionId: 'wf-w2-s2-chirho',
		moduleId: 'wf-mod-2-chirho',
		title: 'Text and Headings',
		description: 'Master headings, paragraphs, and text formatting.',
		prayerFocus: 'Help me communicate clearly, as Your Word is clear.',
		sessionNumber: 2,
		estimatedDurationMinutes: 40,
		orderIndex: 2,
		isActive: true
	},
	{
		sessionId: 'wf-w2-s3-chirho',
		moduleId: 'wf-mod-2-chirho',
		title: 'Links and Images',
		description: 'Connect pages and add visual content.',
		prayerFocus: 'Lord, help me connect others to truth through what I create.',
		sessionNumber: 3,
		estimatedDurationMinutes: 45,
		orderIndex: 3,
		isActive: true
	},
	// Week 3 Sessions
	{
		sessionId: 'wf-w3-s1-chirho',
		moduleId: 'wf-mod-3-chirho',
		title: 'Introduction to CSS',
		description: 'Learn how CSS works and how to apply styles.',
		prayerFocus: 'Father, teach me to see and create beauty as You do.',
		sessionNumber: 1,
		estimatedDurationMinutes: 45,
		orderIndex: 1,
		isActive: true
	},
	{
		sessionId: 'wf-w3-s2-chirho',
		moduleId: 'wf-mod-3-chirho',
		title: 'Colors and Typography',
		description: 'Master color systems and font styling.',
		prayerFocus: 'Lord, help me use colors and fonts to glorify You.',
		sessionNumber: 2,
		estimatedDurationMinutes: 40,
		orderIndex: 2,
		isActive: true
	},
	{
		sessionId: 'wf-w3-s3-chirho',
		moduleId: 'wf-mod-3-chirho',
		title: 'Box Model and Spacing',
		description: 'Understand margins, padding, and borders.',
		prayerFocus: 'Teach me good boundaries in code and in life.',
		sessionNumber: 3,
		estimatedDurationMinutes: 45,
		orderIndex: 3,
		isActive: true
	}
];

const WEB_FUNDAMENTALS_LESSONS_CHIRHO = [
	// Week 1, Session 1 Lessons
	{
		lessonId: 'wf-w1-s1-l1-chirho',
		sessionId: 'wf-w1-s1-chirho',
		title: 'Welcome to Web Development',
		lessonType: 'video',
		content: 'Introduction to the exciting world of web development and what you will learn.',
		orderIndex: 1,
		estimatedDurationMinutes: 10,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w1-s1-l2-chirho',
		sessionId: 'wf-w1-s1-chirho',
		title: 'Understanding HTTP',
		lessonType: 'reading',
		content: `# Understanding HTTP

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

Just as HTTP enables communication between computers, prayer enables communication between us and God. "Call unto me, and I will answer thee" (Jeremiah 33:3).`,
		orderIndex: 2,
		estimatedDurationMinutes: 15,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w1-s1-l3-chirho',
		sessionId: 'wf-w1-s1-chirho',
		title: 'Quiz: Internet Basics',
		lessonType: 'quest',
		content: 'Test your understanding of how the internet works.',
		orderIndex: 3,
		estimatedDurationMinutes: 10,
		isRequired: true,
		isActive: true
	},
	// Week 1, Session 2 Lessons
	{
		lessonId: 'wf-w1-s2-l1-chirho',
		sessionId: 'wf-w1-s2-chirho',
		title: 'Installing VS Code',
		lessonType: 'video',
		content: 'Learn how to download and install Visual Studio Code.',
		orderIndex: 1,
		estimatedDurationMinutes: 8,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w1-s2-l2-chirho',
		sessionId: 'wf-w1-s2-chirho',
		title: 'Essential Extensions',
		lessonType: 'reading',
		content: `# Essential VS Code Extensions

Enhance your coding experience with these helpful extensions.

## Recommended Extensions

1. **Live Server** - Launch a local development server
2. **Prettier** - Automatic code formatting
3. **HTML CSS Support** - Enhanced HTML/CSS intellisense
4. **Auto Rename Tag** - Automatically rename paired HTML tags

## How to Install

1. Open VS Code
2. Click the Extensions icon (or press Ctrl+Shift+X)
3. Search for the extension name
4. Click Install`,
		orderIndex: 2,
		estimatedDurationMinutes: 10,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w1-s2-l3-chirho',
		sessionId: 'wf-w1-s2-chirho',
		title: 'Practice: Set Up Your Workspace',
		lessonType: 'payload',
		content: 'Hands-on exercise to configure your development environment.',
		orderIndex: 3,
		estimatedDurationMinutes: 15,
		isRequired: true,
		isActive: true
	},
	// Week 1, Session 3 Lessons
	{
		lessonId: 'wf-w1-s3-l1-chirho',
		sessionId: 'wf-w1-s3-chirho',
		title: 'HTML Document Structure',
		lessonType: 'video',
		content: 'Learn the basic structure of every HTML document.',
		orderIndex: 1,
		estimatedDurationMinutes: 12,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w1-s3-l2-chirho',
		sessionId: 'wf-w1-s3-chirho',
		title: 'Create Your First Page',
		lessonType: 'payload',
		content: 'Build your very first HTML webpage from scratch.',
		orderIndex: 2,
		estimatedDurationMinutes: 20,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w1-s3-l3-chirho',
		sessionId: 'wf-w1-s3-chirho',
		title: 'Week 1 Challenge',
		lessonType: 'quest',
		content: 'Complete the Week 1 challenge to earn bonus Quest Coins!',
		orderIndex: 3,
		estimatedDurationMinutes: 15,
		isRequired: false,
		isActive: true
	},
	// Week 2, Session 1 Lessons
	{
		lessonId: 'wf-w2-s1-l1-chirho',
		sessionId: 'wf-w2-s1-chirho',
		title: 'The DOCTYPE Declaration',
		lessonType: 'video',
		content: 'Understanding the DOCTYPE and why it matters.',
		orderIndex: 1,
		estimatedDurationMinutes: 8,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w2-s1-l2-chirho',
		sessionId: 'wf-w2-s1-chirho',
		title: 'Head vs Body',
		lessonType: 'reading',
		content: `# Head vs Body in HTML

Every HTML document has two main sections: the head and the body.

## The Head Section

The \`<head>\` element contains metadata about the document:
- Title (shown in browser tab)
- Character encoding
- CSS links
- Meta descriptions for SEO

## The Body Section

The \`<body>\` element contains all visible content:
- Text and headings
- Images and videos
- Links and buttons
- Everything users see and interact with

## Biblical Connection

Just as our body is the temple of the Holy Spirit (1 Corinthians 6:19), the body of our HTML document is where the visible work happens.`,
		orderIndex: 2,
		estimatedDurationMinutes: 10,
		isRequired: true,
		isActive: true
	},
	{
		lessonId: 'wf-w2-s1-l3-chirho',
		sessionId: 'wf-w2-s1-chirho',
		title: 'Practice: Document Structure',
		lessonType: 'payload',
		content: 'Build a properly structured HTML document.',
		orderIndex: 3,
		estimatedDurationMinutes: 15,
		isRequired: true,
		isActive: true
	}
];

const WEB_FUNDAMENTALS_VIDEOS_CHIRHO = [
	{
		videoId: 'wf-vid-1-chirho',
		lessonId: 'wf-w1-s1-l1-chirho',
		youtubeVideoId: 'dQw4w9WgXcQ', // Placeholder - replace with actual video
		youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
		isUnlisted: true,
		title: 'Welcome to Web Development',
		description: 'An introduction to web development and the exciting journey ahead.',
		durationSeconds: 600,
		thumbnailUrl: null,
		chaptersJson: JSON.stringify([
			{ time: 0, title: 'Introduction' },
			{ time: 60, title: 'What is Web Development?' },
			{ time: 180, title: 'Course Overview' },
			{ time: 360, title: 'What You Will Build' },
			{ time: 480, title: 'Getting Started' }
		]),
		transcript: null
	},
	{
		videoId: 'wf-vid-2-chirho',
		lessonId: 'wf-w1-s2-l1-chirho',
		youtubeVideoId: 'ITxcbrfEcIY', // Placeholder - replace with actual video
		youtubeUrl: 'https://www.youtube.com/watch?v=ITxcbrfEcIY',
		isUnlisted: true,
		title: 'Installing VS Code',
		description: 'Step-by-step guide to installing Visual Studio Code.',
		durationSeconds: 480,
		thumbnailUrl: null,
		chaptersJson: JSON.stringify([
			{ time: 0, title: 'Introduction' },
			{ time: 30, title: 'Downloading VS Code' },
			{ time: 120, title: 'Installation Steps' },
			{ time: 300, title: 'First Launch' }
		]),
		transcript: null
	},
	{
		videoId: 'wf-vid-3-chirho',
		lessonId: 'wf-w1-s3-l1-chirho',
		youtubeVideoId: 'UB1O30fR-EE', // Placeholder - replace with actual video
		youtubeUrl: 'https://www.youtube.com/watch?v=UB1O30fR-EE',
		isUnlisted: true,
		title: 'HTML Document Structure',
		description: 'Understanding the anatomy of an HTML document.',
		durationSeconds: 720,
		thumbnailUrl: null,
		chaptersJson: JSON.stringify([
			{ time: 0, title: 'Overview' },
			{ time: 60, title: 'DOCTYPE Declaration' },
			{ time: 180, title: 'HTML Element' },
			{ time: 300, title: 'Head Section' },
			{ time: 450, title: 'Body Section' },
			{ time: 600, title: 'Putting It Together' }
		]),
		transcript: null
	},
	{
		videoId: 'wf-vid-4-chirho',
		lessonId: 'wf-w2-s1-l1-chirho',
		youtubeVideoId: 'salY_Sm6mv4', // Placeholder - replace with actual video
		youtubeUrl: 'https://www.youtube.com/watch?v=salY_Sm6mv4',
		isUnlisted: true,
		title: 'The DOCTYPE Declaration',
		description: 'Why DOCTYPE matters and how to use it correctly.',
		durationSeconds: 480,
		thumbnailUrl: null,
		chaptersJson: null,
		transcript: null
	}
];

const WEB_FUNDAMENTALS_QUESTS_CHIRHO = [
	{
		questId: 'wf-quest-1-chirho',
		lessonId: 'wf-w1-s1-l3-chirho',
		title: 'Hello World HTML',
		description: 'Create your first HTML page with a greeting to the world!',
		instructions:
			'Write an HTML page that displays "Hello, World!" inside an h1 heading. This is your first step in web development!',
		starterCode: '<!DOCTYPE html>\n<html>\n<head>\n    <title>My First Page</title>\n</head>\n<body>\n    <!-- Write your h1 element here -->\n</body>\n</html>',
		solutionCode:
			'<!DOCTYPE html>\n<html>\n<head>\n    <title>My First Page</title>\n</head>\n<body>\n    <h1>Hello, World!</h1>\n</body>\n</html>',
		difficultyLevel: 'beginner',
		questType: 'html',
		headerVerse: 'Call unto me, and I will answer thee - Jeremiah 33:3',
		coinReward: 10,
		bonusCoinNoSolutionView: 5,
		orderIndex: 1,
		isActive: true
	},
	{
		questId: 'wf-quest-2-chirho',
		lessonId: 'wf-w1-s3-l3-chirho',
		title: 'Personal Introduction Page',
		description: 'Create a personal introduction page using HTML elements.',
		instructions:
			'Create an HTML page that introduces yourself. Include your name in an h1 heading, a paragraph about yourself, and at least one link to a website you like.',
		starterCode:
			'<!DOCTYPE html>\n<html>\n<head>\n    <title>About Me</title>\n</head>\n<body>\n    <!-- Add an h1 with your name -->\n    <!-- Add a paragraph about yourself -->\n    <!-- Add a link to a website -->\n</body>\n</html>',
		solutionCode:
			'<!DOCTYPE html>\n<html>\n<head>\n    <title>About Me</title>\n</head>\n<body>\n    <h1>Your Name</h1>\n    <p>I am learning to code at Sonshine Christian Code Academy!</p>\n    <a href="https://example.com">My favorite website</a>\n</body>\n</html>',
		difficultyLevel: 'beginner',
		questType: 'html',
		headerVerse: 'In the beginning God created - Genesis 1:1',
		coinReward: 15,
		bonusCoinNoSolutionView: 5,
		orderIndex: 2,
		isActive: true
	}
];

// ============================================================================
// SEED FUNCTION
// ============================================================================

export async function seedCoursesChirho(db: DbChirho) {
	console.log('🌱 Starting course seeding...');

	try {
		// Seed Web Fundamentals Course
		console.log('📚 Seeding Web Fundamentals course...');
		await db.insert(courseChirho).values(WEB_FUNDAMENTALS_COURSE_CHIRHO).onConflictDoNothing();

		// Seed Modules
		console.log('📦 Seeding modules...');
		for (const module of WEB_FUNDAMENTALS_MODULES_CHIRHO) {
			await db.insert(courseModuleChirho).values(module).onConflictDoNothing();
		}

		// Seed Sessions
		console.log('📅 Seeding sessions...');
		for (const session of WEB_FUNDAMENTALS_SESSIONS_CHIRHO) {
			await db.insert(courseSessionChirho).values(session).onConflictDoNothing();
		}

		// Seed Lessons
		console.log('📖 Seeding lessons...');
		for (const lesson of WEB_FUNDAMENTALS_LESSONS_CHIRHO) {
			await db.insert(lessonChirho).values(lesson).onConflictDoNothing();
		}

		// Seed Video Lessons
		console.log('🎬 Seeding video lessons...');
		for (const video of WEB_FUNDAMENTALS_VIDEOS_CHIRHO) {
			await db.insert(videoLessonChirho).values(video).onConflictDoNothing();
		}

		// Seed Quests
		console.log('⚔️ Seeding quests...');
		for (const quest of WEB_FUNDAMENTALS_QUESTS_CHIRHO) {
			await db.insert(questChirho).values(quest).onConflictDoNothing();
		}

		console.log('✅ Course seeding complete!');
		return { success: true };
	} catch (error) {
		console.error('❌ Error seeding courses:', error);
		throw error;
	}
}

// Export seed data for use in API routes
export {
	WEB_FUNDAMENTALS_COURSE_CHIRHO,
	WEB_FUNDAMENTALS_MODULES_CHIRHO,
	WEB_FUNDAMENTALS_SESSIONS_CHIRHO,
	WEB_FUNDAMENTALS_LESSONS_CHIRHO,
	WEB_FUNDAMENTALS_VIDEOS_CHIRHO,
	WEB_FUNDAMENTALS_QUESTS_CHIRHO
};
