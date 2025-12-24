// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { sqliteTable, text, integer, uniqueIndex } from 'drizzle-orm/sqlite-core';
import { sql } from 'drizzle-orm';

// ============================================================================
// CORE USER & AUTH TABLES
// ============================================================================

export const userChirho = sqliteTable('users_chirho', {
	userId: text('user_id_chirho').primaryKey(),
	username: text('username_chirho').notNull().unique(),
	email: text('email_chirho').notNull().unique(),
	// Password hash is nullable for OAuth-only users
	passwordHash: text('password_hash_chirho'),
	displayName: text('display_name_chirho'),
	avatarUrl: text('avatar_url_chirho'),

	// Role: 'student', 'instructor', 'org_admin', 'platform_admin'
	role: text('role_chirho').notNull().default('student'),

	// Organization membership
	organizationId: text('organization_id_chirho'),
	cohortId: text('cohort_id_chirho'),

	// Terminal container assignment
	terminalContainerId: text('terminal_container_id_chirho'),

	// Payment: 'free', 'scholarship', 'donated'
	paymentStatus: text('payment_status_chirho').default('free'),
	donationAmountCents: integer('donation_amount_cents_chirho').default(0),

	// Gamification
	questCoinsBalance: integer('quest_coins_balance_chirho').default(0),

	// Profile
	githubUsername: text('github_username_chirho'),
	backgroundColor: text('background_color_chirho').default('#3B82F6'),
	dismissedAnnouncementId: text('dismissed_announcement_id_chirho'),

	// Email verification
	emailVerified: integer('email_verified_chirho', { mode: 'boolean' }).default(false),
	emailVerificationToken: text('email_verification_token_chirho'),

	// Timestamps
	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	lastLoginAt: integer('last_login_at_chirho', { mode: 'timestamp' })
});

export const sessionChirho = sqliteTable('sessions_chirho', {
	sessionId: text('session_id_chirho').primaryKey(),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId, { onDelete: 'cascade' }),
	expiresAt: integer('expires_at_chirho', { mode: 'timestamp' }).notNull(),
	userAgent: text('user_agent_chirho'),
	ipAddress: text('ip_address_chirho')
});

