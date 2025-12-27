// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';
import { blogPostChirho, userChirho } from '$lib/server/db/schema';
import { eq, desc, and, ne } from 'drizzle-orm';

export const load: PageServerLoad = async ({ params, locals }) => {
	const slugChirho = params.slug_chirho;

	// Sample posts for demo when database is empty
	const samplePostsChirho = [
		{
			postId: '1',
			title: 'Welcome to Sonshine Christian Code Academy',
			slug: 'welcome-to-sonshine',
			excerpt: 'We are excited to announce the launch of Sonshine Christian Code Academy!',
			content: `# Welcome to Sonshine Christian Code Academy!

We are thrilled to announce the official launch of **Sonshine Christian Code Academy** - a Christ-centered platform for learning to code.

## Our Mission

At Sonshine, we believe that technology is a gift from God that can be used to serve others and advance His kingdom. Our mission is to equip the next generation with both **technical skills** and **spiritual foundation**.

> "Whatever you do, work at it with all your heart, as working for the Lord, not for human masters." — Colossians 3:23

## What Makes Us Different

1. **Faith-Integrated Learning** - Every lesson connects programming concepts to Biblical principles
2. **Quest-Based Challenges** - Earn Quest Coins as you complete coding challenges
3. **Community Focus** - Learn alongside other Christian students
4. **Real Projects** - Build actual applications you can share with the world

## Getting Started

To begin your journey:

1. Create your free account
2. Complete the welcome quest
3. Join our Discord community
4. Start learning at your own pace

We're so excited to have you join us on this adventure!

*— The Sonshine Team*`,
			category: 'announcement',
			publishedAt: new Date('2025-01-15'),
			scriptureReference: 'For I know the plans I have for you — Jeremiah 29:11',
			authorName: 'Sonshine Team',
			authorUsername: 'sonshine',
			viewCount: 150
		},
		{
			postId: '2',
			title: 'Why Learn to Code as a Christian?',
			slug: 'why-learn-to-code',
			excerpt: 'Discover how coding skills can be used to serve God and advance His kingdom.',
			content: `# Why Learn to Code as a Christian?

In today's digital world, coding is more than just a career skill—it's a tool for Kingdom work.

## Technology as a Gift

God has given humanity the gift of creativity and innovation. From the first tools crafted by early humans to the sophisticated software that powers our world today, technology reflects our God-given ability to create and solve problems.

> "In the beginning God created..." — Genesis 1:1

Just as God is the ultimate Creator, we are made in His image with the capacity to create as well.

## Practical Applications for Ministry

- **Bible Study Tools** - Build apps that help people study Scripture
- **Church Management** - Create systems for more efficient church operations
- **Evangelism Platforms** - Develop websites that share the Gospel
- **Community Connection** - Build tools that help believers connect

## The Call to Excellence

As Christians, we are called to do everything with excellence. Learning to code well is an act of stewardship—using our talents to their fullest potential for God's glory.

*— The Sonshine Team*`,
			category: 'devotional',
			publishedAt: new Date('2025-01-10'),
			scriptureReference: 'Whatever you do, work at it with all your heart — Colossians 3:23',
			authorName: 'Sonshine Team',
			authorUsername: 'sonshine',
			viewCount: 98
		},
		{
			postId: '3',
			title: 'Getting Started with HTML: Your First Webpage',
			slug: 'getting-started-html',
			excerpt: 'A beginner-friendly guide to creating your first HTML webpage.',
			content: `# Getting Started with HTML: Your First Webpage

Welcome to your first coding tutorial! Today we'll create a simple webpage using HTML.

## What is HTML?

HTML (HyperText Markup Language) is the foundation of every webpage. It defines the structure and content using a system of "tags."

## Your First HTML Document

\`\`\`html
<!DOCTYPE html>
<html>
<head>
    <title>My First Page</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <p>This is my first webpage.</p>
</body>
</html>
\`\`\`

## Try It Yourself

1. Open a text editor
2. Copy the HTML code above
3. Save as \`index.html\`
4. Open in your browser

Congratulations! You've created your first webpage!

*— The Sonshine Team*`,
			category: 'tutorial',
			publishedAt: new Date('2025-01-08'),
			scriptureReference: 'In the beginning God created — Genesis 1:1',
			authorName: 'Sonshine Team',
			authorUsername: 'sonshine',
			viewCount: 234
		}
	];

	if (!locals.dbChirho) {
		const samplePostChirho = samplePostsChirho.find((p) => p.slug === slugChirho);
		if (!samplePostChirho) {
			error(404, 'Post not found');
		}
		return {
			postChirho: samplePostChirho,
			relatedPostsChirho: samplePostsChirho.filter((p) => p.slug !== slugChirho).slice(0, 3)
		};
	}

	const dbChirho = locals.dbChirho;

	const postsChirho = await dbChirho
		.select({
			postId: blogPostChirho.postId,
			title: blogPostChirho.title,
			slug: blogPostChirho.slug,
			excerpt: blogPostChirho.excerpt,
			content: blogPostChirho.content,
			featuredImageUrl: blogPostChirho.featuredImageUrl,
			category: blogPostChirho.category,
			tags: blogPostChirho.tags,
			publishedAt: blogPostChirho.publishedAt,
			scriptureReference: blogPostChirho.scriptureReference,
			metaDescription: blogPostChirho.metaDescription,
			viewCount: blogPostChirho.viewCount,
			authorId: blogPostChirho.authorId,
			authorName: userChirho.displayName,
			authorUsername: userChirho.username
		})
		.from(blogPostChirho)
		.leftJoin(userChirho, eq(blogPostChirho.authorId, userChirho.userId))
		.where(and(eq(blogPostChirho.slug, slugChirho), eq(blogPostChirho.status, 'published')))
		.limit(1);

	if (postsChirho.length === 0) {
		const samplePostChirho = samplePostsChirho.find((p) => p.slug === slugChirho);
		if (!samplePostChirho) {
			error(404, 'Post not found');
		}
		return {
			postChirho: samplePostChirho,
			relatedPostsChirho: samplePostsChirho.filter((p) => p.slug !== slugChirho).slice(0, 3)
		};
	}

	const postChirho = postsChirho[0];

	// Increment view count
	await dbChirho
		.update(blogPostChirho)
		.set({ viewCount: (postChirho.viewCount || 0) + 1 })
		.where(eq(blogPostChirho.postId, postChirho.postId));

	// Fetch related posts
	const relatedPostsChirho = await dbChirho
		.select({
			postId: blogPostChirho.postId,
			title: blogPostChirho.title,
			slug: blogPostChirho.slug,
			excerpt: blogPostChirho.excerpt,
			category: blogPostChirho.category,
			publishedAt: blogPostChirho.publishedAt
		})
		.from(blogPostChirho)
		.where(
			and(
				eq(blogPostChirho.status, 'published'),
				eq(blogPostChirho.category, postChirho.category || 'news'),
				ne(blogPostChirho.postId, postChirho.postId)
			)
		)
		.orderBy(desc(blogPostChirho.publishedAt))
		.limit(3);

	return {
		postChirho,
		relatedPostsChirho
	};
};
