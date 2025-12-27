// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { sha256 } from '@oslojs/crypto/sha2';
import { encodeBase64url, encodeHexLowerCase } from '@oslojs/encoding';
import { eq } from 'drizzle-orm';
import type { RequestEvent } from '@sveltejs/kit';
import type { DbChirho } from './db';
import {
	sessionChirho,
	userChirho,
	passwordResetTokenChirho,
	type Session,
	type User
} from './db/schema';

const DAY_IN_MS = 1000 * 60 * 60 * 24;
const SESSION_DURATION_DAYS = 30;
const SESSION_RENEWAL_THRESHOLD_DAYS = 15;

export const SESSION_COOKIE_NAME = 'sonshine-session-chirho';

// Generate a random session token
export function generateSessionTokenChirho(): string {
	const bytes = new Uint8Array(18);
	crypto.getRandomValues(bytes);
	return encodeBase64url(bytes);
}

// Hash the session token to create a session ID
function hashSessionTokenChirho(token: string): string {
	const bytes = new TextEncoder().encode(token);
	const hash = sha256(bytes);
	return encodeHexLowerCase(hash);
}

// Create a new session
export async function createSessionChirho(
	db: DbChirho,
	token: string,
	userId: string,
	userAgent?: string,
	ipAddress?: string
): Promise<Session> {
	const sessionId = hashSessionTokenChirho(token);
	const expiresAt = new Date(Date.now() + DAY_IN_MS * SESSION_DURATION_DAYS);

	const session: Session = {
		sessionId,
		userId,
		expiresAt,
		userAgent: userAgent ?? null,
		ipAddress: ipAddress ?? null
	};

	await db.insert(sessionChirho).values(session);
	return session;
}

// Validate a session token and optionally renew if close to expiration
export async function validateSessionTokenChirho(
	db: DbChirho,
	token: string
): Promise<{ session: Session; user: User } | null> {
	const sessionId = hashSessionTokenChirho(token);

	const result = await db
		.select({
			session: sessionChirho,
			user: userChirho
		})
		.from(sessionChirho)
		.innerJoin(userChirho, eq(sessionChirho.userId, userChirho.userId))
		.where(eq(sessionChirho.sessionId, sessionId))
		.limit(1);

	if (result.length === 0) {
		return null;
	}

	const { session, user } = result[0];

	// Check if session has expired
	if (Date.now() >= session.expiresAt.getTime()) {
		await db.delete(sessionChirho).where(eq(sessionChirho.sessionId, sessionId));
		return null;
	}

	// Renew session if within renewal threshold
	const renewalThreshold = Date.now() + DAY_IN_MS * SESSION_RENEWAL_THRESHOLD_DAYS;
	if (session.expiresAt.getTime() < renewalThreshold) {
		const newExpiresAt = new Date(Date.now() + DAY_IN_MS * SESSION_DURATION_DAYS);
		await db
			.update(sessionChirho)
			.set({ expiresAt: newExpiresAt })
			.where(eq(sessionChirho.sessionId, sessionId));
		session.expiresAt = newExpiresAt;
	}

	return { session, user };
}

// Invalidate a session (logout)
export async function invalidateSessionChirho(db: DbChirho, sessionId: string): Promise<void> {
	await db.delete(sessionChirho).where(eq(sessionChirho.sessionId, sessionId));
}

// Invalidate all sessions for a user
export async function invalidateAllUserSessionsChirho(db: DbChirho, userId: string): Promise<void> {
	await db.delete(sessionChirho).where(eq(sessionChirho.userId, userId));
}

// Set the session cookie
export function setSessionTokenCookieChirho(event: RequestEvent, token: string): void {
	event.cookies.set(SESSION_COOKIE_NAME, token, {
		httpOnly: true,
		sameSite: 'lax',
		path: '/',
		maxAge: 60 * 60 * 24 * SESSION_DURATION_DAYS,
		secure: event.url.protocol === 'https:'
	});
}

// Delete the session cookie
export function deleteSessionTokenCookieChirho(event: RequestEvent): void {
	event.cookies.delete(SESSION_COOKIE_NAME, {
		path: '/'
	});
}

