// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { Actions } from './$types';
import { fail } from '@sveltejs/kit';
import { feedbackChirho } from '$lib/server/db/schema';

export const actions: Actions = {
	default: async ({ request, locals, platform }) => {
		const formDataChirho = await request.formData();

		const feedbackTypeChirho = formDataChirho.get('feedbackTypeChirho');
		const feedbackTextChirho = formDataChirho.get('feedbackTextChirho');
		const pageUrlChirho = formDataChirho.get('pageUrlChirho');
		const userAgentChirho = formDataChirho.get('userAgentChirho');

		// Validate required fields
		if (!feedbackTypeChirho || typeof feedbackTypeChirho !== 'string') {
			return fail(400, { errorChirho: 'Feedback type is required' });
		}

		if (!feedbackTextChirho || typeof feedbackTextChirho !== 'string' || !feedbackTextChirho.trim()) {
			return fail(400, { errorChirho: 'Feedback text is required' });
		}

		// Validate text length (min 10 chars, max 2000 chars)
		const trimmedTextChirho = feedbackTextChirho.trim();
		if (trimmedTextChirho.length < 10) {
			return fail(400, { errorChirho: 'Feedback must be at least 10 characters long' });
		}
		if (trimmedTextChirho.length > 2000) {
			return fail(400, { errorChirho: 'Feedback must be less than 2000 characters' });
		}

		// Validate feedback type
		const validTypesChirho = ['bug', 'suggestion', 'question', 'praise'];
		if (!validTypesChirho.includes(feedbackTypeChirho)) {
			return fail(400, { errorChirho: 'Invalid feedback type' });
		}

		try {
			const dbChirho = locals.dbChirho;
			if (!dbChirho) {
				console.error('Database not available');
				return fail(500, { errorChirho: 'Database connection error' });
			}

			// Generate a unique ID
			const feedbackIdChirho = crypto.randomUUID();

			// Get user ID if logged in
			const userIdChirho = locals.userChirho?.userId || null;

			await dbChirho.insert(feedbackChirho).values({
				feedbackId: feedbackIdChirho,
				userId: userIdChirho,
				feedbackType: feedbackTypeChirho,
				feedbackText: trimmedTextChirho,
				pageUrl: typeof pageUrlChirho === 'string' ? pageUrlChirho.slice(0, 500) : null,
				userAgent: typeof userAgentChirho === 'string' ? userAgentChirho.slice(0, 500) : null,
				status: 'new'
			});

			return { successChirho: true };
		} catch (errorChirho) {
			console.error('Failed to save feedback:', errorChirho);
			return fail(500, { errorChirho: 'Failed to save feedback. Please try again.' });
		}
	}
};
