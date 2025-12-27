// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { fail } from '@sveltejs/kit';

/** @type {import('./$types').PageServerLoad} */
export async function load({ platform, locals }) {
	const dbChirho = platform?.env?.DB_CHIRHO;

	if (!dbChirho) {
		return {
			payloadsChirho: [],
			statsChirho: {
				totalChirho: 0,
				activeChirho: 0,
				weeksWithPayloadsChirho: 0,
				totalSizeMBChirho: '0'
			}
		};
	}

	try {
		// Fetch all payloads
		const payloadsResultChirho = await dbChirho
			.prepare(`
				SELECT
					payload_id_chirho AS payloadId,
					week_number_chirho AS weekNumber,
					session_number_chirho AS sessionNumber,
					name_chirho AS name,
					description_chirho AS description,
					r2_key_chirho AS r2Key,
					file_count_chirho AS fileCount,
					total_size_bytes_chirho AS totalSizeBytes,
					auto_execute_chirho AS autoExecute,
					is_active_chirho AS isActive,
					created_at_chirho AS createdAt
				FROM payloads_chirho
				ORDER BY week_number_chirho ASC, session_number_chirho ASC
			`)
			.all();

		const payloadsChirho = payloadsResultChirho.results || [];

		// Calculate stats
		const totalChirho = payloadsChirho.length;
		const activeChirho = payloadsChirho.filter((p) => p.isActive).length;
		const weeksSetChirho = new Set(payloadsChirho.map((p) => p.weekNumber));
		const weeksWithPayloadsChirho = weeksSetChirho.size;
		const totalBytesChirho = payloadsChirho.reduce((sumChirho, pChirho) => sumChirho + (Number(pChirho.totalSizeBytes) || 0), 0);
		const totalSizeMBChirho = (totalBytesChirho / (1024 * 1024)).toFixed(2);

		return {
			payloadsChirho,
			statsChirho: {
				totalChirho,
				activeChirho,
				weeksWithPayloadsChirho,
				totalSizeMBChirho
			}
		};
	} catch (errorChirho) {
		console.error('Error loading payloads:', errorChirho);
		return {
			payloadsChirho: [],
			statsChirho: {
				totalChirho: 0,
				activeChirho: 0,
				weeksWithPayloadsChirho: 0,
				totalSizeMBChirho: '0'
			}
		};
	}
}

