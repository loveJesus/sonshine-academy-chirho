// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { redirect } from '@sveltejs/kit';
import type { LayoutServerLoad } from './$types';

export const load: LayoutServerLoad = async ({ locals }) => {
	if (!locals.userChirho) {
		redirect(302, '/auth-chirho/login?redirect=/admin-chirho');
	}

	if (locals.userChirho.role !== 'platform_admin') {
		redirect(302, '/dashboard-chirho');
	}

	return {
		adminUserChirho: {
			username: locals.userChirho.username,
			displayName: locals.userChirho.displayName,
			role: locals.userChirho.role
		}
	};
};
