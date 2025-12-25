// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { PageServerLoad, Actions } from './$types';
import { announcementChirho, organizationChirho, cohortChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	// Get all announcements
	const announcementsChirho = await locals.dbChirho
		.select()
		.from(announcementChirho)
		.orderBy(desc(announcementChirho.createdAt));

	// Get organizations for the dropdown
	const organizationsChirho = await locals.dbChirho
		.select({
			organizationId: organizationChirho.organizationId,
			name: organizationChirho.name
		})
		.from(organizationChirho)
		.where(eq(organizationChirho.isActive, true));

	// Get cohorts for the dropdown
	const cohortsChirho = await locals.dbChirho
		.select({
			cohortId: cohortChirho.cohortId,
			name: cohortChirho.name,
			organizationId: cohortChirho.organizationId
		})
		.from(cohortChirho);

	return {
		announcementsChirho,
		organizationsChirho,
		cohortsChirho
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
		const content = formData.get('content')?.toString().trim();
		const scope = formData.get('scope')?.toString() as 'global' | 'organization' | 'cohort';
		const organizationId = formData.get('organizationId')?.toString() || null;
		const cohortId = formData.get('cohortId')?.toString() || null;

		if (!title || !content) {
			return fail(400, { error: 'Title and content are required' });
		}

		const announcementId = nanoid();
		await locals.dbChirho.insert(announcementChirho).values({
			announcementId,
			title,
			content,
			scope: scope || 'global',
			organizationId: scope === 'organization' ? organizationId : null,
			cohortId: scope === 'cohort' ? cohortId : null,
			authorId: locals.userChirho.userId,
			isActive: true
		});

		return { success: true };
	},

	toggle: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formData = await request.formData();
		const announcementId = formData.get('announcementId')?.toString();

		if (!announcementId) {
			return fail(400, { error: 'Announcement ID is required' });
		}

		// Get current state
		const existing = await locals.dbChirho
			.select()
			.from(announcementChirho)
			.where(eq(announcementChirho.announcementId, announcementId))
			.limit(1);

		if (existing.length === 0) {
			return fail(404, { error: 'Announcement not found' });
		}

		await locals.dbChirho
			.update(announcementChirho)
			.set({ isActive: !existing[0].isActive })
			.where(eq(announcementChirho.announcementId, announcementId));

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
		const announcementId = formData.get('announcementId')?.toString();

		if (!announcementId) {
			return fail(400, { error: 'Announcement ID is required' });
		}

		await locals.dbChirho
			.delete(announcementChirho)
			.where(eq(announcementChirho.announcementId, announcementId));

		return { success: true };
	}
};