/** @type {import('./$types').Actions} */
export const actions = {
	createPayloadChirho: async ({ request, platform }) => {
		const dbChirho = platform?.env?.DB_CHIRHO;
		// @ts-ignore - PAYLOADS_BUCKET_CHIRHO may not be in type definitions yet
		const r2BucketChirho = platform?.env?.PAYLOADS_BUCKET_CHIRHO || platform?.env?.R2_CHIRHO;

		if (!dbChirho) {
			return fail(500, { errorChirho: 'Database not available' });
		}

		try {
			const formDataChirho = await request.formData();

			const weekChirho = parseInt(String(formDataChirho.get('weekChirho') || '0'), 10);
			const sessionChirho = parseInt(String(formDataChirho.get('sessionChirho') || '0'), 10);
			const payloadNameChirho = String(formDataChirho.get('payloadNameChirho') || '');
			const payloadDescriptionChirho = String(formDataChirho.get('payloadDescriptionChirho') || '');
			const shellScriptChirho = String(formDataChirho.get('shellScriptChirho') || '');
			const autoExecuteChirho = formDataChirho.get('autoExecuteChirho') === 'on';
			const filesChirho = formDataChirho.getAll('payloadFilesChirho');

			if (!weekChirho || !sessionChirho || !payloadNameChirho) {
				return fail(400, { errorChirho: 'Week, session, and name are required' });
			}

			const payloadIdChirho = crypto.randomUUID();
			const r2KeyPrefixChirho = `week-${String(weekChirho).padStart(2, '0')}/session-${sessionChirho}`;

			let fileCountChirho = 0;
			let totalSizeBytesChirho = 0;

			// Upload to R2 if bucket is available
			if (r2BucketChirho) {
				// Upload shell script
				if (shellScriptChirho) {
					const shellKeyChirho = `${r2KeyPrefixChirho}/payload.sh`;
					const shellBytesChirho = new TextEncoder().encode(shellScriptChirho);
					await r2BucketChirho.put(shellKeyChirho, shellBytesChirho, {
						customMetadata: {
							payloadId: payloadIdChirho,
							contentType: 'text/x-shellscript'
						}
					});
					fileCountChirho++;
					totalSizeBytesChirho += shellBytesChirho.length;
				}

				// Upload other files
				for (const fileEntryChirho of filesChirho) {
					// Check if it's a File object (not a string)
					if (fileEntryChirho && typeof fileEntryChirho !== 'string' && 'size' in fileEntryChirho) {
						const fileChirho = /** @type {File} */ (fileEntryChirho);
						if (fileChirho.size > 0) {
							const fileKeyChirho = `${r2KeyPrefixChirho}/files/${fileChirho.name}`;
							const fileBufferChirho = await fileChirho.arrayBuffer();
							await r2BucketChirho.put(fileKeyChirho, fileBufferChirho, {
								customMetadata: {
									payloadId: payloadIdChirho,
									contentType: fileChirho.type || 'application/octet-stream'
								}
							});
							fileCountChirho++;
							totalSizeBytesChirho += fileChirho.size;
						}
					}
				}
			}

			// Insert into database
			await dbChirho
				.prepare(`
					INSERT INTO payloads_chirho (
						payload_id_chirho,
						week_number_chirho,
						session_number_chirho,
						name_chirho,
						description_chirho,
						r2_key_chirho,
						file_count_chirho,
						total_size_bytes_chirho,
						auto_execute_chirho,
						is_active_chirho
					) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
				`)
				.bind(
					payloadIdChirho,
					weekChirho,
					sessionChirho,
					payloadNameChirho,
					payloadDescriptionChirho,
					r2KeyPrefixChirho,
					fileCountChirho,
					totalSizeBytesChirho,
					autoExecuteChirho ? 1 : 0,
					1 // Active by default
				)
				.run();

			return {
				successChirho: true,
				actionChirho: 'createPayloadChirho',
				nameChirho: payloadNameChirho
			};
		} catch (errorChirho) {
			console.error('Error creating payload:', errorChirho);
			const errMsgChirho = errorChirho instanceof Error ? errorChirho.message : String(errorChirho);
			return fail(500, { errorChirho: 'Failed to create payload: ' + errMsgChirho });
		}
	},

	deletePayloadChirho: async ({ request, platform }) => {
		const dbChirho = platform?.env?.DB_CHIRHO;
		// @ts-ignore - PAYLOADS_BUCKET_CHIRHO may not be in type definitions yet
		const r2BucketChirho = platform?.env?.PAYLOADS_BUCKET_CHIRHO || platform?.env?.R2_CHIRHO;

		if (!dbChirho) {
			return fail(500, { errorChirho: 'Database not available' });
		}

		try {
			const formDataChirho = await request.formData();
			const payloadIdChirho = formDataChirho.get('payloadIdChirho');

			if (!payloadIdChirho) {
				return fail(400, { errorChirho: 'Payload ID is required' });
			}

			// Get the R2 key prefix before deleting
			const payloadChirho = await dbChirho
				.prepare('SELECT r2_key_chirho FROM payloads_chirho WHERE payload_id_chirho = ?')
				.bind(payloadIdChirho)
				.first();

			if (!payloadChirho) {
				return fail(404, { errorChirho: 'Payload not found' });
			}

			// Delete from R2 if bucket available
			if (r2BucketChirho && payloadChirho.r2_key_chirho) {
				// List and delete all objects with this prefix
				const listResultChirho = await r2BucketChirho.list({
					prefix: payloadChirho.r2_key_chirho + '/'
				});

				for (const objChirho of listResultChirho.objects || []) {
					await r2BucketChirho.delete(objChirho.key);
				}
			}

			// Delete from database
			await dbChirho
				.prepare('DELETE FROM payloads_chirho WHERE payload_id_chirho = ?')
				.bind(payloadIdChirho)
				.run();

			return {
				successChirho: true,
				actionChirho: 'deletePayloadChirho'
			};
		} catch (errorChirho) {
			console.error('Error deleting payload:', errorChirho);
			return fail(500, { errorChirho: 'Failed to delete payload' });
		}
	},

	toggleActiveChirho: async ({ request, platform }) => {
		const dbChirho = platform?.env?.DB_CHIRHO;

		if (!dbChirho) {
			return fail(500, { errorChirho: 'Database not available' });
		}

		try {
			const formDataChirho = await request.formData();
			const payloadIdChirho = formDataChirho.get('payloadIdChirho');
			const isActiveChirho = formDataChirho.get('isActiveChirho') === 'true' ? 0 : 1;

			await dbChirho
				.prepare('UPDATE payloads_chirho SET is_active_chirho = ? WHERE payload_id_chirho = ?')
				.bind(isActiveChirho, payloadIdChirho)
				.run();

			return { successChirho: true };
		} catch (errorChirho) {
			console.error('Error toggling payload status:', errorChirho);
			return fail(500, { errorChirho: 'Failed to update payload status' });
		}
	}
};
