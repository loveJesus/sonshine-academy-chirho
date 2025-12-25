// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { blogPostChirho, userChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ params, locals }) => {
	if (!locals.dbChirho) {
		error(500, 'Database not available');
	}

	const { slug_chirho } = params;

	const posts = await locals.dbChirho
		.select({
			postId: blogPostChirho.postId,
			title: blogPostChirho.title,
			slug: blogPostChirho.slug,
			excerpt: blogPostChirho.excerpt,
			content: blogPostChirho.content,
			featuredImageUrl: blogPostChirho.featuredImageUrl,
			category: blogPostChirho.category,
			tags: blogPostChirho.tags,
			status: blogPostChirho.status,
			publishedAt: blogPostChirho.publishedAt,
			scriptureReference: blogPostChirho.scriptureReference,
			viewCount: blogPostChirho.viewCount,
			metaDescription: blogPostChirho.metaDescription,
			authorName: userChirho.displayName,
			authorUsername: userChirho.username
		})
		.from(blogPostChirho)
		.leftJoin(userChirho, eq(blogPostChirho.authorId, userChirho.userId))
		.where(eq(blogPostChirho.slug, slug_chirho))
		.limit(1);

	if (posts.length === 0) {
		error(404, 'Blog post not found');
	}

	const post = posts[0];

	// Only show published posts to non-admins
	if (post.status !== 'published' && locals.userChirho?.role !== 'platform_admin') {
		error(404, 'Blog post not found');
	}

	// Increment view count (non-blocking)
	locals.dbChirho
		.update(blogPostChirho)
		.set({ viewCount: (post.viewCount || 0) + 1 })
		.where(eq(blogPostChirho.postId, post.postId))
		.catch(() => {});

	return {
		postChirho: post
	};
};