// Hash a password using SHA-256 (in production, use bcrypt or argon2)
export async function hashPasswordChirho(password: string): Promise<string> {
	const bytes = new TextEncoder().encode(password);
	const hash = sha256(bytes);
	return encodeHexLowerCase(hash);
}

// Verify a password against a hash
export async function verifyPasswordChirho(password: string, hash: string): Promise<boolean> {
	const passwordHash = await hashPasswordChirho(password);
	return passwordHash === hash;
}

// Check if a user has a specific role or higher
export function hasRoleChirho(
	user: User | null,
	requiredRole: 'student' | 'instructor' | 'org_admin' | 'platform_admin'
): boolean {
	if (!user) return false;

	const roleHierarchy: Record<string, number> = {
		student: 1,
		instructor: 2,
		org_admin: 3,
		platform_admin: 4
	};

	const userRoleLevel = roleHierarchy[user.role] ?? 0;
	const requiredRoleLevel = roleHierarchy[requiredRole] ?? 0;

	return userRoleLevel >= requiredRoleLevel;
}

// Check if a user is an admin (org_admin or platform_admin)
export function isAdminChirho(user: User | null): boolean {
	return hasRoleChirho(user, 'org_admin');
}

// Check if a user is a platform admin
export function isPlatformAdminChirho(user: User | null): boolean {
	return hasRoleChirho(user, 'platform_admin');
}

// ============================================================================
// PASSWORD RESET FUNCTIONS
// ============================================================================

const PASSWORD_RESET_TOKEN_DURATION_HOURS = 1;

// Generate a password reset token
export function generatePasswordResetTokenChirho(): string {
	const bytes = new Uint8Array(32);
	crypto.getRandomValues(bytes);
	return encodeBase64url(bytes);
}

// Hash the reset token
function hashResetTokenChirho(token: string): string {
	const bytes = new TextEncoder().encode(token);
	const hash = sha256(bytes);
	return encodeHexLowerCase(hash);
}

// Create a password reset token for a user
export async function createPasswordResetTokenChirho(
	db: DbChirho,
	userId: string
): Promise<string> {
	// Invalidate any existing tokens for this user
	await db.delete(passwordResetTokenChirho).where(eq(passwordResetTokenChirho.userId, userId));

	const token = generatePasswordResetTokenChirho();
	const tokenHash = hashResetTokenChirho(token);
	const tokenId = crypto.randomUUID();
	const expiresAt = new Date(Date.now() + PASSWORD_RESET_TOKEN_DURATION_HOURS * 60 * 60 * 1000);

	await db.insert(passwordResetTokenChirho).values({
		tokenId,
		userId,
		tokenHash,
		expiresAt
	});

	return token;
}

// Validate a password reset token
export async function validatePasswordResetTokenChirho(
	db: DbChirho,
	token: string
): Promise<{ valid: boolean; userId?: string; tokenId?: string }> {
	const tokenHash = hashResetTokenChirho(token);

	const results = await db
		.select()
		.from(passwordResetTokenChirho)
		.where(eq(passwordResetTokenChirho.tokenHash, tokenHash))
		.limit(1);

	if (results.length === 0) {
		return { valid: false };
	}

	const resetToken = results[0];

	// Check if token is expired
	if (Date.now() >= resetToken.expiresAt.getTime()) {
		// Clean up expired token
		await db
			.delete(passwordResetTokenChirho)
			.where(eq(passwordResetTokenChirho.tokenId, resetToken.tokenId));
		return { valid: false };
	}

	// Check if token was already used
	if (resetToken.usedAt) {
		return { valid: false };
	}

	return { valid: true, userId: resetToken.userId, tokenId: resetToken.tokenId };
}

// Use a password reset token (mark as used and update password)
export async function usePasswordResetTokenChirho(
	db: DbChirho,
	tokenId: string,
	userId: string,
	newPassword: string
): Promise<boolean> {
	const passwordHash = await hashPasswordChirho(newPassword);

	// Update password
	await db.update(userChirho).set({ passwordHash }).where(eq(userChirho.userId, userId));

	// Mark token as used
	await db
		.update(passwordResetTokenChirho)
		.set({ usedAt: new Date() })
		.where(eq(passwordResetTokenChirho.tokenId, tokenId));

	// Invalidate all sessions for security
	await invalidateAllUserSessionsChirho(db, userId);

	return true;
}
