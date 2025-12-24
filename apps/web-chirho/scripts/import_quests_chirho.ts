// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

/**
 * Quest Import Script
 *
 * Imports quests from JSON files into the D1 database.
 *
 * Usage:
 *   bun run scripts/import_quests_chirho.ts
 *
 * This script reads quest JSON files from the course directory and inserts
 * them into the quests_chirho and quest_tests_chirho tables.
 */

import { readFileSync, existsSync, writeFileSync } from 'fs';
import { join } from 'path';
import { nanoid } from 'nanoid';

// Quest JSON structure from files
interface QuestJsonChirho {
	title_chirho: string;
	description_chirho: string;
	instructions_chirho: string;
	starter_code_chirho: string;
	solution_code_chirho: string;
	header_verse_chirho: string;
	header_verse_filled_chirho: string;
	difficulty_level_chirho: 'beginner' | 'intermediate' | 'advanced';
	tests_chirho: Array<{
		test_name_chirho: string;
		test_code_chirho: string;
		is_visible_chirho: boolean;
	}>;
}

// Database insert format
interface QuestInsertChirho {
	quest_id_chirho: string;
	title_chirho: string;
	description_chirho: string;
	instructions_chirho: string;
	starter_code_chirho: string;
	solution_code_chirho: string;
	header_verse_chirho: string;
	difficulty_level_chirho: string;
	quest_type_chirho: string;
	coin_reward_chirho: number;
	bonus_coin_no_solution_view_chirho: number;
	order_index_chirho: number;
	is_active_chirho: number;
	created_at_chirho: number;
	updated_at_chirho: number;
}

interface QuestTestInsertChirho {
	test_id_chirho: string;
	quest_id_chirho: string;
	test_name_chirho: string;
	test_code_chirho: string;
	is_visible_chirho: number;
	test_order_chirho: number;
}

// Path to quest JSON files
const QUESTS_DIR_CHIRHO =
	'/Volumes/ENC_4TB_WDB_CHIRHO/dev-aleluya/friends-aleluya/sonshine-chirho/courses-chirho/2025-fall-course-chirho/svelte-sonshine-fall-2025-online-course-chirho/quests_chirho';

// Files to import in order
const QUEST_FILES_CHIRHO = [
	'first_15_chirho.json',
	'quests_to_30_chirho.json',
	'quests_to_45_chirho.json',
	'quests_to_65_chirho.json',
	'quests_to_80_chirho.json',
	'quests_to_100_chirho.json',
	'quest_trials_to_130_chirho.json'
];

// Coin rewards by difficulty
const COIN_REWARDS_CHIRHO: Record<string, number> = {
	beginner: 10,
	intermediate: 15,
	advanced: 25
};

const BONUS_COINS_CHIRHO: Record<string, number> = {
	beginner: 3,
	intermediate: 5,
	advanced: 10
};

function loadQuestsChirho(): QuestJsonChirho[] {
	const allQuestsChirho: QuestJsonChirho[] = [];

	for (const fileNameChirho of QUEST_FILES_CHIRHO) {
		const filePathChirho = join(QUESTS_DIR_CHIRHO, fileNameChirho);

		if (!existsSync(filePathChirho)) {
			console.warn(`⚠️ File not found: ${fileNameChirho}`);
			continue;
		}

		try {
			const contentChirho = readFileSync(filePathChirho, 'utf-8');
			const questsChirho: QuestJsonChirho[] = JSON.parse(contentChirho);
			allQuestsChirho.push(...questsChirho);
			console.log(`✅ Loaded ${questsChirho.length} quests from ${fileNameChirho}`);
		} catch (errorChirho) {
			console.error(`❌ Error loading ${fileNameChirho}:`, errorChirho);
		}
	}

	return allQuestsChirho;
}

