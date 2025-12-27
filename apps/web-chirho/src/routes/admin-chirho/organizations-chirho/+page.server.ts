// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { PageServerLoad, Actions } from './$types';
import { organizationChirho } from '$lib/server/db/schema';

export const load: PageServerLoad = async ({ locals }) => {
	if (!locals.userChirho || !locals.dbChirho) {
		redirect(302, '/auth-chirho/login');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	const organizationsChirho = await locals.dbChirho
		.select()
		.from(organizationChirho)
		.orderBy(desc(organizationChirho.createdAt));

	return {
		organizationsChirho
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
		const nameChirho = formDataChirho.get('name')?.toString().trim();
		const descriptionChirho = formDataChirho.get('description')?.toString().trim();
		const organizationTypeChirho = formDataChirho.get('organizationType')?.toString() as
			| 'church'
			| 'school'
			| 'homeschool'
			| 'other';
		const contactNameChirho = formDataChirho.get('contactName')?.toString().trim();
		const contactEmailChirho = formDataChirho.get('contactEmail')?.toString().trim();
		const contactPhoneChirho = formDataChirho.get('contactPhone')?.toString().trim();
		const cityChirho = formDataChirho.get('city')?.toString().trim();
		const stateChirho = formDataChirho.get('state')?.toString().trim();
		const maxStudentsChirho = parseInt(formDataChirho.get('maxStudents')?.toString() || '50');

		if (!nameChirho || !contactNameChirho || !contactEmailChirho || !organizationTypeChirho) {
			return fail(400, { error: 'Name, contact name, email, and organization type are required' });
		}

		// Generate slug from name
		const slugChirho = nameChirho
			.toLowerCase()
			.replace(/[^a-z0-9]+/g, '-')
			.replace(/^-|-$/g, '');

		// Check for duplicate slug
		const existingChirho = await locals.dbChirho
			.select()
			.from(organizationChirho)
			.where(eq(organizationChirho.slug, slugChirho))
			.limit(1);

		if (existingChirho.length > 0) {
			return fail(400, { error: 'An organization with a similar name already exists' });
		}

		const organizationIdChirho = nanoid();
		await locals.dbChirho.insert(organizationChirho).values({
			organizationId: organizationIdChirho,
			name: nameChirho,
			slug: slugChirho,
			description: descriptionChirho || null,
			organizationType: organizationTypeChirho,
			contactName: contactNameChirho,
			contactEmail: contactEmailChirho,
			contactPhone: contactPhoneChirho || null,
			city: cityChirho || null,
			state: stateChirho || null,
			maxStudents: maxStudentsChirho,
			isActive: true
		});

		return { success: true };
	},

	update: async ({ request, locals }) => {
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
		const contactNameChirho = formDataChirho.get('contactName')?.toString().trim();
		const contactEmailChirho = formDataChirho.get('contactEmail')?.toString().trim();
		const maxStudentsChirho = parseInt(formDataChirho.get('maxStudents')?.toString() || '50');

		if (!organizationIdChirho) {
			return fail(400, { error: 'Organization ID is required' });
		}

		await locals.dbChirho
			.update(organizationChirho)
			.set({
				name: nameChirho,
				description: descriptionChirho || null,
				contactName: contactNameChirho,
				contactEmail: contactEmailChirho,
				maxStudents: maxStudentsChirho,
				updatedAt: new Date()
			})
			.where(eq(organizationChirho.organizationId, organizationIdChirho));

		return { success: true };
	},

	toggle: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Unauthorized' });
		}

		if (locals.userChirho.role !== 'platform_admin') {
			return fail(403, { error: 'Forbidden' });
		}

		const formDataChirho = await request.formData();
		const organizationIdChirho = formDataChirho.get('organizationId')?.toString();

		if (!organizationIdChirho) {
			return fail(400, { error: 'Organization ID is required' });
		}

		const existingChirho = await locals.dbChirho
			.select()
			.from(organizationChirho)
			.where(eq(organizationChirho.organizationId, organizationIdChirho))
			.limit(1);

		if (existingChirho.length === 0) {
			return fail(404, { error: 'Organization not found' });
		}

		await locals.dbChirho
			.update(organizationChirho)
			.set({
				isActive: !existingChirho[0].isActive,
				updatedAt: new Date()
			})
			.where(eq(organizationChirho.organizationId, organizationIdChirho));

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
		const organizationIdChirho = formDataChirho.get('organizationId')?.toString();

		if (!organizationIdChirho) {
			return fail(400, { error: 'Organization ID is required' });
		}

		await locals.dbChirho
			.delete(organizationChirho)
			.where(eq(organizationChirho.organizationId, organizationIdChirho));

		return { success: true };
	}
};
