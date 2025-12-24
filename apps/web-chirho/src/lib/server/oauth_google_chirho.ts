// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { encodeBase64url } from '@oslojs/encoding';

// Google OAuth configuration
export function getGoogleOAuthConfigChirho(env: {
	GOOGLE_CLIENT_ID?: string;
	GOOGLE_CLIENT_SECRET?: string;
}) {
	return {
		clientId: env.GOOGLE_CLIENT_ID || '',
		clientSecret: env.GOOGLE_CLIENT_SECRET || '',
		authorizationEndpoint: 'https://accounts.google.com/o/oauth2/v2/auth',
		tokenEndpoint: 'https://oauth2.googleapis.com/token',
		userInfoEndpoint: 'https://www.googleapis.com/oauth2/v2/userinfo',
		scopes: ['openid', 'email', 'profile']
	};
}

// Generate a random state parameter for CSRF protection
export function generateOAuthStateChirho(): string {
	const bytes = new Uint8Array(32);
	crypto.getRandomValues(bytes);
	return encodeBase64url(bytes);
}

// Generate the Google OAuth authorization URL
export function getGoogleAuthUrlChirho(
	config: ReturnType<typeof getGoogleOAuthConfigChirho>,
	redirectUri: string,
	state: string
): string {
	const params = new URLSearchParams({
		client_id: config.clientId,
		redirect_uri: redirectUri,
		response_type: 'code',
		scope: config.scopes.join(' '),
		state: state,
		access_type: 'offline',
		prompt: 'consent'
	});

	return `${config.authorizationEndpoint}?${params.toString()}`;
}

// Exchange authorization code for tokens
export async function exchangeCodeForTokensChirho(
	config: ReturnType<typeof getGoogleOAuthConfigChirho>,
	code: string,
	redirectUri: string
): Promise<{
	access_token: string;
	refresh_token?: string;
	expires_in: number;
	id_token?: string;
}> {
	const response = await fetch(config.tokenEndpoint, {
		method: 'POST',
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		body: new URLSearchParams({
			client_id: config.clientId,
			client_secret: config.clientSecret,
			code: code,
			grant_type: 'authorization_code',
			redirect_uri: redirectUri
		})
	});

	if (!response.ok) {
		const error = await response.text();
		throw new Error(`Failed to exchange code for tokens: ${error}`);
	}

	return response.json();
}

// Get user info from Google
export async function getGoogleUserInfoChirho(
	config: ReturnType<typeof getGoogleOAuthConfigChirho>,
	accessToken: string
): Promise<{
	id: string;
	email: string;
	verified_email: boolean;
	name: string;
	given_name?: string;
	family_name?: string;
	picture?: string;
}> {
	const response = await fetch(config.userInfoEndpoint, {
		headers: {
			Authorization: `Bearer ${accessToken}`
		}
	});

	if (!response.ok) {
		const error = await response.text();
		throw new Error(`Failed to get user info: ${error}`);
	}

	return response.json();
}

// Generate a username from email (for new OAuth users)
export function generateUsernameFromEmailChirho(email: string): string {
	const baseUsername = email.split('@')[0].toLowerCase().replace(/[^a-z0-9]/g, '');
	const suffix = Math.random().toString(36).substring(2, 6);
	return `${baseUsername}_${suffix}`;
}
