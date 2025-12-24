// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { PageServerLoad } from './$types';
import { blogPostChirho, userChirho } from '$lib/server/db/schema';
import { eq, desc } from 'drizzle-orm';

export const load: PageServerLoad = async ({ locals, url }) => {
	const dbChirho = locals.dbChirho;

	const categoryChirho = url.searchParams.get('category') || '';

	let postsQueryChirho = dbChirho
		.select({
			postId: blogPostChirho.postId,
			title: blogPostChirho.title,
			slug: blogPostChirho.slug,
			excerpt: blogPostChirho.excerpt,
			featuredImageUrl: blogPostChirho.featuredImageUrl,
			category: blogPostChirho.category,
			tags: blogPostChirho.tags,
			publishedAt: blogPostChirho.publishedAt,
			scriptureReference: blogPostChirho.scriptureReference,
			viewCount: blogPostChirho.viewCount,
			authorName: userChirho.displayName,
			authorUsername: userChirho.username
		})
		.from(blogPostChirho)
		.leftJoin(userChirho, eq(blogPostChirho.authorId, userChirho.userId))
		.where(eq(blogPostChirho.status, 'published'))
		.orderBy(desc(blogPostChirho.publishedAt));

	const postsChirho = await postsQueryChirho;

	// Filter by category if specified
	const filteredPostsChirho = categoryChirho
		? postsChirho.filter((p) => p.category === categoryChirho)
		: postsChirho;

	return {
		postsChirho: filteredPostsChirho,
		categoryChirho
	};
};
