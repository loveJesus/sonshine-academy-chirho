// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail, redirect } from '@sveltejs/kit';
import type { Actions, PageServerLoad } from './$types';
import {
	validatePasswordResetTokenChirho,
	usePasswordResetTokenChirho
} from '$lib/server/auth_chirho';

export const load: PageServerLoad = async ({ url, locals }) => {
	const token = url.searchParams.get('token');

	if (!token) {
		return {
			validTokenChirho: false,
			errorChirho: 'Missing password reset token. Please request a new password reset link.'
		};
	}

	if (!locals.dbChirho) {
		return {
			validTokenChirho: false,
			errorChirho: 'Service temporarily unavailable. Please try again later.'
		};
	}

	// Validate token
	const validationResult = await validatePasswordResetTokenChirho(locals.dbChirho, token);

	if (!validationResult.valid) {
		return {
			validTokenChirho: false,
			errorChirho:
				'This password reset link is invalid or has expired. Please request a new one.'
		};
	}

	return {
		validTokenChirho: true,
		tokenChirho: token
	};
};

export const actions: Actions = {
	default: async ({ request, locals, url }) => {
		const formData = await request.formData();
		const token = formData.get('token')?.toString();
		const password = formData.get('password')?.toString();
		const confirmPassword = formData.get('confirmPassword')?.toString();

		if (!token) {
			return fail(400, {
				errorChirho: 'Missing reset token'
			});
		}

		if (!password || !confirmPassword) {
			return fail(400, {
				errorChirho: 'Please enter both password fields'
			});
		}

		// Password validation
		if (password.length < 8) {
			return fail(400, {
				errorChirho: 'Password must be at least 8 characters long'
			});
		}

		if (password !== confirmPassword) {
			return fail(400, {
				errorChirho: 'Passwords do not match'
			});
		}

		if (!locals.dbChirho) {
			return fail(500, {
				errorChirho: 'Service temporarily unavailable'
			});
		}

		// Validate token again
		const validationResult = await validatePasswordResetTokenChirho(locals.dbChirho, token);

		if (!validationResult.valid || !validationResult.userId || !validationResult.tokenId) {
			return fail(400, {
				errorChirho: 'This password reset link is invalid or has expired. Please request a new one.',
				expiredChirho: true
			});
		}

		try {
			// Update password and mark token as used
			await usePasswordResetTokenChirho(
				locals.dbChirho,
				validationResult.tokenId,
				validationResult.userId,
				password
			);

			return {
				successChirho: true
			};
		} catch (errorChirho) {
			console.error('Error resetting password:', errorChirho);
			return fail(500, {
				errorChirho: 'Failed to reset password. Please try again.'
			});
		}
	}
};
