// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';
import { invalidateSessionChirho, deleteSessionTokenCookieChirho } from '$lib/server/auth_chirho';

export const load: PageServerLoad = async (event) => {
	const { locals } = event;

	if (locals.sessionChirho && locals.dbChirho) {
		await invalidateSessionChirho(locals.dbChirho, locals.sessionChirho.sessionId);
	}

	deleteSessionTokenCookieChirho(event);

	redirect(302, '/');
};
