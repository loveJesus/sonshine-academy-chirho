// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, fail } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';
import type { PageServerLoad, Actions } from './$types';
import { userChirho, oauthAccountChirho } from '$lib/server/db/schema';
import { hashPasswordChirho, verifyPasswordChirho } from '$lib/server/auth_chirho';

// Available background colors for profile
const BACKGROUND_COLORS_CHIRHO = [
	{ value: '#3B82F6', name: 'Blue' },
	{ value: '#10B981', name: 'Green' },
	{ value: '#F59E0B', name: 'Amber' },
	{ value: '#EF4444', name: 'Red' },
	{ value: '#8B5CF6', name: 'Purple' },
	{ value: '#EC4899', name: 'Pink' },
	{ value: '#14B8A6', name: 'Teal' },
	{ value: '#F97316', name: 'Orange' },
	{ value: '#6366F1', name: 'Indigo' },
	{ value: '#84CC16', name: 'Lime' },
	{ value: '#64748B', name: 'Slate' },
	{ value: '#0EA5E9', name: 'Sky' }
];

export const load: PageServerLoad = async ({ locals }) => {
	// Require authentication
	if (!locals.userChirho) {
		redirect(302, '/auth-chirho/login?redirect=/settings-chirho');
	}

	// Check for linked OAuth accounts
	let linkedAccountsChirho: { provider: string; providerUserId: string }[] = [];

	if (locals.dbChirho) {
		const oauthAccountsChirho = await locals.dbChirho
			.select({
				provider: oauthAccountChirho.provider,
				providerUserId: oauthAccountChirho.providerUserId
			})
			.from(oauthAccountChirho)
			.where(eq(oauthAccountChirho.userId, locals.userChirho.userId));

		linkedAccountsChirho = oauthAccountsChirho;
	}

	// Check if user has a password set (vs OAuth-only)
	const hasPasswordChirho = !!locals.userChirho.passwordHash;

	return {
		userChirho: locals.userChirho,
		linkedAccountsChirho,
		backgroundColorsChirho: BACKGROUND_COLORS_CHIRHO,
		hasPasswordChirho
	};
};

export const actions: Actions = {
	updateProfile: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Not authenticated' });
		}

		const formDataChirho = await request.formData();
		const displayNameChirho = formDataChirho.get('displayName') as string;
		const backgroundColorChirho = formDataChirho.get('backgroundColor') as string;
		const githubUsernameChirho = formDataChirho.get('githubUsername') as string;

		// Validate display name
		if (displayNameChirho && displayNameChirho.length > 50) {
			return fail(400, { error: 'Display name must be 50 characters or less' });
		}

		// Validate background color
		if (backgroundColorChirho && !BACKGROUND_COLORS_CHIRHO.some((c) => c.value === backgroundColorChirho)) {
			return fail(400, { error: 'Invalid background color' });
		}

		// Validate GitHub username
		if (githubUsernameChirho && !/^[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/.test(githubUsernameChirho)) {
			return fail(400, { error: 'Invalid GitHub username format' });
		}

		try {
			await locals.dbChirho
				.update(userChirho)
				.set({
					displayName: displayNameChirho || null,
					backgroundColor: backgroundColorChirho || '#3B82F6',
					githubUsername: githubUsernameChirho || null,
					updatedAt: new Date()
				})
				.where(eq(userChirho.userId, locals.userChirho.userId));

			return { success: true, message: 'Profile updated successfully!' };
		} catch (errorChirho) {
			console.error('Error updating profile:', errorChirho);
			return fail(500, { error: 'Failed to update profile' });
		}
	},

	updateEmail: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { error: 'Not authenticated' });
		}

		const formDataChirho = await request.formData();
		const newEmailChirho = formDataChirho.get('email') as string;

		// Validate email
		if (!newEmailChirho || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(newEmailChirho)) {
			return fail(400, { error: 'Please enter a valid email address' });
		}

		// Check if email is already in use
		const existingUserChirho = await locals.dbChirho
			.select({ userId: userChirho.userId })
			.from(userChirho)
			.where(eq(userChirho.email, newEmailChirho.toLowerCase()))
			.limit(1);

		if (existingUserChirho.length > 0 && existingUserChirho[0].userId !== locals.userChirho.userId) {
			return fail(400, { error: 'This email is already in use' });
		}

		try {
			await locals.dbChirho
				.update(userChirho)
				.set({
					email: newEmailChirho.toLowerCase(),
					emailVerified: false, // Require re-verification
					updatedAt: new Date()
				})
				.where(eq(userChirho.userId, locals.userChirho.userId));

			return { success: true, message: 'Email updated. Please verify your new email.' };
		} catch (errorChirho) {
			console.error('Error updating email:', errorChirho);
			return fail(500, { error: 'Failed to update email' });
		}
	},

	changePassword: async ({ request, locals }) => {
		if (!locals.userChirho || !locals.dbChirho) {
			return fail(401, { errorPasswordChirho: 'Not authenticated' });
		}

		// Check if user has a password (OAuth users need to set one first)
		const usersChirho = await locals.dbChirho
			.select({ passwordHash: userChirho.passwordHash })
			.from(userChirho)
			.where(eq(userChirho.userId, locals.userChirho.userId))
			.limit(1);

		const currentUserChirho = usersChirho[0];
		const hasPasswordChirho = !!currentUserChirho?.passwordHash;

		const formDataChirho = await request.formData();
		const currentPasswordChirho = formDataChirho.get('currentPassword') as string;
		const newPasswordChirho = formDataChirho.get('newPassword') as string;
		const confirmPasswordChirho = formDataChirho.get('confirmPassword') as string;

		// Validate new password
		if (!newPasswordChirho || newPasswordChirho.length < 8) {
			return fail(400, { errorPasswordChirho: 'New password must be at least 8 characters' });
		}

		if (newPasswordChirho !== confirmPasswordChirho) {
			return fail(400, { errorPasswordChirho: 'Passwords do not match' });
		}

		// If user has a password, verify current password
		if (hasPasswordChirho) {
			if (!currentPasswordChirho) {
				return fail(400, { errorPasswordChirho: 'Current password is required' });
			}

			const isValidChirho = await verifyPasswordChirho(
				currentPasswordChirho,
				currentUserChirho.passwordHash!
			);

			if (!isValidChirho) {
				return fail(400, { errorPasswordChirho: 'Current password is incorrect' });
			}
		}

		try {
			const newHashChirho = await hashPasswordChirho(newPasswordChirho);

			await locals.dbChirho
				.update(userChirho)
				.set({
					passwordHash: newHashChirho,
					updatedAt: new Date()
				})
				.where(eq(userChirho.userId, locals.userChirho.userId));

			return {
				successPasswordChirho: true,
				messagePasswordChirho: hasPasswordChirho
					? 'Password changed successfully!'
					: 'Password set successfully! You can now sign in with your email and password.'
			};
		} catch (errorChirho) {
			console.error('Error changing password:', errorChirho);
			return fail(500, { errorPasswordChirho: 'Failed to change password' });
		}
	}
};