// OAuth provider accounts for Google, etc.
export const oauthAccountChirho = sqliteTable('oauth_accounts_chirho', {
	oauthAccountId: text('oauth_account_id_chirho').primaryKey(),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId, { onDelete: 'cascade' }),
	// 'google', 'github', etc.
	provider: text('provider_chirho').notNull(),
	// Provider's unique user ID
	providerUserId: text('provider_user_id_chirho').notNull(),
	// Access token (encrypted in production)
	accessToken: text('access_token_chirho'),
	refreshToken: text('refresh_token_chirho'),
	expiresAt: integer('expires_at_chirho', { mode: 'timestamp' }),
	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// ORGANIZATION & COHORT TABLES
// ============================================================================

export const organizationChirho = sqliteTable('organizations_chirho', {
	organizationId: text('organization_id_chirho').primaryKey(),
	name: text('name_chirho').notNull(),
	slug: text('slug_chirho').notNull().unique(),
	description: text('description_chirho'),
	// 'church', 'school', 'homeschool', 'other'
	organizationType: text('organization_type_chirho').notNull(),

	// Contact
	contactName: text('contact_name_chirho').notNull(),
	contactEmail: text('contact_email_chirho').notNull(),
	contactPhone: text('contact_phone_chirho'),

	// Address
	addressLine1: text('address_line1_chirho'),
	city: text('city_chirho'),
	state: text('state_chirho'),
	postalCode: text('postal_code_chirho'),
	country: text('country_chirho').default('US'),

	// Settings
	logoUrl: text('logo_url_chirho'),
	primaryColor: text('primary_color_chirho').default('#3B82F6'),
	maxStudents: integer('max_students_chirho').default(50),

	// VPS pool assignment
	vpsPoolId: text('vps_pool_id_chirho'),

	// Status
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),
	isVerified: integer('is_verified_chirho', { mode: 'boolean' }).notNull().default(false),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const organizationInviteCodeChirho = sqliteTable('organization_invite_codes_chirho', {
	inviteCodeId: text('invite_code_id_chirho').primaryKey(),
	organizationId: text('organization_id_chirho')
		.notNull()
		.references(() => organizationChirho.organizationId, { onDelete: 'cascade' }),
	code: text('code_chirho').notNull().unique(),

	// Usage
	maxUses: integer('max_uses_chirho').default(100),
	currentUses: integer('current_uses_chirho').default(0),

	// Validity
	expiresAt: integer('expires_at_chirho', { mode: 'timestamp' }),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	// Optional cohort assignment
	cohortId: text('cohort_id_chirho'),

	createdByUserId: text('created_by_user_id_chirho').notNull(),
	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const cohortChirho = sqliteTable('cohorts_chirho', {
	cohortId: text('cohort_id_chirho').primaryKey(),
	organizationId: text('organization_id_chirho')
		.notNull()
		.references(() => organizationChirho.organizationId, { onDelete: 'cascade' }),

	name: text('name_chirho').notNull(),
	description: text('description_chirho'),

	// Schedule
	startDate: integer('start_date_chirho', { mode: 'timestamp' }).notNull(),
	endDate: integer('end_date_chirho', { mode: 'timestamp' }),

	// Course
	courseId: text('course_id_chirho'),

	// Capacity
	maxStudents: integer('max_students_chirho').default(30),
	currentEnrollment: integer('current_enrollment_chirho').default(0),

	// Instructor
	primaryInstructorId: text('primary_instructor_id_chirho'),

	// 'upcoming', 'active', 'completed', 'cancelled'
	status: text('status_chirho').default('upcoming'),
	isAcceptingEnrollment: integer('is_accepting_enrollment_chirho', { mode: 'boolean' })
		.notNull()
		.default(true),

	// VPS pool override
	vpsPoolId: text('vps_pool_id_chirho'),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// COURSE CONTENT TABLES
// ============================================================================

export const courseChirho = sqliteTable('courses_chirho', {
	courseId: text('course_id_chirho').primaryKey(),
	title: text('title_chirho').notNull(),
	slug: text('slug_chirho').notNull().unique(),
	description: text('description_chirho'),
	thumbnailUrl: text('thumbnail_url_chirho'),

	totalWeeks: integer('total_weeks_chirho').default(18),
	sessionsPerWeek: integer('sessions_per_week_chirho').default(3),

	isPublished: integer('is_published_chirho', { mode: 'boolean' }).notNull().default(false),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const courseModuleChirho = sqliteTable('course_modules_chirho', {
	moduleId: text('module_id_chirho').primaryKey(),
	courseId: text('course_id_chirho')
		.notNull()
		.references(() => courseChirho.courseId, { onDelete: 'cascade' }),

	title: text('title_chirho').notNull(),
	description: text('description_chirho'),
	weekNumber: integer('week_number_chirho').notNull(),

	// Faith integration
	scriptureReference: text('scripture_reference_chirho'),
	theologicalTheme: text('theological_theme_chirho'),

	orderIndex: integer('order_index_chirho').notNull(),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const courseSessionChirho = sqliteTable('course_sessions_chirho', {
	sessionId: text('session_id_chirho').primaryKey(),
	moduleId: text('module_id_chirho')
		.notNull()
		.references(() => courseModuleChirho.moduleId, { onDelete: 'cascade' }),

	title: text('title_chirho').notNull(),
	description: text('description_chirho'),
	prayerFocus: text('prayer_focus_chirho'),

	sessionNumber: integer('session_number_chirho').notNull(),
	estimatedDurationMinutes: integer('estimated_duration_minutes_chirho').default(45),

	orderIndex: integer('order_index_chirho').notNull(),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const lessonChirho = sqliteTable('lessons_chirho', {
	lessonId: text('lesson_id_chirho').primaryKey(),
	sessionId: text('session_id_chirho')
		.notNull()
		.references(() => courseSessionChirho.sessionId, { onDelete: 'cascade' }),

	title: text('title_chirho').notNull(),
	// 'video', 'payload', 'quest', 'reading', 'exercise'
	lessonType: text('lesson_type_chirho').notNull(),
	content: text('content_chirho'),

	orderIndex: integer('order_index_chirho').notNull(),
	estimatedDurationMinutes: integer('estimated_duration_minutes_chirho'),
	isRequired: integer('is_required_chirho', { mode: 'boolean' }).notNull().default(true),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// VIDEO LESSONS
// ============================================================================

export const videoLessonChirho = sqliteTable('video_lessons_chirho', {
	videoId: text('video_id_chirho').primaryKey(),
	lessonId: text('lesson_id_chirho')
		.notNull()
		.references(() => lessonChirho.lessonId, { onDelete: 'cascade' }),

	youtubeVideoId: text('youtube_video_id_chirho').notNull(),
	youtubeUrl: text('youtube_url_chirho').notNull(),
	isUnlisted: integer('is_unlisted_chirho', { mode: 'boolean' }).notNull().default(true),

	title: text('title_chirho').notNull(),
	description: text('description_chirho'),
	durationSeconds: integer('duration_seconds_chirho'),
	thumbnailUrl: text('thumbnail_url_chirho'),

	chaptersJson: text('chapters_json_chirho'),
	transcript: text('transcript_chirho'),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// PAYLOAD SYSTEM
// ============================================================================

export const payloadChirho = sqliteTable('payloads_chirho', {
	payloadId: text('payload_id_chirho').primaryKey(),
	lessonId: text('lesson_id_chirho').references(() => lessonChirho.lessonId, {
		onDelete: 'set null'
	}),

	name: text('name_chirho').notNull(),
	description: text('description_chirho'),
	version: text('version_chirho').default('1.0.0'),

	scriptContent: text('script_content_chirho').notNull(),
	scriptType: text('script_type_chirho').default('bash'),
	executionCommand: text('execution_command_chirho').notNull(),

	generatesHtml: integer('generates_html_chirho', { mode: 'boolean' }).default(false),
	generatesCss: integer('generates_css_chirho', { mode: 'boolean' }).default(false),
	generatesJs: integer('generates_js_chirho', { mode: 'boolean' }).default(false),

	requiredPayloadsJson: text('required_payloads_json_chirho'),

	// 'callback', 'file_check', 'screenshot', 'manual'
	verificationType: text('verification_type_chirho'),
	verificationConfigJson: text('verification_config_json_chirho'),

	orderIndex: integer('order_index_chirho').default(0),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const payloadExecutionChirho = sqliteTable('payload_executions_chirho', {
	executionId: text('execution_id_chirho').primaryKey(),
	payloadId: text('payload_id_chirho')
		.notNull()
		.references(() => payloadChirho.payloadId),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId),
	containerId: text('container_id_chirho'),

	// 'started', 'completed', 'failed', 'verified'
	status: text('status_chirho').notNull().default('started'),

	callbackReceived: integer('callback_received_chirho', { mode: 'boolean' }).default(false),
	callbackAt: integer('callback_at_chirho', { mode: 'timestamp' }),
	callbackDataJson: text('callback_data_json_chirho'),

	screenshotUrl: text('screenshot_url_chirho'),
	screenshotVerified: integer('screenshot_verified_chirho', { mode: 'boolean' }),

	startedAt: integer('started_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	completedAt: integer('completed_at_chirho', { mode: 'timestamp' }),

	errorMessage: text('error_message_chirho')
});

// ============================================================================
// QUEST SYSTEM
// ============================================================================

export const questChirho = sqliteTable('quests_chirho', {
	questId: text('quest_id_chirho').primaryKey(),
	lessonId: text('lesson_id_chirho').references(() => lessonChirho.lessonId, {
		onDelete: 'set null'
	}),

	title: text('title_chirho').notNull(),
	description: text('description_chirho').notNull(),
	instructions: text('instructions_chirho').notNull(),
	starterCode: text('starter_code_chirho').notNull(),
	solutionCode: text('solution_code_chirho').notNull(),

	// 'beginner', 'intermediate', 'advanced'
	difficultyLevel: text('difficulty_level_chirho').notNull(),
	// 'javascript', 'html', 'css', 'sql'
	questType: text('quest_type_chirho').default('javascript'),

	// Scripture
	headerVerse: text('header_verse_chirho'),

	coinReward: integer('coin_reward_chirho').default(10),
	bonusCoinNoSolutionView: integer('bonus_coin_no_solution_view_chirho').default(5),

	orderIndex: integer('order_index_chirho').notNull().default(0),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const questTestChirho = sqliteTable('quest_tests_chirho', {
	testId: text('test_id_chirho').primaryKey(),
	questId: text('quest_id_chirho')
		.notNull()
		.references(() => questChirho.questId, { onDelete: 'cascade' }),

	testName: text('test_name_chirho').notNull(),
	testCode: text('test_code_chirho').notNull(),
	isVisible: integer('is_visible_chirho', { mode: 'boolean' }).notNull().default(true),
	testOrder: integer('test_order_chirho').notNull().default(0)
});

export const questSubmissionChirho = sqliteTable('quest_submissions_chirho', {
	submissionId: text('submission_id_chirho').primaryKey(),
	questId: text('quest_id_chirho')
		.notNull()
		.references(() => questChirho.questId),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId),

	submittedCode: text('submitted_code_chirho').notNull(),
	isCorrect: integer('is_correct_chirho', { mode: 'boolean' }).notNull().default(false),
	testResultsJson: text('test_results_json_chirho'),
	executionTimeMs: integer('execution_time_ms_chirho'),
	errorMessage: text('error_message_chirho'),
	viewedSolutionBeforePass: integer('viewed_solution_before_pass_chirho', { mode: 'boolean' })
		.notNull()
		.default(false),

	coinsAwarded: integer('coins_awarded_chirho').default(0),

	submittedAt: integer('submitted_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const questSolutionViewChirho = sqliteTable('quest_solution_views_chirho', {
	solutionViewId: text('solution_view_id_chirho').primaryKey(),
	questId: text('quest_id_chirho')
		.notNull()
		.references(() => questChirho.questId),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId),
	viewedAt: integer('viewed_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	viewedBeforePass: integer('viewed_before_pass_chirho', { mode: 'boolean' })
		.notNull()
		.default(false)
});

// ============================================================================
// QUEST COINS (Blockchain-like)
// ============================================================================

export const questCoinTransactionChirho = sqliteTable('quest_coin_transactions_chirho', {
	transactionId: text('transaction_id_chirho').primaryKey(),
	fromUsername: text('from_username_chirho').notNull(),
	toUsername: text('to_username_chirho').notNull(),
	amount: integer('amount_chirho').notNull(),

	transactionHash: text('transaction_hash_chirho').notNull(),
	previousHash: text('previous_hash_chirho'),

	// 'transfer', 'quest_reward', 'system_grant'
	transactionType: text('transaction_type_chirho').default('transfer'),
	referenceId: text('reference_id_chirho'),
	memo: text('memo_chirho'),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// VPS & CONTAINER MANAGEMENT
// ============================================================================

export const vpsPoolChirho = sqliteTable('vps_pools_chirho', {
	poolId: text('pool_id_chirho').primaryKey(),
	name: text('name_chirho').notNull(),
	description: text('description_chirho'),

	defaultMaxContainers: integer('default_max_containers_chirho').default(20),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const vpsNodeChirho = sqliteTable('vps_nodes_chirho', {
	nodeId: text('node_id_chirho').primaryKey(),
	poolId: text('pool_id_chirho')
		.notNull()
		.references(() => vpsPoolChirho.poolId),

	hetznerServerId: text('hetzner_server_id_chirho'),
	hetznerServerName: text('hetzner_server_name_chirho'),
	hetznerDatacenter: text('hetzner_datacenter_chirho'),

	hostname: text('hostname_chirho').notNull(),
	ipAddress: text('ip_address_chirho').notNull(),
	internalIp: text('internal_ip_chirho'),

	cpuCores: integer('cpu_cores_chirho'),
	memoryMb: integer('memory_mb_chirho'),
	diskGb: integer('disk_gb_chirho'),

	maxContainers: integer('max_containers_chirho').default(20),
	currentContainers: integer('current_containers_chirho').default(0),

	sslCertificate: text('ssl_certificate_chirho'),
	sslExpiresAt: integer('ssl_expires_at_chirho', { mode: 'timestamp' }),

	// 'provisioning', 'online', 'maintenance', 'offline', 'draining'
	status: text('status_chirho').default('provisioning'),
	healthCheckUrl: text('health_check_url_chirho'),
	lastHealthCheckAt: integer('last_health_check_at_chirho', { mode: 'timestamp' }),
	// 'healthy', 'degraded', 'unhealthy', 'unknown'
	healthStatus: text('health_status_chirho').default('unknown'),

	monthlyCostCents: integer('monthly_cost_cents_chirho'),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const terminalContainerChirho = sqliteTable('terminal_containers_chirho', {
	containerId: text('container_id_chirho').primaryKey(),
	nodeId: text('node_id_chirho')
		.notNull()
		.references(() => vpsNodeChirho.nodeId),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId),

	containerName: text('container_name_chirho').notNull(),
	dockerContainerId: text('docker_container_id_chirho'),

	ttydPort: integer('ttyd_port_chirho'),
	ttydUrl: text('ttyd_url_chirho'),
	ttydToken: text('ttyd_token_chirho'),

	memoryLimitMb: integer('memory_limit_mb_chirho').default(512),
	cpuLimitPercent: integer('cpu_limit_percent_chirho').default(25),
	diskLimitMb: integer('disk_limit_mb_chirho').default(1024),

	// 'creating', 'running', 'stopped', 'error', 'deleted'
	status: text('status_chirho').default('creating'),
	errorMessage: text('error_message_chirho'),

	lastActivityAt: integer('last_activity_at_chirho', { mode: 'timestamp' }),
	autoStopAfterMinutes: integer('auto_stop_after_minutes_chirho').default(30),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// PROGRESS TRACKING
// ============================================================================

export const studentProgressChirho = sqliteTable(
	'student_progress_chirho',
	{
		progressId: text('progress_id_chirho').primaryKey(),
		userId: text('user_id_chirho')
			.notNull()
			.references(() => userChirho.userId),
		cohortId: text('cohort_id_chirho'),
		lessonId: text('lesson_id_chirho')
			.notNull()
			.references(() => lessonChirho.lessonId),

		// 'not_started', 'in_progress', 'completed'
		status: text('status_chirho').default('not_started'),
		completionPercentage: integer('completion_percentage_chirho').default(0),

		videoWatchedSeconds: integer('video_watched_seconds_chirho').default(0),
		videoCompleted: integer('video_completed_chirho', { mode: 'boolean' }).default(false),

		startedAt: integer('started_at_chirho', { mode: 'timestamp' }),
		completedAt: integer('completed_at_chirho', { mode: 'timestamp' }),
		lastAccessedAt: integer('last_accessed_at_chirho', { mode: 'timestamp' })
			.notNull()
			.default(sql`(unixepoch())`)
	},
	(table) => [uniqueIndex('user_lesson_idx_chirho').on(table.userId, table.lessonId)]
);

// ============================================================================
// PAYMENTS
// ============================================================================

export const paymentChirho = sqliteTable('payments_chirho', {
	paymentId: text('payment_id_chirho').primaryKey(),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId),

	stripePaymentIntentId: text('stripe_payment_intent_id_chirho'),
	stripeCheckoutSessionId: text('stripe_checkout_session_id_chirho'),
	stripeCustomerId: text('stripe_customer_id_chirho'),

	amountCents: integer('amount_cents_chirho').notNull(),
	currency: text('currency_chirho').default('usd'),

	// 'donation', 'scholarship', 'sponsored'
	paymentType: text('payment_type_chirho').notNull(),
	// 'pending', 'processing', 'succeeded', 'failed', 'refunded'
	status: text('status_chirho').default('pending'),

	isAnonymous: integer('is_anonymous_chirho', { mode: 'boolean' }).default(false),
	donorName: text('donor_name_chirho'),
	donorEmail: text('donor_email_chirho'),
	donorMessage: text('donor_message_chirho'),

	cohortId: text('cohort_id_chirho'),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

export const scholarshipChirho = sqliteTable('scholarships_chirho', {
	scholarshipId: text('scholarship_id_chirho').primaryKey(),
	userId: text('user_id_chirho')
		.notNull()
		.references(() => userChirho.userId),

	reason: text('reason_chirho'),
	approvedByUserId: text('approved_by_user_id_chirho'),

	// 'active', 'revoked', 'graduated'
	status: text('status_chirho').default('active'),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// ANNOUNCEMENTS
// ============================================================================

export const announcementChirho = sqliteTable('announcements_chirho', {
	announcementId: text('announcement_id_chirho').primaryKey(),
	title: text('title_chirho').notNull(),
	content: text('content_chirho').notNull(),

	// 'global', 'organization', 'cohort'
	scope: text('scope_chirho').default('global'),
	organizationId: text('organization_id_chirho'),
	cohortId: text('cohort_id_chirho'),

	authorId: text('author_id_chirho')
		.notNull()
		.references(() => userChirho.userId),
	isActive: integer('is_active_chirho', { mode: 'boolean' }).notNull().default(true),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// BLOG SYSTEM
// ============================================================================

export const blogPostChirho = sqliteTable('blog_posts_chirho', {
	postId: text('post_id_chirho').primaryKey(),
	authorId: text('author_id_chirho')
		.notNull()
		.references(() => userChirho.userId),

	title: text('title_chirho').notNull(),
	slug: text('slug_chirho').notNull().unique(),
	excerpt: text('excerpt_chirho'),
	content: text('content_chirho').notNull(),
	featuredImageUrl: text('featured_image_url_chirho'),

	// 'announcement', 'tutorial', 'devotional', 'news', 'update'
	category: text('category_chirho').default('news'),
	tags: text('tags_chirho'), // JSON array of tags

	// 'draft', 'published', 'archived'
	status: text('status_chirho').default('draft'),
	publishedAt: integer('published_at_chirho', { mode: 'timestamp' }),

	// SEO
	metaDescription: text('meta_description_chirho'),

	// Scripture reference
	scriptureReference: text('scripture_reference_chirho'),

	viewCount: integer('view_count_chirho').default(0),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// FEEDBACK SYSTEM
// ============================================================================

export const feedbackChirho = sqliteTable('feedback_chirho', {
	feedbackId: text('feedback_id_chirho').primaryKey(),
	userId: text('user_id_chirho').references(() => userChirho.userId, { onDelete: 'set null' }),

	// 'bug', 'suggestion', 'question', 'praise'
	feedbackType: text('feedback_type_chirho').notNull(),
	feedbackText: text('feedback_text_chirho').notNull(),

	// Context
	pageUrl: text('page_url_chirho'),
	userAgent: text('user_agent_chirho'),

	// 'new', 'reviewed', 'resolved', 'archived'
	status: text('status_chirho').default('new'),
	adminNotes: text('admin_notes_chirho'),
	reviewedByUserId: text('reviewed_by_user_id_chirho'),
	reviewedAt: integer('reviewed_at_chirho', { mode: 'timestamp' }),

	createdAt: integer('created_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`),
	updatedAt: integer('updated_at_chirho', { mode: 'timestamp' })
		.notNull()
		.default(sql`(unixepoch())`)
});

// ============================================================================
// TYPE EXPORTS
// ============================================================================

export type User = typeof userChirho.$inferSelect;
export type NewUser = typeof userChirho.$inferInsert;
export type Session = typeof sessionChirho.$inferSelect;
export type OAuthAccount = typeof oauthAccountChirho.$inferSelect;
export type NewOAuthAccount = typeof oauthAccountChirho.$inferInsert;
export type Organization = typeof organizationChirho.$inferSelect;
export type Cohort = typeof cohortChirho.$inferSelect;
export type Course = typeof courseChirho.$inferSelect;
export type CourseModule = typeof courseModuleChirho.$inferSelect;
export type CourseSession = typeof courseSessionChirho.$inferSelect;
export type Lesson = typeof lessonChirho.$inferSelect;
export type VideoLesson = typeof videoLessonChirho.$inferSelect;
export type Payload = typeof payloadChirho.$inferSelect;
export type Quest = typeof questChirho.$inferSelect;
export type QuestSubmission = typeof questSubmissionChirho.$inferSelect;
export type VpsPool = typeof vpsPoolChirho.$inferSelect;
export type VpsNode = typeof vpsNodeChirho.$inferSelect;
export type TerminalContainer = typeof terminalContainerChirho.$inferSelect;
export type Payment = typeof paymentChirho.$inferSelect;
export type Announcement = typeof announcementChirho.$inferSelect;
export type Feedback = typeof feedbackChirho.$inferSelect;
export type NewFeedback = typeof feedbackChirho.$inferInsert;
export type BlogPost = typeof blogPostChirho.$inferSelect;
export type NewBlogPost = typeof blogPostChirho.$inferInsert;
