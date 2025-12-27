// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { json } from '@sveltejs/kit';
import type { RequestHandler } from './$types';
import { seedCoursesChirho } from '$lib/server/db/seed-courses-chirho';

export const POST: RequestHandler = async ({ locals }) => {
	// Require platform admin
	if (!locals.userChirho || locals.userChirho.role !== 'platform_admin') {
		return json({ error: 'Unauthorized' }, { status: 401 });
	}

	if (!locals.dbChirho) {
		return json({ error: 'Database not available' }, { status: 500 });
	}

	try {
		await seedCoursesChirho(locals.dbChirho);
		return json({ success: true, message: 'Database seeded successfully!' });
	} catch (error) {
		console.error('Seed error:', error);
		return json(
			{ error: 'Failed to seed database', details: String(error) },
			{ status: 500 }
		);
	}
};
