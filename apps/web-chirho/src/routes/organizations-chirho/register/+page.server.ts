// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail, redirect } from '@sveltejs/kit';
import { nanoid } from 'nanoid';
import type { Actions, PageServerLoad } from './$types';
import { organizationChirho, userChirho } from '$lib/server/db/schema';
import { eq } from 'drizzle-orm';

export const load: PageServerLoad = async ({ locals }) => {
	// Redirect if not logged in
	if (!locals.userChirho) {
		redirect(302, '/auth-chirho/login?redirect=/organizations-chirho/register');
	}

	// Redirect if already part of an organization
	if (locals.userChirho.organizationId) {
		redirect(302, '/dashboard-chirho');
	}

	return {};
};

function generateSlugChirho(nameChirho: string): string {
	return nameChirho
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, '-')
		.replace(/^-|-$/g, '')
		.substring(0, 50);
}

export const actions: Actions = {
	default: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { errorChirho: 'You must be logged in to register an organization' });
		}

		const formDataChirho = await request.formData();

		const nameChirho = formDataChirho.get('nameChirho')?.toString().trim();
		const organizationTypeChirho = formDataChirho.get('organizationTypeChirho')?.toString();
		const descriptionChirho = formDataChirho.get('descriptionChirho')?.toString().trim() || null;
		const contactNameChirho = formDataChirho.get('contactNameChirho')?.toString().trim();
		const contactEmailChirho = formDataChirho.get('contactEmailChirho')?.toString().trim().toLowerCase();
		const contactPhoneChirho = formDataChirho.get('contactPhoneChirho')?.toString().trim() || null;
		const addressLine1Chirho = formDataChirho.get('addressLine1Chirho')?.toString().trim() || null;
		const cityChirho = formDataChirho.get('cityChirho')?.toString().trim() || null;
		const stateChirho = formDataChirho.get('stateChirho')?.toString().trim() || null;
		const postalCodeChirho = formDataChirho.get('postalCodeChirho')?.toString().trim() || null;
		const countryChirho = formDataChirho.get('countryChirho')?.toString().trim() || 'US';

		// Validation
		if (!nameChirho || !organizationTypeChirho || !contactNameChirho || !contactEmailChirho) {
			return fail(400, {
				errorChirho: 'Please fill in all required fields',
				nameChirho,
				organizationTypeChirho,
				descriptionChirho,
				contactNameChirho,
				contactEmailChirho,
				contactPhoneChirho,
				addressLine1Chirho,
				cityChirho,
				stateChirho,
				postalCodeChirho,
				countryChirho
			});
		}

		if (nameChirho.length < 3 || nameChirho.length > 100) {
			return fail(400, {
				errorChirho: 'Organization name must be between 3 and 100 characters',
				nameChirho,
				organizationTypeChirho,
				descriptionChirho,
				contactNameChirho,
				contactEmailChirho,
				contactPhoneChirho,
				addressLine1Chirho,
				cityChirho,
				stateChirho,
				postalCodeChirho,
				countryChirho
			});
		}

		if (!['church', 'school', 'homeschool', 'other'].includes(organizationTypeChirho)) {
			return fail(400, {
				errorChirho: 'Please select a valid organization type',
				nameChirho,
				organizationTypeChirho,
				descriptionChirho,
				contactNameChirho,
				contactEmailChirho,
				contactPhoneChirho,
				addressLine1Chirho,
				cityChirho,
				stateChirho,
				postalCodeChirho,
				countryChirho
			});
		}

		// Email validation
		if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(contactEmailChirho)) {
			return fail(400, {
				errorChirho: 'Please enter a valid email address',
				nameChirho,
				organizationTypeChirho,
				descriptionChirho,
				contactNameChirho,
				contactEmailChirho,
				contactPhoneChirho,
				addressLine1Chirho,
				cityChirho,
				stateChirho,
				postalCodeChirho,
				countryChirho
			});
		}

		// Generate slug and check uniqueness
		let baseSlugChirho = generateSlugChirho(nameChirho);
		let slugChirho = baseSlugChirho;
		let slugSuffixChirho = 0;

		while (true) {
			const existingChirho = await locals.dbChirho
				.select()
				.from(organizationChirho)
				.where(eq(organizationChirho.slug, slugChirho))
				.limit(1);

			if (existingChirho.length === 0) break;

			slugSuffixChirho++;
			slugChirho = `${baseSlugChirho}-${slugSuffixChirho}`;
		}

		const organizationIdChirho = nanoid();

		// Create organization
		await locals.dbChirho.insert(organizationChirho).values({
			organizationId: organizationIdChirho,
			name: nameChirho,
			slug: slugChirho,
			description: descriptionChirho,
			organizationType: organizationTypeChirho,
			contactName: contactNameChirho,
			contactEmail: contactEmailChirho,
			contactPhone: contactPhoneChirho,
			addressLine1: addressLine1Chirho,
			city: cityChirho,
			state: stateChirho,
			postalCode: postalCodeChirho,
			country: countryChirho,
			isActive: true,
			isVerified: false
		});

		// Update user to be org_admin and belong to this organization
		await locals.dbChirho
			.update(userChirho)
			.set({
				organizationId: organizationIdChirho,
				role: 'org_admin'
			})
			.where(eq(userChirho.userId, locals.userChirho.userId));

		// Redirect to organization management page
		redirect(302, `/organizations-chirho/${slugChirho}/manage`);
	}
};
