// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail } from '@sveltejs/kit';
import { eq } from 'drizzle-orm';
import type { Actions, PageServerLoad } from './$types';
import { userChirho } from '$lib/server/db/schema';
import { createPasswordResetTokenChirho } from '$lib/server/auth_chirho';
import { getEmailConfigChirho, sendPasswordResetEmailChirho } from '$lib/server/email_chirho';

export const load: PageServerLoad = async ({ locals }) => {
	// Redirect if already logged in
	if (locals.userChirho) {
		return { redirectChirho: '/dashboard-chirho' };
	}
	return {};
};

export const actions: Actions = {
	default: async ({ request, locals, url, platform }) => {
		const formData = await request.formData();
		const email = formData.get('email')?.toString().trim().toLowerCase();

		if (!email) {
			return fail(400, {
				errorChirho: 'Please enter your email address',
				email
			});
		}

		// Simple email validation
		if (!email.includes('@') || !email.includes('.')) {
			return fail(400, {
				errorChirho: 'Please enter a valid email address',
				email
			});
		}

		if (!locals.dbChirho) {
			return fail(500, {
				errorChirho: 'Service temporarily unavailable',
				email
			});
		}

		// Find user by email
		const users = await locals.dbChirho
			.select()
			.from(userChirho)
			.where(eq(userChirho.email, email))
			.limit(1);

		// Always show success message to prevent email enumeration attacks
		// But only send email if user exists
		if (users.length > 0) {
			const user = users[0];

			// Only allow password reset for users with passwords (not OAuth-only)
			if (user.passwordHash) {
				try {
					// Create password reset token
					const resetToken = await createPasswordResetTokenChirho(locals.dbChirho, user.userId);

					// Build reset URL
					const baseUrl = url.origin;
					const resetUrl = `${baseUrl}/auth-chirho/reset-password?token=${resetToken}`;

					// Send email
					const emailConfigChirho = getEmailConfigChirho(platform?.env ?? {});
					if (emailConfigChirho) {
						await sendPasswordResetEmailChirho(
							emailConfigChirho,
							user.email,
							user.displayName || user.username,
							resetUrl
						);
					}
					// If email not configured, token is still created and will work
					// Email service will be enabled once RESEND_API_KEY is configured
				} catch (errorChirho) {
					console.error('Error creating password reset token:', errorChirho);
					// Don't expose error to user
				}
			}
		}

		// Always return success to prevent email enumeration
		return {
			successChirho: true,
			messageChirho:
				'If an account exists with that email, we have sent password reset instructions.'
		};
	}
};
