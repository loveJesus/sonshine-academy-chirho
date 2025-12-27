// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import type { PageServerLoad, Actions } from './$types';
import { scholarshipChirho, userChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	// Get all scholarships with user info
	const scholarshipsChirho = await locals.dbChirho
		.select({
			scholarshipId: scholarshipChirho.scholarshipId,
			userId: scholarshipChirho.userId,
			reason: scholarshipChirho.reason,
			status: scholarshipChirho.status,
			approvedByUserId: scholarshipChirho.approvedByUserId,
			createdAt: scholarshipChirho.createdAt,
			username: userChirho.username,
			displayName: userChirho.displayName,
			email: userChirho.email
		})
		.from(scholarshipChirho)
		.leftJoin(userChirho, eq(scholarshipChirho.userId, userChirho.userId))
		.orderBy(desc(scholarshipChirho.createdAt));

	return {
		scholarshipsChirho
	};
};

export const actions: Actions = {
	approve: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const scholarshipIdChirho = formDataChirho.get('scholarshipId')?.toString();

		if (!scholarshipIdChirho) {
			return fail(400, { error: 'Scholarship ID is required' });
		}

		// Get the scholarship
		const existingChirho = await locals.dbChirho
			.select()
			.from(scholarshipChirho)
			.where(eq(scholarshipChirho.scholarshipId, scholarshipIdChirho))
			.limit(1);

		if (existingChirho.length === 0) {
			return fail(404, { error: 'Scholarship not found' });
		}

		const scholarshipDataChirho = existingChirho[0];

		// Update scholarship status
		await locals.dbChirho
			.update(scholarshipChirho)
			.set({
				status: 'active',
				approvedByUserId: locals.userChirho.userId
			})
			.where(eq(scholarshipChirho.scholarshipId, scholarshipIdChirho));

		// Update user's payment status
		await locals.dbChirho
			.update(userChirho)
			.set({
				paymentStatus: 'scholarship',
				updatedAt: new Date()
			})
			.where(eq(userChirho.userId, scholarshipDataChirho.userId));

		return { success: true };
	},

	reject: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const scholarshipIdChirho = formDataChirho.get('scholarshipId')?.toString();

		if (!scholarshipIdChirho) {
			return fail(400, { error: 'Scholarship ID is required' });
		}

		// Update scholarship status to revoked
		await locals.dbChirho
			.update(scholarshipChirho)
			.set({
				status: 'revoked',
				approvedByUserId: locals.userChirho.userId
			})
			.where(eq(scholarshipChirho.scholarshipId, scholarshipIdChirho));

		return { success: true };
	},

	revoke: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const scholarshipIdChirho = formDataChirho.get('scholarshipId')?.toString();

		if (!scholarshipIdChirho) {
			return fail(400, { error: 'Scholarship ID is required' });
		}

		// Get the scholarship to find the user
		const existingChirho = await locals.dbChirho
			.select()
			.from(scholarshipChirho)
			.where(eq(scholarshipChirho.scholarshipId, scholarshipIdChirho))
			.limit(1);

		if (existingChirho.length === 0) {
			return fail(404, { error: 'Scholarship not found' });
		}

		const scholarshipDataChirho = existingChirho[0];

		// Update scholarship status
		await locals.dbChirho
			.update(scholarshipChirho)
			.set({
				status: 'revoked'
			})
			.where(eq(scholarshipChirho.scholarshipId, scholarshipIdChirho));

		// Revert user's payment status
		await locals.dbChirho
			.update(userChirho)
			.set({
				paymentStatus: 'free',
				updatedAt: new Date()
			})
			.where(eq(userChirho.userId, scholarshipDataChirho.userId));

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
		const scholarshipIdChirho = formDataChirho.get('scholarshipId')?.toString();

		if (!scholarshipIdChirho) {
			return fail(400, { error: 'Scholarship ID is required' });
		}

		await locals.dbChirho
			.delete(scholarshipChirho)
			.where(eq(scholarshipChirho.scholarshipId, scholarshipIdChirho));

		return { success: true };
	}
};