function generateSqlChirho(questsChirho: QuestJsonChirho[]): string {
	const nowChirho = Math.floor(Date.now() / 1000);
	const sqlLinesChirho: string[] = [];

	// Header
	sqlLinesChirho.push('-- For God so loved the world that he gave his only begotten Son,');
	sqlLinesChirho.push(
		'-- that whosoever believeth in him should not perish, but have everlasting life.'
	);
	sqlLinesChirho.push('-- John 3:16 (KJV)');
	sqlLinesChirho.push('');
	sqlLinesChirho.push('-- Quest Import Script - Generated ' + new Date().toISOString());
	sqlLinesChirho.push('-- Total quests: ' + questsChirho.length);
	sqlLinesChirho.push('');
	sqlLinesChirho.push('BEGIN TRANSACTION;');
	sqlLinesChirho.push('');

	// Track titles to detect duplicates
	const seenTitlesChirho = new Set<string>();

	questsChirho.forEach((questChirho, indexChirho) => {
		// Skip duplicates
		if (seenTitlesChirho.has(questChirho.title_chirho)) {
			console.warn(`⚠️ Duplicate title skipped: ${questChirho.title_chirho}`);
			return;
		}
		seenTitlesChirho.add(questChirho.title_chirho);

		const questIdChirho = nanoid(21);
		const difficultyChirho = questChirho.difficulty_level_chirho || 'beginner';

		// Combine header verse with full text for better context
		const headerVerseChirho = questChirho.header_verse_filled_chirho || questChirho.header_verse_chirho;

		// Escape single quotes for SQL
		const escapeChirho = (strChirho: string) => strChirho.replace(/'/g, "''");

		sqlLinesChirho.push(`-- Quest ${indexChirho + 1}: ${questChirho.title_chirho}`);
		sqlLinesChirho.push(`INSERT INTO quests_chirho (`);
		sqlLinesChirho.push(
			`  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,`
		);
		sqlLinesChirho.push(`  starter_code_chirho, solution_code_chirho, header_verse_chirho,`);
		sqlLinesChirho.push(`  difficulty_level_chirho, quest_type_chirho,`);
		sqlLinesChirho.push(`  coin_reward_chirho, bonus_coin_no_solution_view_chirho,`);
		sqlLinesChirho.push(`  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho`);
		sqlLinesChirho.push(`) VALUES (`);
		sqlLinesChirho.push(`  '${questIdChirho}',`);
		sqlLinesChirho.push(`  '${escapeChirho(questChirho.title_chirho)}',`);
		sqlLinesChirho.push(`  '${escapeChirho(questChirho.description_chirho)}',`);
		sqlLinesChirho.push(`  '${escapeChirho(questChirho.instructions_chirho)}',`);
		sqlLinesChirho.push(`  '${escapeChirho(questChirho.starter_code_chirho)}',`);
		sqlLinesChirho.push(`  '${escapeChirho(questChirho.solution_code_chirho)}',`);
		sqlLinesChirho.push(`  '${escapeChirho(headerVerseChirho)}',`);
		sqlLinesChirho.push(`  '${difficultyChirho}',`);
		sqlLinesChirho.push(`  'javascript',`);
		sqlLinesChirho.push(`  ${COIN_REWARDS_CHIRHO[difficultyChirho] || 10},`);
		sqlLinesChirho.push(`  ${BONUS_COINS_CHIRHO[difficultyChirho] || 5},`);
		sqlLinesChirho.push(`  ${indexChirho},`);
		sqlLinesChirho.push(`  1,`);
		sqlLinesChirho.push(`  ${nowChirho},`);
		sqlLinesChirho.push(`  ${nowChirho}`);
		sqlLinesChirho.push(`);`);
		sqlLinesChirho.push('');

		// Insert tests for this quest
		if (questChirho.tests_chirho && questChirho.tests_chirho.length > 0) {
			questChirho.tests_chirho.forEach((testChirho, testIndexChirho) => {
				const testIdChirho = nanoid(21);

				sqlLinesChirho.push(`INSERT INTO quest_tests_chirho (`);
				sqlLinesChirho.push(`  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,`);
				sqlLinesChirho.push(`  is_visible_chirho, test_order_chirho`);
				sqlLinesChirho.push(`) VALUES (`);
				sqlLinesChirho.push(`  '${testIdChirho}',`);
				sqlLinesChirho.push(`  '${questIdChirho}',`);
				sqlLinesChirho.push(`  '${escapeChirho(testChirho.test_name_chirho)}',`);
				sqlLinesChirho.push(`  '${escapeChirho(testChirho.test_code_chirho)}',`);
				sqlLinesChirho.push(`  ${testChirho.is_visible_chirho ? 1 : 0},`);
				sqlLinesChirho.push(`  ${testIndexChirho}`);
				sqlLinesChirho.push(`);`);
				sqlLinesChirho.push('');
			});
		}
	});

	sqlLinesChirho.push('COMMIT;');
	sqlLinesChirho.push('');
	sqlLinesChirho.push('-- Import complete!');

	return sqlLinesChirho.join('\n');
}

function mainChirho() {
	console.log('🚀 Quest Import Script');
	console.log('======================');
	console.log('');

	// Load all quests
	const questsChirho = loadQuestsChirho();
	console.log('');
	console.log(`📊 Total quests loaded: ${questsChirho.length}`);
	console.log('');

	// Count tests
	const totalTestsChirho = questsChirho.reduce((sumChirho, qChirho) => sumChirho + (qChirho.tests_chirho?.length || 0), 0);
	console.log(`📝 Total test cases: ${totalTestsChirho}`);
	console.log('');

	// Generate SQL
	const sqlChirho = generateSqlChirho(questsChirho);

	// Write to file
	const outputPathChirho = join(
		'/Volumes/ENC_4TB_WDB_CHIRHO/dev-aleluya/friends-aleluya/sonshine-chirho/courses-chirho/sonshine-academy-chirho/apps/web-chirho/migrations',
		'0004_import_quests_chirho.sql'
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
