// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { PageServerLoad, Actions } from './$types';
import {
	cohortChirho,
	organizationChirho,
	courseChirho,
	userChirho
} from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	// Get all cohorts with organization names
	const cohortsChirho = await locals.dbChirho
		.select({
			cohortId: cohortChirho.cohortId,
			organizationId: cohortChirho.organizationId,
			name: cohortChirho.name,
			description: cohortChirho.description,
			startDate: cohortChirho.startDate,
			endDate: cohortChirho.endDate,
			courseId: cohortChirho.courseId,
			maxStudents: cohortChirho.maxStudents,
			currentEnrollment: cohortChirho.currentEnrollment,
			status: cohortChirho.status,
			isAcceptingEnrollment: cohortChirho.isAcceptingEnrollment,
			createdAt: cohortChirho.createdAt,
			organizationName: organizationChirho.name
		})
		.from(cohortChirho)
		.leftJoin(organizationChirho, eq(cohortChirho.organizationId, organizationChirho.organizationId))
		.orderBy(desc(cohortChirho.startDate));

	// Get organizations for the dropdown
	const organizationsChirho = await locals.dbChirho
		.select({
			organizationId: organizationChirho.organizationId,
			name: organizationChirho.name
		})
		.from(organizationChirho)
		.where(eq(organizationChirho.isActive, true));

	// Get courses for the dropdown
	const coursesChirho = await locals.dbChirho
		.select({
			courseId: courseChirho.courseId,
			title: courseChirho.title
		})
		.from(courseChirho)
		.where(eq(courseChirho.isActive, true));

	return {
		cohortsChirho,
		organizationsChirho,
		coursesChirho
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

		const formDataChirho = await request.formData();
		const organizationIdChirho = formDataChirho.get('organizationId')?.toString();
		const nameChirho = formDataChirho.get('name')?.toString().trim();
		const descriptionChirho = formDataChirho.get('description')?.toString().trim();
		const courseIdChirho = formDataChirho.get('courseId')?.toString();
		const startDateChirho = formDataChirho.get('startDate')?.toString();
		const endDateChirho = formDataChirho.get('endDate')?.toString();
		const maxStudentsChirho = parseInt(formDataChirho.get('maxStudents')?.toString() || '30');

		if (!organizationIdChirho || !nameChirho || !startDateChirho) {
			return fail(400, { error: 'Organization, name, and start date are required' });
		}

		const cohortIdChirho = nanoid();
		await locals.dbChirho.insert(cohortChirho).values({
			cohortId: cohortIdChirho,
			organizationId: organizationIdChirho,
			name: nameChirho,
			description: descriptionChirho || null,
			courseId: courseIdChirho || null,
			startDate: new Date(startDateChirho),
			endDate: endDateChirho ? new Date(endDateChirho) : null,
			maxStudents: maxStudentsChirho,
			status: 'upcoming',
			isAcceptingEnrollment: true
		});

		return { success: true };
	},

	updateStatus: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const cohortIdChirho = formDataChirho.get('cohortId')?.toString();
		const statusChirho = formDataChirho.get('status')?.toString() as
			| 'upcoming'
			| 'active'
			| 'completed'
			| 'cancelled';

		if (!cohortIdChirho || !statusChirho) {
			return fail(400, { error: 'Cohort ID and status are required' });
		}

		await locals.dbChirho
			.update(cohortChirho)
			.set({
				status: statusChirho,
				updatedAt: new Date()
			})
			.where(eq(cohortChirho.cohortId, cohortIdChirho));

		return { success: true };
	},

	toggleEnrollment: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const cohortIdChirho = formDataChirho.get('cohortId')?.toString();

		if (!cohortIdChirho) {
			return fail(400, { error: 'Cohort ID is required' });
		}

		const existingChirho = await locals.dbChirho
			.select()
			.from(cohortChirho)
			.where(eq(cohortChirho.cohortId, cohortIdChirho))
			.limit(1);

		if (existingChirho.length === 0) {
			return fail(404, { error: 'Cohort not found' });
		}

		await locals.dbChirho
			.update(cohortChirho)
			.set({
				isAcceptingEnrollment: !existingChirho[0].isAcceptingEnrollment,
				updatedAt: new Date()
			})
			.where(eq(cohortChirho.cohortId, cohortIdChirho));

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
		const cohortIdChirho = formDataChirho.get('cohortId')?.toString();

		if (!cohortIdChirho) {
			return fail(400, { error: 'Cohort ID is required' });
		}

		await locals.dbChirho
			.delete(cohortChirho)
			.where(eq(cohortChirho.cohortId, cohortIdChirho));

		return { success: true };
	}
};
