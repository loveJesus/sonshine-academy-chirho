// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';
import {
	getGoogleOAuthConfigChirho,
	generateOAuthStateChirho,
	getGoogleAuthUrlChirho
} from '$lib/server/oauth_google_chirho';

const OAUTH_STATE_COOKIE = 'google-oauth-state-chirho';

export const load: PageServerLoad = async ({ cookies, url, platform }) => {
	const env = platform?.env || {};
	const config = getGoogleOAuthConfigChirho(env);

	if (!config.clientId || !config.clientSecret) {
		// OAuth not configured, redirect to regular login
		redirect(302, '/auth-chirho/login?error=oauth_not_configured');
	}

	// Generate state for CSRF protection
	const state = generateOAuthStateChirho();

	// Store state in a secure cookie
	cookies.set(OAUTH_STATE_COOKIE, state, {
		httpOnly: true,
		sameSite: 'lax',
		path: '/',
		maxAge: 60 * 10, // 10 minutes
		secure: url.protocol === 'https:'
	});

	// Build redirect URI
	const redirectUri = `${url.origin}/auth-chirho/google-chirho/callback-chirho`;

	// Generate authorization URL
	const authUrl = getGoogleAuthUrlChirho(config, redirectUri, state);

	// Redirect to Google
	redirect(302, authUrl);
};
