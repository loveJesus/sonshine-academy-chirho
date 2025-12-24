// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { DbChirho } from '$lib/server/db';
import type { User, Session } from '$lib/server/db/schema';

declare global {
	namespace App {
		interface Error {
			message: string;
			code?: string;
		}

		interface Locals {
			dbChirho: DbChirho;
			userChirho: User | null;
			sessionChirho: Session | null;
		}

		interface PageData {
			userChirho?: User | null;
		}

		interface Platform {
			env: {
				DB_CHIRHO: D1Database;
				R2_CHIRHO: R2Bucket;
				ENVIRONMENT: string;
			};
			context: ExecutionContext;
			caches: CacheStorage;
		}
	}
}

export {};
