// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { error, fail, redirect } from '@sveltejs/kit';
import { nanoid } from 'nanoid';
import { eq } from 'drizzle-orm';
import type { Actions, PageServerLoad } from './$types';
import {
	organizationChirho,
	organizationInviteCodeChirho,
	cohortChirho,
	userChirho
} from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ params, locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	const { slug_chirho } = params;

	// Get the organization
	const orgsChirho = await locals.dbChirho
		.select()
		.from(organizationChirho)
		.where(eq(organizationChirho.slug, slug_chirho))
		.limit(1);

	if (orgsChirho.length === 0) {
		error(404, 'Organization not found');
	}

	const organizationDataChirho = orgsChirho[0];

	// Check if user is org_admin or platform_admin
	const isOrgAdminChirho =
		locals.userChirho.role === 'platform_admin' ||
		(locals.userChirho.role === 'org_admin' &&
			locals.userChirho.organizationId === organizationDataChirho.organizationId);

	if (!isOrgAdminChirho) {
		error(403, 'You do not have permission to manage this organization');
	}

	// Get invite codes
	const inviteCodesChirho = await locals.dbChirho
		.select()
		.from(organizationInviteCodeChirho)
		.where(eq(organizationInviteCodeChirho.organizationId, organizationDataChirho.organizationId));

	// Get cohorts
	const cohortsChirho = await locals.dbChirho
		.select()
		.from(cohortChirho)
		.where(eq(cohortChirho.organizationId, organizationDataChirho.organizationId));

	// Get members
	const membersChirho = await locals.dbChirho
		.select({
			userId: userChirho.userId,
			username: userChirho.username,
			email: userChirho.email,
			displayName: userChirho.displayName,
			role: userChirho.role,
			cohortId: userChirho.cohortId,
			createdAt: userChirho.createdAt
		})
		.from(userChirho)
		.where(eq(userChirho.organizationId, organizationDataChirho.organizationId));

	return {
		organizationChirho: organizationDataChirho,
		inviteCodesChirho,
		cohortsChirho,
		membersChirho
	};
};

function generateInviteCodeChirho(): string {
	const charsChirho = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
	let codeChirho = '';
	for (let i = 0; i < 8; i++) {
		codeChirho += charsChirho.charAt(Math.floor(Math.random() * charsChirho.length));
	}
	return codeChirho;
}

