// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { PageServerLoad, Actions } from './$types';
import { blogPostChirho, userChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	const postsChirho = await locals.dbChirho
		.select({
			postId: blogPostChirho.postId,
			title: blogPostChirho.title,
			slug: blogPostChirho.slug,
			category: blogPostChirho.category,
			status: blogPostChirho.status,
			viewCount: blogPostChirho.viewCount,
			publishedAt: blogPostChirho.publishedAt,
			createdAt: blogPostChirho.createdAt,
			authorName: userChirho.displayName,
			authorUsername: userChirho.username
		})
		.from(blogPostChirho)
		.leftJoin(userChirho, eq(blogPostChirho.authorId, userChirho.userId))
		.orderBy(desc(blogPostChirho.createdAt));

	return {
		postsChirho
	};
};

export const actions: Actions = {
	create: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formData = await request.formData();
		const title = formData.get('title')?.toString().trim();
		const slug = formData.get('slug')?.toString().trim().toLowerCase().replace(/\s+/g, '-');
		const excerpt = formData.get('excerpt')?.toString().trim();
		const content = formData.get('content')?.toString().trim();
		const category = formData.get('category')?.toString() || 'news';
		const scriptureReference = formData.get('scriptureReference')?.toString().trim() || null;
		const status = formData.get('status')?.toString() as 'draft' | 'published';

		if (!title || !slug || !content) {
			return fail(400, { error: 'Title, slug, and content are required' });
		}

		const postId = nanoid();
		await locals.dbChirho.insert(blogPostChirho).values({
			postId,
			authorId: locals.userChirho.userId,
			title,
			slug,
			excerpt,
			content,
			category,
			scriptureReference,
			status: status || 'draft',
			publishedAt: status === 'published' ? new Date() : null
		});

		return { success: true };
	},

	toggleStatus: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formData = await request.formData();
		const postId = formData.get('postId')?.toString();

		if (!postId) {
			return fail(400, { error: 'Post ID is required' });
		}

		const existing = await locals.dbChirho
			.select()
			.from(blogPostChirho)
			.where(eq(blogPostChirho.postId, postId))
			.limit(1);

		if (existing.length === 0) {
			return fail(404, { error: 'Post not found' });
		}

		const newStatus = existing[0].status === 'published' ? 'draft' : 'published';
		await locals.dbChirho
			.update(blogPostChirho)
			.set({
				status: newStatus,
				publishedAt: newStatus === 'published' ? new Date() : null
			})
			.where(eq(blogPostChirho.postId, postId));

		return { success: true };
	},

	delete: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formData = await request.formData();
		const postId = formData.get('postId')?.toString();

		if (!postId) {
			return fail(400, { error: 'Post ID is required' });
		}

		await locals.dbChirho.delete(blogPostChirho).where(eq(blogPostChirho.postId, postId));

		return { success: true };
	},

	seedBlog: async ({ locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const SAMPLE_POSTS = [
			{
				title: 'Welcome to Sonshine Christian Code Academy',
				slug: 'welcome-to-sonshine',
				excerpt: 'We are excited to announce the launch of Sonshine Christian Code Academy!',
				content:
					'We are thrilled to welcome you to Sonshine Christian Code Academy. Our mission is to equip the next generation of Christian developers with the skills and faith foundation they need to serve God through technology.',
				category: 'announcement',
				scriptureReference: 'For I know the plans I have for you — Jeremiah 29:11'
			},
			{
				title: 'Why Learn to Code as a Christian?',
				slug: 'why-learn-to-code',
				excerpt: 'Discover how coding skills can be used to serve God.',
				content:
					'In today\'s digital world, coding is more than just a career skill—it\'s a way to make a meaningful impact for the Kingdom of God. From building church websites to creating Bible apps, technology can spread the Gospel further than ever before.',
				category: 'devotional',
				scriptureReference: 'Whatever you do, work at it with all your heart — Colossians 3:23'
			},
			{
				title: 'Getting Started with HTML: Your First Webpage',
				slug: 'getting-started-html',
				excerpt: 'A beginner-friendly guide to creating your first HTML webpage.',
				content:
					'HTML is the foundation of every website. In this tutorial, we\'ll walk through creating your very first webpage. Just as God created the world from nothing, you\'ll create something new from just a few lines of code.',
				category: 'tutorial',
				scriptureReference: 'In the beginning God created — Genesis 1:1'
			},
			{
				title: 'Quest Coins: Our New Reward System',
				slug: 'quest-coins-launch',
				excerpt: 'Complete quests to earn coins and track your progress!',
				content:
					'We\'ve launched Quest Coins, our new reward system. Every quest you complete earns you coins, encouraging you to grow in your coding skills. Well done, good and faithful servant!',
				category: 'update',
				scriptureReference: 'Well done, good and faithful servant — Matthew 25:21'
			},
			{
				title: 'The Parables in Code: A New Quest Series',
				slug: 'parables-in-code',
				excerpt: 'Learn programming through the parables of Jesus.',
				content:
					'Jesus taught in parables for a reason—stories make lessons memorable. In our new quest series, we\'re teaching programming concepts through the parables. Learn loops through the Sower, search algorithms through the Lost Sheep, and more!',
				category: 'news',
				scriptureReference: 'He taught them many things by parables — Mark 4:2'
			}
		];

		for (const post of SAMPLE_POSTS) {
			const postId = nanoid();
			const publishedAt = new Date(Date.now() - Math.random() * 30 * 24 * 60 * 60 * 1000);

			await locals.dbChirho.insert(blogPostChirho).values({
				postId,
				authorId: locals.userChirho.userId,
				title: post.title,
				slug: post.slug,
				excerpt: post.excerpt,
				content: post.content,
				category: post.category,
				scriptureReference: post.scriptureReference,
				status: 'published',
				publishedAt,
				viewCount: Math.floor(Math.random() * 200) + 50
			});
		}

		return { success: true, message: 'Seeded 5 sample blog posts' };
	}
};
