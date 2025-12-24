// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect, error } from '@sveltejs/kit';
import { eq, and } from 'drizzle-orm';
import type { PageServerLoad } from './$types';
import { userChirho, oauthAccountChirho } from '$lib/server/db/schema';
import {
	getGoogleOAuthConfigChirho,
	exchangeCodeForTokensChirho,
	getGoogleUserInfoChirho,
	generateUsernameFromEmailChirho
} from '$lib/server/oauth_google_chirho';
import {
	createSessionChirho,
	generateSessionTokenChirho,
	setSessionTokenCookieChirho
} from '$lib/server/auth_chirho';

const OAUTH_STATE_COOKIE = 'google-oauth-state-chirho';

export const load: PageServerLoad = async ({ url, cookies, platform, locals, request }) => {
	const env = platform?.env || {};
	const config = getGoogleOAuthConfigChirho(env);
	const dbChirho = locals.dbChirho;

	if (!dbChirho) {
		error(500, 'Database not available');
	}

	// Get the authorization code and state from the URL
	const code = url.searchParams.get('code');
	const state = url.searchParams.get('state');
	const errorParam = url.searchParams.get('error');

	// Handle error from Google
	if (errorParam) {
		redirect(302, `/auth-chirho/login?error=${errorParam}`);
	}

	// Validate code and state
	if (!code || !state) {
		redirect(302, '/auth-chirho/login?error=missing_params');
	}

	// Verify state matches
	const storedState = cookies.get(OAUTH_STATE_COOKIE);
	if (!storedState || storedState !== state) {
		redirect(302, '/auth-chirho/login?error=invalid_state');
	}

	// Clear the state cookie
	cookies.delete(OAUTH_STATE_COOKIE, { path: '/' });

	try {
		// Exchange code for tokens
		const redirectUri = `${url.origin}/auth-chirho/google/callback`;
		const tokens = await exchangeCodeForTokensChirho(config, code, redirectUri);

		// Get user info from Google
		const googleUser = await getGoogleUserInfoChirho(config, tokens.access_token);

		if (!googleUser.email || !googleUser.verified_email) {
			redirect(302, '/auth-chirho/login?error=email_not_verified');
		}

		// Check if OAuth account already exists
		const existingOAuthAccounts = await dbChirho
			.select()
			.from(oauthAccountChirho)
			.where(
				and(
					eq(oauthAccountChirho.provider, 'google'),
					eq(oauthAccountChirho.providerUserId, googleUser.id)
				)
			)
			.limit(1);

		let userId: string;

		if (existingOAuthAccounts.length > 0) {
			// User already has a linked Google account - log them in
			userId = existingOAuthAccounts[0].userId;

			// Update the access token
			await dbChirho
				.update(oauthAccountChirho)
				.set({
					accessToken: tokens.access_token,
					refreshToken: tokens.refresh_token || existingOAuthAccounts[0].refreshToken,
					expiresAt: tokens.expires_in
						? new Date(Date.now() + tokens.expires_in * 1000)
						: null
				})
				.where(eq(oauthAccountChirho.oauthAccountId, existingOAuthAccounts[0].oauthAccountId));
		} else {
			// Check if a user with this email already exists
			const existingUsers = await dbChirho
				.select()
				.from(userChirho)
				.where(eq(userChirho.email, googleUser.email))
				.limit(1);

			if (existingUsers.length > 0) {
				// Link Google account to existing user
				userId = existingUsers[0].userId;
			} else {
				// Create a new user
				userId = crypto.randomUUID();
				const username = generateUsernameFromEmailChirho(googleUser.email);

				await dbChirho.insert(userChirho).values({
					userId,
					username,
					email: googleUser.email,
					displayName: googleUser.name || googleUser.email.split('@')[0],
					avatarUrl: googleUser.picture,
					emailVerified: true, // Google already verified the email
					role: 'student'
				});
			}

			// Create OAuth account link
			await dbChirho.insert(oauthAccountChirho).values({
				oauthAccountId: crypto.randomUUID(),
				userId,
				provider: 'google',
				providerUserId: googleUser.id,
				accessToken: tokens.access_token,
				refreshToken: tokens.refresh_token,
				expiresAt: tokens.expires_in
					? new Date(Date.now() + tokens.expires_in * 1000)
					: null
			});
		}

		// Update user's avatar and display name if not set
		const users = await dbChirho
			.select()
			.from(userChirho)
			.where(eq(userChirho.userId, userId))
			.limit(1);

		if (users.length > 0) {
			const user = users[0];
			const updates: Partial<typeof userChirho.$inferInsert> = {
				lastLoginAt: new Date()
			};

			if (!user.avatarUrl && googleUser.picture) {
				updates.avatarUrl = googleUser.picture;
			}

			if (!user.displayName && googleUser.name) {
				updates.displayName = googleUser.name;
			}

			await dbChirho.update(userChirho).set(updates).where(eq(userChirho.userId, userId));
		}

		// Create session
		const token = generateSessionTokenChirho();
		await createSessionChirho(
			dbChirho,
			token,
			userId,
			request.headers.get('user-agent') ?? undefined
		);

		// Set session cookie
		setSessionTokenCookieChirho({ cookies, url } as Parameters<typeof setSessionTokenCookieChirho>[0], token);

		// Redirect to dashboard
		redirect(302, '/dashboard-chirho');
	} catch (err) {
		console.error('Google OAuth error:', err);
		redirect(302, '/auth-chirho/login?error=oauth_failed');
	}
};
