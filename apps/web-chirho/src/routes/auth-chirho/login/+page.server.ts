// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail, redirect } from '@sveltejs/kit';
import { eq, or } from 'drizzle-orm';
import type { Actions, PageServerLoad } from './$types';
import { userChirho } from '$lib/server/db/schema';
import {
	createSessionChirho,
	generateSessionTokenChirho,
	setSessionTokenCookieChirho,
	verifyPasswordChirho,
	getSafeRedirectUrlChirho
} from '$lib/server/auth_chirho';

export const load: PageServerLoad = async ({ locals, url }) => {
	// Redirect if already logged in
	if (locals.userChirho) {
		const redirectToChirho = getSafeRedirectUrlChirho(url.searchParams.get('redirect'));
		redirect(302, redirectToChirho);
	}
	return {};
};

export const actions: Actions = {
	default: async (event) => {
		const { request, locals, url } = event;
		const formData = await request.formData();

		const username = formData.get('username')?.toString().trim();
		const password = formData.get('password')?.toString();

		if (!username || !password) {
			return fail(400, {
				error: 'Please enter both username and password',
				username
			});
		}

		if (!locals.dbChirho) {
			return fail(500, {
				error: 'Database not available',
				username
			});
		}

		// Find user by username or email
		const users = await locals.dbChirho
			.select()
			.from(userChirho)
			.where(or(eq(userChirho.username, username), eq(userChirho.email, username)))
			.limit(1);

		if (users.length === 0) {
			return fail(400, {
				error: 'Invalid username or password',
				username
			});
		}

		const user = users[0];

		// Check if user has a password (OAuth-only users don't)
		if (!user.passwordHash) {
			return fail(400, {
				error: 'This account uses Google sign-in. Please use the "Continue with Google" button.',
				username
			});
		}

		// Verify password
		const validPassword = await verifyPasswordChirho(password, user.passwordHash);
		if (!validPassword) {
			return fail(400, {
				error: 'Invalid username or password',
				username
			});
		}

		// Create session
		const token = generateSessionTokenChirho();
		await createSessionChirho(
			locals.dbChirho,
			token,
			user.userId,
			request.headers.get('user-agent') ?? undefined,
			event.getClientAddress()
		);

		// Set cookie
		setSessionTokenCookieChirho(event, token);

		// Update last login
		await locals.dbChirho
			.update(userChirho)
			.set({ lastLoginAt: new Date() })
			.where(eq(userChirho.userId, user.userId));

		// Redirect safely
		const redirectToChirho = getSafeRedirectUrlChirho(url.searchParams.get('redirect'));
		redirect(302, redirectToChirho);
	}
};
