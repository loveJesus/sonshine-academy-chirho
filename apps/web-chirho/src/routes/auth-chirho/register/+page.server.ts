// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail, redirect } from '@sveltejs/kit';
import { eq, or } from 'drizzle-orm';
import { nanoid } from 'nanoid';
import type { Actions, PageServerLoad } from './$types';
import { userChirho, organizationInviteCodeChirho, cohortChirho } from '$lib/server/db/schema';
import {
	createSessionChirho,
	generateSessionTokenChirho,
	setSessionTokenCookieChirho,
	hashPasswordChirho
} from '$lib/server/auth_chirho';
import { getEmailConfigChirho, sendWelcomeEmailChirho } from '$lib/server/email_chirho';

export const load: PageServerLoad = async ({ locals }) => {
	// Redirect if already logged in
	if (locals.userChirho) {
		redirect(302, '/dashboard-chirho');
	}
	return {};
};

export const actions: Actions = {
	default: async (event) => {
		const { request, locals } = event;
		const formData = await request.formData();

		const username = formData.get('username')?.toString().trim().toLowerCase();
		const email = formData.get('email')?.toString().trim().toLowerCase();
		const displayName = formData.get('displayName')?.toString().trim() || null;
		const password = formData.get('password')?.toString();
		const confirmPassword = formData.get('confirmPassword')?.toString();
		const inviteCode = formData.get('inviteCode')?.toString().trim().toUpperCase() || null;

		// Validation
		if (!username || !email || !password || !confirmPassword) {
			return fail(400, {
				error: 'Please fill in all required fields',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		// Username validation
		if (username.length < 3 || username.length > 30) {
			return fail(400, {
				error: 'Username must be between 3 and 30 characters',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		if (!/^[a-zA-Z0-9_-]+$/.test(username)) {
			return fail(400, {
				error: 'Username can only contain letters, numbers, underscores, and dashes',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		// Email validation
		if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
			return fail(400, {
				error: 'Please enter a valid email address',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		// Password validation
		if (password.length < 8) {
			return fail(400, {
				error: 'Password must be at least 8 characters',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		if (password !== confirmPassword) {
			return fail(400, {
				error: 'Passwords do not match',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		if (!locals.dbChirho) {
			return fail(500, {
				error: 'Database not available',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		// Check if username or email already exists
		const existingUsers = await locals.dbChirho
			.select()
			.from(userChirho)
			.where(or(eq(userChirho.username, username), eq(userChirho.email, email)))
			.limit(1);

		if (existingUsers.length > 0) {
			const existing = existingUsers[0];
			if (existing.username === username) {
				return fail(400, {
					error: 'This username is already taken',
					username,
					email,
					displayName,
					inviteCode
				});
			}
			return fail(400, {
				error: 'This email is already registered',
				username,
				email,
				displayName,
				inviteCode
			});
		}

		// Process invite code if provided
		let organizationId: string | null = null;
		let cohortId: string | null = null;

		if (inviteCode) {
			const inviteCodes = await locals.dbChirho
				.select()
				.from(organizationInviteCodeChirho)
				.where(eq(organizationInviteCodeChirho.code, inviteCode))
				.limit(1);

			if (inviteCodes.length === 0) {
				return fail(400, {
					error: 'Invalid invite code',
					username,
					email,
					displayName,
					inviteCode
				});
			}

			const invite = inviteCodes[0];

			// Check if invite is active and not expired
			if (!invite.isActive) {
				return fail(400, {
					error: 'This invite code is no longer active',
					username,
					email,
					displayName,
					inviteCode
				});
			}

			if (invite.expiresAt && invite.expiresAt < new Date()) {
				return fail(400, {
					error: 'This invite code has expired',
					username,
					email,
					displayName,
					inviteCode
				});
			}

			if (invite.maxUses && (invite.currentUses || 0) >= invite.maxUses) {
				return fail(400, {
					error: 'This invite code has reached its usage limit',
					username,
					email,
					displayName,
					inviteCode
				});
			}

			organizationId = invite.organizationId;
			cohortId = invite.cohortId;

			// Increment usage count
			await locals.dbChirho
				.update(organizationInviteCodeChirho)
				.set({ currentUses: (invite.currentUses || 0) + 1 })
				.where(eq(organizationInviteCodeChirho.inviteCodeId, invite.inviteCodeId));

			// Increment cohort enrollment if applicable
			if (cohortId) {
				const cohorts = await locals.dbChirho
					.select()
					.from(cohortChirho)
					.where(eq(cohortChirho.cohortId, cohortId))
					.limit(1);

				if (cohorts.length > 0) {
					await locals.dbChirho
						.update(cohortChirho)
						.set({ currentEnrollment: (cohorts[0].currentEnrollment || 0) + 1 })
						.where(eq(cohortChirho.cohortId, cohortId));
				}
			}
		}

		// Create user
		const userId = nanoid();
		const passwordHash = await hashPasswordChirho(password);

		await locals.dbChirho.insert(userChirho).values({
			userId,
			username,
			email,
			passwordHash,
			displayName,
			organizationId,
			cohortId,
			role: 'student'
		});

		// Create session
		const token = generateSessionTokenChirho();
		await createSessionChirho(
			locals.dbChirho,
			token,
			userId,
			request.headers.get('user-agent') ?? undefined,
			event.getClientAddress()
		);

		// Set cookie
		setSessionTokenCookieChirho(event, token);

		// Send welcome email (non-blocking)
		const emailConfigChirho = getEmailConfigChirho(event.platform?.env ?? {});
		if (emailConfigChirho) {
			// Fire and forget - don't block registration on email
			sendWelcomeEmailChirho(emailConfigChirho, email, displayName || username).catch((errChirho) => {
				console.error('Failed to send welcome email:', errChirho);
			});
		}

		// Redirect to dashboard
		redirect(302, '/dashboard-chirho');
	}
};
