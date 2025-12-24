// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

/**
 * Payload Import Script
 *
 * Imports payload scripts from the payloads directory into the D1 database.
 *
 * Usage:
 *   bun run scripts/import_payloads_chirho.ts
 */

import { readFileSync, readdirSync, writeFileSync } from 'fs';
import { join, basename } from 'path';
import { nanoid } from 'nanoid';

// Path to payload scripts
const PAYLOADS_DIR_CHIRHO =
	'/Volumes/ENC_4TB_WDB_CHIRHO/dev-aleluya/friends-aleluya/sonshine-chirho/courses-chirho/2025-fall-course-chirho/sonshine-2025-payloads-chirho/payloads-chirho';

interface PayloadInfoChirho {
	fileName: string;
	week: number;
	session: number;
	name: string;
	description: string;
	scriptContent: string;
	orderIndex: number;
}

function parsePayloadFileNameChirho(fileNameChirho: string): { week: number; session: number } | null {
	// Pattern: payload-week02-session1-chirho.sh
	const matchChirho = fileNameChirho.match(/payload-week(\d+)-session(\d+)([a-z]?)-chirho\.sh/);
	if (!matchChirho) return null;

	return {
		week: parseInt(matchChirho[1], 10),
		session: parseInt(matchChirho[2], 10)
	};
}

function extractDescriptionChirho(contentChirho: string): string {
	// Try to find a description comment at the top of the file
	const linesChirho = contentChirho.split('\n');
	for (const lineChirho of linesChirho.slice(0, 10)) {
		if (lineChirho.startsWith('# Payload for')) {
			return lineChirho.replace(/^#\s*/, '');
		}
		if (lineChirho.startsWith('# This script')) {
			return lineChirho.replace(/^#\s*/, '');
		}
	}
	return 'Terminal automation script';
}

function loadPayloadsChirho(): PayloadInfoChirho[] {
	const filesChirho = readdirSync(PAYLOADS_DIR_CHIRHO);
	const payloadsChirho: PayloadInfoChirho[] = [];

	for (const fileNameChirho of filesChirho) {
		// Skip symlinks and non-.sh files
		if (!fileNameChirho.endsWith('.sh') || fileNameChirho === 'latest-payload-chirho.sh') {
			continue;
		}

		const parsedChirho = parsePayloadFileNameChirho(fileNameChirho);
		if (!parsedChirho) {
			console.warn(`⚠️ Skipping unrecognized file: ${fileNameChirho}`);
			continue;
		}

		const filePathChirho = join(PAYLOADS_DIR_CHIRHO, fileNameChirho);
		const contentChirho = readFileSync(filePathChirho, 'utf-8');

		// Calculate order index (week * 10 + session)
		const orderIndexChirho = parsedChirho.week * 10 + parsedChirho.session;

		// Generate a readable name
		const nameChirho = `Week ${parsedChirho.week} Session ${parsedChirho.session}`;

		payloadsChirho.push({
			fileName: fileNameChirho,
			week: parsedChirho.week,
			session: parsedChirho.session,
			name: nameChirho,
			description: extractDescriptionChirho(contentChirho),
			scriptContent: contentChirho,
			orderIndex: orderIndexChirho
		});
	}

	// Sort by order index
	payloadsChirho.sort((a, b) => a.orderIndex - b.orderIndex);

	return payloadsChirho;
}

function generateSqlChirho(payloadsChirho: PayloadInfoChirho[]): string {
	const nowChirho = Math.floor(Date.now() / 1000);
	const sqlLinesChirho: string[] = [];

	// Header
	sqlLinesChirho.push('-- For God so loved the world that he gave his only begotten Son,');
	sqlLinesChirho.push(
		'-- that whosoever believeth in him should not perish, but have everlasting life.'
	);
	sqlLinesChirho.push('-- John 3:16 (KJV)');
	sqlLinesChirho.push('');
	sqlLinesChirho.push('-- Payload Import Script - Generated ' + new Date().toISOString());
	sqlLinesChirho.push('-- Total payloads: ' + payloadsChirho.length);
	sqlLinesChirho.push('');
	sqlLinesChirho.push('BEGIN TRANSACTION;');
	sqlLinesChirho.push('');

	// Escape single quotes for SQL
	const escapeChirho = (strChirho: string) => strChirho.replace(/'/g, "''");

	for (const payloadChirho of payloadsChirho) {
		const payloadIdChirho = nanoid(21);

		sqlLinesChirho.push(`-- Payload: ${payloadChirho.name} (${payloadChirho.fileName})`);
		sqlLinesChirho.push(`INSERT INTO payloads_chirho (`);
		sqlLinesChirho.push(
			`  payload_id_chirho, name_chirho, description_chirho, version_chirho,`
		);
		sqlLinesChirho.push(`  script_content_chirho, script_type_chirho, execution_command_chirho,`);
		sqlLinesChirho.push(`  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho`);
		sqlLinesChirho.push(`) VALUES (`);
		sqlLinesChirho.push(`  '${payloadIdChirho}',`);
		sqlLinesChirho.push(`  '${escapeChirho(payloadChirho.name)}',`);
		sqlLinesChirho.push(`  '${escapeChirho(payloadChirho.description)}',`);
		sqlLinesChirho.push(`  '1.0.0',`);
		sqlLinesChirho.push(`  '${escapeChirho(payloadChirho.scriptContent)}',`);
		sqlLinesChirho.push(`  'bash',`);
		sqlLinesChirho.push(`  'bash ${payloadChirho.fileName}',`);
		sqlLinesChirho.push(`  ${payloadChirho.orderIndex},`);
		sqlLinesChirho.push(`  1,`);
		sqlLinesChirho.push(`  ${nowChirho},`);
		sqlLinesChirho.push(`  ${nowChirho}`);
		sqlLinesChirho.push(`);`);
		sqlLinesChirho.push('');
	}

	sqlLinesChirho.push('COMMIT;');
	sqlLinesChirho.push('');
	sqlLinesChirho.push('-- Import complete!');

	return sqlLinesChirho.join('\n');
}

function mainChirho() {
	console.log('🚀 Payload Import Script');
	console.log('========================');
	console.log('');

	// Load all payloads
	const payloadsChirho = loadPayloadsChirho();
	console.log(`📊 Total payloads loaded: ${payloadsChirho.length}`);
	console.log('');

	// Show summary
	const weeksChirho = new Set(payloadsChirho.map((p) => p.week));
	console.log(`📅 Weeks covered: ${Math.min(...weeksChirho)} - ${Math.max(...weeksChirho)}`);
	console.log('');

	// Generate SQL
	const sqlChirho = generateSqlChirho(payloadsChirho);

	// Write to file
	const outputPathChirho = join(
		'/Volumes/ENC_4TB_WDB_CHIRHO/dev-aleluya/friends-aleluya/sonshine-chirho/courses-chirho/sonshine-academy-chirho/apps/web-chirho/migrations',
		'0005_import_payloads_chirho.sql'
	);

	writeFileSync(outputPathChirho, sqlChirho);

	console.log(`✅ SQL migration written to: ${outputPathChirho}`);
	console.log('');
	console.log('To apply the migration, run:');
	console.log('  npx wrangler d1 migrations apply sonshine-coding-school-chirho --local');
	console.log('');
	console.log('🙏 JESUS CHRIST IS LORD');
}

// Run the script
mainChirho();
