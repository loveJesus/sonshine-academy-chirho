// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail } from '@sveltejs/kit';
import { eq, desc } from 'drizzle-orm';
import type { Actions, PageServerLoad } from './$types';
import { userChirho, organizationChirho } from '$lib/server/db/schema';
import { isPlatformAdminChirho } from '$lib/server/auth_chirho';

export const load: PageServerLoad = async ({ locals, url }) => {
	if (!locals.dbChirho) {
		return { usersChirho: [], organizationsChirho: [] };
	}

	const searchChirho = url.searchParams.get('search') || '';
	const roleFilterChirho = url.searchParams.get('role') || '';
	const pageChirho = parseInt(url.searchParams.get('page') || '1', 10);
	const limitChirho = 50;

	// Get users with filters
	let usersQueryChirho = locals.dbChirho
		.select({
			userId: userChirho.userId,
			username: userChirho.username,
			email: userChirho.email,
			displayName: userChirho.displayName,
			role: userChirho.role,
			organizationId: userChirho.organizationId,
			questCoinsBalance: userChirho.questCoinsBalance,
			createdAt: userChirho.createdAt
		})
		.from(userChirho)
		.orderBy(desc(userChirho.createdAt))
		.limit(limitChirho)
		.offset((pageChirho - 1) * limitChirho);

	const usersChirho = await usersQueryChirho;

	// Filter in memory for simplicity (D1 has limited query support)
	let filteredUsersChirho = usersChirho;

	if (searchChirho) {
		const searchLowerChirho = searchChirho.toLowerCase();
		filteredUsersChirho = filteredUsersChirho.filter(
			(uChirho) =>
				uChirho.username.toLowerCase().includes(searchLowerChirho) ||
				uChirho.email.toLowerCase().includes(searchLowerChirho) ||
				(uChirho.displayName && uChirho.displayName.toLowerCase().includes(searchLowerChirho))
		);
	}

	if (roleFilterChirho) {
		filteredUsersChirho = filteredUsersChirho.filter((uChirho) => uChirho.role === roleFilterChirho);
	}

	// Get organizations for dropdown
	const organizationsChirho = await locals.dbChirho
		.select({
			organizationId: organizationChirho.organizationId,
			name: organizationChirho.name
		})
		.from(organizationChirho);

	return {
		usersChirho: filteredUsersChirho,
		organizationsChirho,
		filtersChirho: {
			search: searchChirho,
			role: roleFilterChirho,
			page: pageChirho
		}
	};
};

export const actions: Actions = {
	updateRoleChirho: async ({ request, locals }) => {
		if (!locals.dbChirho || !locals.userChirho) {
			return fail(401, { errorChirho: 'Unauthorized' });
		}

		// Verify admin authorization
		if (!isPlatformAdminChirho(locals.userChirho)) {
			return fail(403, { errorChirho: 'Forbidden: Admin access required' });
		}

		const formDataChirho = await request.formData();
		const userIdChirho = formDataChirho.get('userIdChirho')?.toString();
		const newRoleChirho = formDataChirho.get('roleChirho')?.toString();

		if (!userIdChirho || !newRoleChirho) {
			return fail(400, { errorChirho: 'Missing required fields' });
		}

		if (!['student', 'instructor', 'org_admin', 'platform_admin'].includes(newRoleChirho)) {
			return fail(400, { errorChirho: 'Invalid role' });
		}

		// Prevent demoting yourself
		if (userIdChirho === locals.userChirho.userId && newRoleChirho !== 'platform_admin') {
			return fail(400, { errorChirho: 'Cannot demote yourself' });
		}

		await locals.dbChirho
			.update(userChirho)
			.set({ role: newRoleChirho })
			.where(eq(userChirho.userId, userIdChirho));

		return { successChirho: true, actionChirho: 'updateRoleChirho' };
	},

	deleteUserChirho: async ({ request, locals }) => {
		if (!locals.dbChirho || !locals.userChirho) {
			return fail(401, { errorChirho: 'Unauthorized' });
		}

		// Verify admin authorization
		if (!isPlatformAdminChirho(locals.userChirho)) {
			return fail(403, { errorChirho: 'Forbidden: Admin access required' });
		}

		const formDataChirho = await request.formData();
		const userIdChirho = formDataChirho.get('userIdChirho')?.toString();

		if (!userIdChirho) {
			return fail(400, { errorChirho: 'Missing user ID' });
		}

		// Prevent deleting yourself
		if (userIdChirho === locals.userChirho.userId) {
			return fail(400, { errorChirho: 'Cannot delete yourself' });
		}

		await locals.dbChirho.delete(userChirho).where(eq(userChirho.userId, userIdChirho));

		return { successChirho: true, actionChirho: 'deleteUserChirho' };
	}
};
