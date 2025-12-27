// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import type { PageServerLoad, Actions } from './$types';
import { feedbackChirho, userChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals, url }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	// Get filter from URL
	const statusFilterChirho = url.searchParams.get('status') || 'all';
	const typeFilterChirho = url.searchParams.get('type') || 'all';

	// Get all feedback with user info
	let queryChirho = locals.dbChirho
		.select({
			feedbackId: feedbackChirho.feedbackId,
			userId: feedbackChirho.userId,
			feedbackType: feedbackChirho.feedbackType,
			feedbackText: feedbackChirho.feedbackText,
			pageUrl: feedbackChirho.pageUrl,
			userAgent: feedbackChirho.userAgent,
			status: feedbackChirho.status,
			adminNotes: feedbackChirho.adminNotes,
			reviewedByUserId: feedbackChirho.reviewedByUserId,
			createdAt: feedbackChirho.createdAt,
			updatedAt: feedbackChirho.updatedAt,
			userName: userChirho.displayName,
			userUsername: userChirho.username,
			userEmail: userChirho.email
		})
		.from(feedbackChirho)
		.leftJoin(userChirho, eq(feedbackChirho.userId, userChirho.userId))
		.orderBy(desc(feedbackChirho.createdAt));

	const allFeedbackChirho = await queryChirho;

	// Apply filters
	let filteredFeedbackChirho = allFeedbackChirho;

	if (statusFilterChirho !== 'all') {
		filteredFeedbackChirho = filteredFeedbackChirho.filter(
			(f) => f.status === statusFilterChirho
		);
	}

	if (typeFilterChirho !== 'all') {
		filteredFeedbackChirho = filteredFeedbackChirho.filter(
			(f) => f.feedbackType === typeFilterChirho
		);
	}

	// Get counts for stats
	const statsChirho = {
		total: allFeedbackChirho.length,
		new: allFeedbackChirho.filter((f) => f.status === 'new').length,
		reviewed: allFeedbackChirho.filter((f) => f.status === 'reviewed').length,
		resolved: allFeedbackChirho.filter((f) => f.status === 'resolved').length,
		archived: allFeedbackChirho.filter((f) => f.status === 'archived').length,
		bugs: allFeedbackChirho.filter((f) => f.feedbackType === 'bug').length,
		suggestions: allFeedbackChirho.filter((f) => f.feedbackType === 'suggestion').length,
		questions: allFeedbackChirho.filter((f) => f.feedbackType === 'question').length,
		praise: allFeedbackChirho.filter((f) => f.feedbackType === 'praise').length
	};

	return {
		feedbackChirho: filteredFeedbackChirho,
		statsChirho,
		filtersChirho: {
			status: statusFilterChirho,
			type: typeFilterChirho
		}
	};
};

export const actions: Actions = {
	updateStatus: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const feedbackIdChirho = formDataChirho.get('feedbackId')?.toString();
		const newStatusChirho = formDataChirho.get('status')?.toString() as
			| 'new'
			| 'reviewed'
			| 'resolved'
			| 'archived';

		if (!feedbackIdChirho || !newStatusChirho) {
			return fail(400, { error: 'Feedback ID and status are required' });
		}

		const validStatusesChirho = ['new', 'reviewed', 'resolved', 'archived'];
		if (!validStatusesChirho.includes(newStatusChirho)) {
			return fail(400, { error: 'Invalid status' });
		}

		await locals.dbChirho
			.update(feedbackChirho)
			.set({
				status: newStatusChirho,
				reviewedByUserId: locals.userChirho.userId,
				updatedAt: new Date()
			})
			.where(eq(feedbackChirho.feedbackId, feedbackIdChirho));

		return { success: true };
	},

	addNote: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const feedbackIdChirho = formDataChirho.get('feedbackId')?.toString();
		const adminNotesChirho = formDataChirho.get('adminNotes')?.toString();

		if (!feedbackIdChirho) {
			return fail(400, { error: 'Feedback ID is required' });
		}

		await locals.dbChirho
			.update(feedbackChirho)
			.set({
				adminNotes: adminNotesChirho || null,
				reviewedByUserId: locals.userChirho.userId,
				updatedAt: new Date()
			})
			.where(eq(feedbackChirho.feedbackId, feedbackIdChirho));

		return { success: true };
	},

	delete: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const feedbackIdChirho = formDataChirho.get('feedbackId')?.toString();

		if (!feedbackIdChirho) {
			return fail(400, { error: 'Feedback ID is required' });
		}

		await locals.dbChirho
			.delete(feedbackChirho)
			.where(eq(feedbackChirho.feedbackId, feedbackIdChirho));

		return { success: true };
	}
};
