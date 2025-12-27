// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { PageServerLoad, Actions } from './$types';
import { scholarshipChirho, userChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho) {
		redirect(302, '/auth-chirho/login?redirect=/scholarship-chirho');
	}

	if (!locals.dbChirho) {
		return {
			existingApplicationChirho: null,
			alreadyHasScholarshipChirho: false
		};
	}

	// Check if user already has a scholarship or application
	const existingScholarshipChirho = await locals.dbChirho
		.select()
		.from(scholarshipChirho)
		.where(eq(scholarshipChirho.userId, locals.userChirho.userId))
		.limit(1);

	const alreadyHasScholarshipChirho = locals.userChirho.paymentStatus === 'scholarship';

	return {
		existingApplicationChirho: existingScholarshipChirho[0] || null,
		alreadyHasScholarshipChirho
	};
};

export const actions: Actions = {
	apply: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'You must be logged in to apply for a scholarship' });
		}

		// Check if already has scholarship
		if (locals.userChirho.paymentStatus === 'scholarship') {
			return fail(400, { error: 'You already have an active scholarship' });
		}

		// Check for existing application
		const existingChirho = await locals.dbChirho
			.select()
			.from(scholarshipChirho)
			.where(eq(scholarshipChirho.userId, locals.userChirho.userId))
			.limit(1);

		if (existingChirho.length > 0) {
			return fail(400, { error: 'You already have a scholarship application on file' });
		}

		const formDataChirho = await request.formData();
		const reasonChirho = formDataChirho.get('reason')?.toString().trim();

		if (!reasonChirho || reasonChirho.length < 20) {
			return fail(400, { error: 'Please provide a brief explanation (at least 20 characters)' });
		}

		if (reasonChirho.length > 2000) {
			return fail(400, { error: 'Explanation is too long (maximum 2000 characters)' });
		}

		// Create scholarship application
		const scholarshipIdChirho = nanoid();
		await locals.dbChirho.insert(scholarshipChirho).values({
			scholarshipId: scholarshipIdChirho,
			userId: locals.userChirho.userId,
			reason: reasonChirho,
			status: 'pending'
		});

		return { success: true };
	}
};