export const actions: Actions = {
	createInviteCodeChirho: async ({ request, locals, params }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { errorChirho: 'You must be logged in' });
		}

		const { slug_chirho } = params;

		// Verify org access
		const orgsChirho = await locals.dbChirho
			.select()
			.from(organizationChirho)
			.where(eq(organizationChirho.slug, slug_chirho))
			.limit(1);

		if (orgsChirho.length === 0) {
			return fail(404, { errorChirho: 'Organization not found' });
		}

		const organizationDataChirho = orgsChirho[0];

		const isOrgAdminChirho =
			locals.userChirho.role === 'platform_admin' ||
			(locals.userChirho.role === 'org_admin' &&
				locals.userChirho.organizationId === organizationDataChirho.organizationId);

		if (!isOrgAdminChirho) {
			return fail(403, { errorChirho: 'Permission denied' });
		}

		const formDataChirho = await request.formData();
		const maxUsesChirho = parseInt(formDataChirho.get('maxUsesChirho')?.toString() || '100', 10);
		const expiresInDaysChirho = parseInt(formDataChirho.get('expiresInDaysChirho')?.toString() || '90', 10);
		const cohortIdChirho = formDataChirho.get('cohortIdChirho')?.toString() || null;

		// Generate unique code
		let codeChirho = generateInviteCodeChirho();
		let attemptsChirho = 0;

		while (attemptsChirho < 10) {
			const existingChirho = await locals.dbChirho
				.select()
				.from(organizationInviteCodeChirho)
				.where(eq(organizationInviteCodeChirho.code, codeChirho))
				.limit(1);

			if (existingChirho.length === 0) break;
			codeChirho = generateInviteCodeChirho();
			attemptsChirho++;
		}

		const expiresAtChirho = new Date();
		expiresAtChirho.setDate(expiresAtChirho.getDate() + expiresInDaysChirho);

		await locals.dbChirho.insert(organizationInviteCodeChirho).values({
			inviteCodeId: nanoid(),
			organizationId: organizationDataChirho.organizationId,
			code: codeChirho,
			maxUses: maxUsesChirho,
			currentUses: 0,
			expiresAt: expiresAtChirho,
			isActive: true,
			cohortId: cohortIdChirho,
			createdByUserId: locals.userChirho.userId
		});

		return { successChirho: true, actionChirho: 'createInviteCodeChirho', codeChirho };
	},

	deactivateInviteCodeChirho: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { errorChirho: 'You must be logged in' });
		}

		const formDataChirho = await request.formData();
		const inviteCodeIdChirho = formDataChirho.get('inviteCodeIdChirho')?.toString();

		if (!inviteCodeIdChirho) {
			return fail(400, { errorChirho: 'Invite code ID is required' });
		}

		await locals.dbChirho
			.update(organizationInviteCodeChirho)
			.set({ isActive: false })
			.where(eq(organizationInviteCodeChirho.inviteCodeId, inviteCodeIdChirho));

		return { successChirho: true, actionChirho: 'deactivateInviteCodeChirho' };
	},

	createCohortChirho: async ({ request, locals, params }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { errorChirho: 'You must be logged in' });
		}

		const { slug_chirho } = params;

		// Verify org access
		const orgsChirho = await locals.dbChirho
			.select()
			.from(organizationChirho)
			.where(eq(organizationChirho.slug, slug_chirho))
			.limit(1);

		if (orgsChirho.length === 0) {
			return fail(404, { errorChirho: 'Organization not found' });
		}

		const organizationDataChirho = orgsChirho[0];

		const isOrgAdminChirho =
			locals.userChirho.role === 'platform_admin' ||
			(locals.userChirho.role === 'org_admin' &&
				locals.userChirho.organizationId === organizationDataChirho.organizationId);

		if (!isOrgAdminChirho) {
			return fail(403, { errorChirho: 'Permission denied' });
		}

		const formDataChirho = await request.formData();
		const nameChirho = formDataChirho.get('nameChirho')?.toString().trim();
		const descriptionChirho = formDataChirho.get('descriptionChirho')?.toString().trim() || null;
		const startDateStrChirho = formDataChirho.get('startDateChirho')?.toString();
		const maxStudentsChirho = parseInt(formDataChirho.get('maxStudentsChirho')?.toString() || '30', 10);

		if (!nameChirho || !startDateStrChirho) {
			return fail(400, { errorChirho: 'Name and start date are required' });
		}

		const startDateChirho = new Date(startDateStrChirho);
		if (isNaN(startDateChirho.getTime())) {
			return fail(400, { errorChirho: 'Invalid start date' });
		}

		// Calculate end date (18 weeks later)
		const endDateChirho = new Date(startDateChirho);
		endDateChirho.setDate(endDateChirho.getDate() + 18 * 7);

		await locals.dbChirho.insert(cohortChirho).values({
			cohortId: nanoid(),
			organizationId: organizationDataChirho.organizationId,
			name: nameChirho,
			description: descriptionChirho,
			startDate: startDateChirho,
			endDate: endDateChirho,
			maxStudents: maxStudentsChirho,
			currentEnrollment: 0,
			status: 'upcoming',
			isAcceptingEnrollment: true
		});

		return { successChirho: true, actionChirho: 'createCohortChirho' };
	},

	updateOrganizationChirho: async ({ request, locals, params }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { errorChirho: 'You must be logged in' });
		}

		const { slug_chirho } = params;

		// Verify org access
		const orgsChirho = await locals.dbChirho
			.select()
			.from(organizationChirho)
			.where(eq(organizationChirho.slug, slug_chirho))
			.limit(1);

		if (orgsChirho.length === 0) {
			return fail(404, { errorChirho: 'Organization not found' });
		}

		const organizationDataChirho = orgsChirho[0];

		const isOrgAdminChirho =
			locals.userChirho.role === 'platform_admin' ||
			(locals.userChirho.role === 'org_admin' &&
				locals.userChirho.organizationId === organizationDataChirho.organizationId);

		if (!isOrgAdminChirho) {
			return fail(403, { errorChirho: 'Permission denied' });
		}

		const formDataChirho = await request.formData();
		const descriptionChirho = formDataChirho.get('descriptionChirho')?.toString().trim() || null;
		const contactNameChirho = formDataChirho.get('contactNameChirho')?.toString().trim();
		const contactEmailChirho = formDataChirho.get('contactEmailChirho')?.toString().trim().toLowerCase();
		const contactPhoneChirho = formDataChirho.get('contactPhoneChirho')?.toString().trim() || null;

		if (!contactNameChirho || !contactEmailChirho) {
			return fail(400, { errorChirho: 'Contact name and email are required' });
		}

		await locals.dbChirho
			.update(organizationChirho)
			.set({
				description: descriptionChirho,
				contactName: contactNameChirho,
				contactEmail: contactEmailChirho,
				contactPhone: contactPhoneChirho
			})
			.where(eq(organizationChirho.organizationId, organizationDataChirho.organizationId));

		return { successChirho: true, actionChirho: 'updateOrganizationChirho' };
	}
};
