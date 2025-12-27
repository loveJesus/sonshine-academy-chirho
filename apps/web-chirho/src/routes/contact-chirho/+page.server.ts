// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { Actions } from './$types';
import { fail } from '@sveltejs/kit';

export const actions: Actions = {
	default: async ({ request, platform, locals }) => {
		const formDataChirho = await request.formData();

		const nameChirho = formDataChirho.get('name')?.toString().trim();
		const emailChirho = formDataChirho.get('email')?.toString().trim();
		const subjectChirho = formDataChirho.get('subject')?.toString().trim();
		const messageChirho = formDataChirho.get('message')?.toString().trim();
		const newsletterChirho = formDataChirho.get('newsletter') === 'on';

		// Validate required fields
		if (!nameChirho || !emailChirho || !subjectChirho || !messageChirho) {
			return fail(400, {
				errorChirho: 'Please fill in all required fields.'
			});
		}

		// Validate email format
		const emailRegexChirho = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		if (!emailRegexChirho.test(emailChirho)) {
			return fail(400, {
				errorChirho: 'Please enter a valid email address.'
			});
		}

		// Validate message length
		if (messageChirho.length < 10) {
			return fail(400, {
				errorChirho: 'Please provide more detail in your message (at least 10 characters).'
			});
		}

		if (messageChirho.length > 5000) {
			return fail(400, {
				errorChirho: 'Message is too long. Please keep it under 5000 characters.'
			});
		}

		try {
			const dbChirho = platform?.env?.DB_CHIRHO;
			if (!dbChirho) {
				console.error('Database not available');
				return fail(500, {
					errorChirho: 'Service temporarily unavailable. Please try again later.'
				});
			}

			// Store the contact submission in the database
			const contactIdChirho = crypto.randomUUID();
			const userIdChirho = locals.userChirho?.userId || null;

			await dbChirho.prepare(`
				INSERT INTO contact_submissions_chirho (
					contact_id_chirho,
					user_id_chirho,
					name_chirho,
					email_chirho,
					subject_chirho,
					message_chirho,
					newsletter_opt_in_chirho,
					created_at_chirho
				) VALUES (?, ?, ?, ?, ?, ?, ?, unixepoch())
			`).bind(
				contactIdChirho,
				userIdChirho,
				nameChirho,
				emailChirho,
				subjectChirho,
				messageChirho,
				newsletterChirho ? 1 : 0
			).run();

			// TODO: Send email notification when Remail API key is available
			// For now, just store in database

			return { successChirho: true };
		} catch (errorChirho) {
			console.error('Failed to submit contact form:', errorChirho);
			return fail(500, {
				errorChirho: 'Failed to send message. Please try again later.'
			});
		}
	}
};
