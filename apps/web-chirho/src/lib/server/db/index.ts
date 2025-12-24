// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { drizzle } from 'drizzle-orm/d1';
import * as schema from './schema';

export function createDbChirho(d1: D1Database) {
	return drizzle(d1, { schema });
}

export type DbChirho = ReturnType<typeof createDbChirho>;

export * from './schema';
