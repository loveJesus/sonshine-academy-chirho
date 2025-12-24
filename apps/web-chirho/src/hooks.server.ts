// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { Handle } from '@sveltejs/kit';
import { createDbChirho } from '$lib/server/db';
import {
	SESSION_COOKIE_NAME,
	validateSessionTokenChirho,
	setSessionTokenCookieChirho,
	deleteSessionTokenCookieChirho,
	isAdminChirho
} from '$lib/server/auth_chirho';

export const handle: Handle = async ({ event, resolve }) => {
	// Initialize database from Cloudflare D1
	if (event.platform?.env?.DB_CHIRHO) {
		event.locals.dbChirho = createDbChirho(event.platform.env.DB_CHIRHO);
	} else {
		// For local development without D1, we'll handle this later
		console.warn('DB_CHIRHO not available in platform.env');
	}

	// Initialize user as null
	event.locals.userChirho = null;
	event.locals.sessionChirho = null;

	// Get session token from cookie
	const token = event.cookies.get(SESSION_COOKIE_NAME);

	if (token && event.locals.dbChirho) {
		const result = await validateSessionTokenChirho(event.locals.dbChirho, token);

		if (result) {
			event.locals.sessionChirho = result.session;
			event.locals.userChirho = result.user;

			// Refresh the cookie to extend session
			setSessionTokenCookieChirho(event, token);
		} else {
			// Invalid or expired session - delete cookie
			deleteSessionTokenCookieChirho(event);
		}
	}

	// Protect admin routes
	if (event.url.pathname.startsWith('/admin-chirho')) {
		if (!isAdminChirho(event.locals.userChirho)) {
			return new Response('Unauthorized', { status: 401 });
		}
	}

	// Protect instructor routes
	if (event.url.pathname.startsWith('/instructor-chirho')) {
		const user = event.locals.userChirho;
		if (!user || (user.role !== 'instructor' && user.role !== 'org_admin' && user.role !== 'platform_admin')) {
			return new Response('Unauthorized', { status: 401 });
		}
	}

	// Protect authenticated routes (dashboard, courses, terminal, etc.)
	const protectedPaths = ['/dashboard-chirho', '/courses-chirho', '/terminal-chirho', '/quests-chirho'];
	if (protectedPaths.some((path) => event.url.pathname.startsWith(path))) {
		if (!event.locals.userChirho) {
			return new Response(null, {
				status: 302,
				headers: {
					Location: `/auth-chirho/login?redirect=${encodeURIComponent(event.url.pathname)}`
				}
			});
		}
	}

	const response = await resolve(event);
	return response;
};
