CREATE TABLE `announcements_chirho` (
	`announcement_id_chirho` text PRIMARY KEY NOT NULL,
	`title_chirho` text NOT NULL,
	`content_chirho` text NOT NULL,
	`scope_chirho` text DEFAULT 'global',
	`organization_id_chirho` text,
	`cohort_id_chirho` text,
	`author_id_chirho` text NOT NULL,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`author_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `cohorts_chirho` (
	`cohort_id_chirho` text PRIMARY KEY NOT NULL,
	`organization_id_chirho` text NOT NULL,
	`name_chirho` text NOT NULL,
	`description_chirho` text,
	`start_date_chirho` integer NOT NULL,
	`end_date_chirho` integer,
	`course_id_chirho` text,
	`max_students_chirho` integer DEFAULT 30,
	`current_enrollment_chirho` integer DEFAULT 0,
	`primary_instructor_id_chirho` text,
	`status_chirho` text DEFAULT 'upcoming',
	`is_accepting_enrollment_chirho` integer DEFAULT true NOT NULL,
	`vps_pool_id_chirho` text,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`organization_id_chirho`) REFERENCES `organizations_chirho`(`organization_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `courses_chirho` (
	`course_id_chirho` text PRIMARY KEY NOT NULL,
	`title_chirho` text NOT NULL,
	`slug_chirho` text NOT NULL,
	`description_chirho` text,
	`thumbnail_url_chirho` text,
	`total_weeks_chirho` integer DEFAULT 18,
	`sessions_per_week_chirho` integer DEFAULT 3,
	`is_published_chirho` integer DEFAULT false NOT NULL,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `courses_chirho_slug_chirho_unique` ON `courses_chirho` (`slug_chirho`);--> statement-breakpoint
CREATE TABLE `course_modules_chirho` (
	`module_id_chirho` text PRIMARY KEY NOT NULL,
	`course_id_chirho` text NOT NULL,
	`title_chirho` text NOT NULL,
	`description_chirho` text,
	`week_number_chirho` integer NOT NULL,
	`scripture_reference_chirho` text,
	`theological_theme_chirho` text,
	`order_index_chirho` integer NOT NULL,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`course_id_chirho`) REFERENCES `courses_chirho`(`course_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `course_sessions_chirho` (
	`session_id_chirho` text PRIMARY KEY NOT NULL,
	`module_id_chirho` text NOT NULL,
	`title_chirho` text NOT NULL,
	`description_chirho` text,
	`prayer_focus_chirho` text,
	`session_number_chirho` integer NOT NULL,
	`estimated_duration_minutes_chirho` integer DEFAULT 45,
	`order_index_chirho` integer NOT NULL,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`module_id_chirho`) REFERENCES `course_modules_chirho`(`module_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `lessons_chirho` (
	`lesson_id_chirho` text PRIMARY KEY NOT NULL,
	`session_id_chirho` text NOT NULL,
	`title_chirho` text NOT NULL,
	`lesson_type_chirho` text NOT NULL,
	`content_chirho` text,
	`order_index_chirho` integer NOT NULL,
	`estimated_duration_minutes_chirho` integer,
	`is_required_chirho` integer DEFAULT true NOT NULL,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`session_id_chirho`) REFERENCES `course_sessions_chirho`(`session_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `organizations_chirho` (
	`organization_id_chirho` text PRIMARY KEY NOT NULL,
	`name_chirho` text NOT NULL,
	`slug_chirho` text NOT NULL,
	`description_chirho` text,
	`organization_type_chirho` text NOT NULL,
	`contact_name_chirho` text NOT NULL,
	`contact_email_chirho` text NOT NULL,
	`contact_phone_chirho` text,
	`address_line1_chirho` text,
	`city_chirho` text,
	`state_chirho` text,
	`postal_code_chirho` text,
	`country_chirho` text DEFAULT 'US',
	`logo_url_chirho` text,
	`primary_color_chirho` text DEFAULT '#3B82F6',
	`max_students_chirho` integer DEFAULT 50,
	`vps_pool_id_chirho` text,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`is_verified_chirho` integer DEFAULT false NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `organizations_chirho_slug_chirho_unique` ON `organizations_chirho` (`slug_chirho`);--> statement-breakpoint
CREATE TABLE `organization_invite_codes_chirho` (
	`invite_code_id_chirho` text PRIMARY KEY NOT NULL,
	`organization_id_chirho` text NOT NULL,
	`code_chirho` text NOT NULL,
	`max_uses_chirho` integer DEFAULT 100,
	`current_uses_chirho` integer DEFAULT 0,
	`expires_at_chirho` integer,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`cohort_id_chirho` text,
	`created_by_user_id_chirho` text NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`organization_id_chirho`) REFERENCES `organizations_chirho`(`organization_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `organization_invite_codes_chirho_code_chirho_unique` ON `organization_invite_codes_chirho` (`code_chirho`);--> statement-breakpoint
CREATE TABLE `payloads_chirho` (
	`payload_id_chirho` text PRIMARY KEY NOT NULL,
	`lesson_id_chirho` text,
	`name_chirho` text NOT NULL,
	`description_chirho` text,
	`version_chirho` text DEFAULT '1.0.0',
	`script_content_chirho` text NOT NULL,
	`script_type_chirho` text DEFAULT 'bash',
	`execution_command_chirho` text NOT NULL,
	`generates_html_chirho` integer DEFAULT false,
	`generates_css_chirho` integer DEFAULT false,
	`generates_js_chirho` integer DEFAULT false,
	`required_payloads_json_chirho` text,
	`verification_type_chirho` text,
	`verification_config_json_chirho` text,
	`order_index_chirho` integer DEFAULT 0,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`lesson_id_chirho`) REFERENCES `lessons_chirho`(`lesson_id_chirho`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
CREATE TABLE `payload_executions_chirho` (
	`execution_id_chirho` text PRIMARY KEY NOT NULL,
	`payload_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`container_id_chirho` text,
	`status_chirho` text DEFAULT 'started' NOT NULL,
	`callback_received_chirho` integer DEFAULT false,
	`callback_at_chirho` integer,
	`callback_data_json_chirho` text,
	`screenshot_url_chirho` text,
	`screenshot_verified_chirho` integer,
	`started_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`completed_at_chirho` integer,
	`error_message_chirho` text,
	FOREIGN KEY (`payload_id_chirho`) REFERENCES `payloads_chirho`(`payload_id_chirho`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `payments_chirho` (
	`payment_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`stripe_payment_intent_id_chirho` text,
	`stripe_checkout_session_id_chirho` text,
	`stripe_customer_id_chirho` text,
	`amount_cents_chirho` integer NOT NULL,
	`currency_chirho` text DEFAULT 'usd',
	`payment_type_chirho` text NOT NULL,
	`status_chirho` text DEFAULT 'pending',
	`is_anonymous_chirho` integer DEFAULT false,
	`donor_name_chirho` text,
	`donor_email_chirho` text,
	`donor_message_chirho` text,
	`cohort_id_chirho` text,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `quests_chirho` (
	`quest_id_chirho` text PRIMARY KEY NOT NULL,
	`lesson_id_chirho` text,
	`title_chirho` text NOT NULL,
	`description_chirho` text NOT NULL,
	`instructions_chirho` text NOT NULL,
	`starter_code_chirho` text NOT NULL,
	`solution_code_chirho` text NOT NULL,
	`difficulty_level_chirho` text NOT NULL,
	`quest_type_chirho` text DEFAULT 'javascript',
	`header_verse_chirho` text,
	`coin_reward_chirho` integer DEFAULT 10,
	`bonus_coin_no_solution_view_chirho` integer DEFAULT 5,
	`order_index_chirho` integer DEFAULT 0 NOT NULL,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`lesson_id_chirho`) REFERENCES `lessons_chirho`(`lesson_id_chirho`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
CREATE TABLE `quest_coin_transactions_chirho` (
	`transaction_id_chirho` text PRIMARY KEY NOT NULL,
	`from_username_chirho` text NOT NULL,
	`to_username_chirho` text NOT NULL,
	`amount_chirho` integer NOT NULL,
	`transaction_hash_chirho` text NOT NULL,
	`previous_hash_chirho` text,
	`transaction_type_chirho` text DEFAULT 'transfer',
	`reference_id_chirho` text,
	`memo_chirho` text,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE TABLE `quest_solution_views_chirho` (
	`solution_view_id_chirho` text PRIMARY KEY NOT NULL,
	`quest_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`viewed_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`viewed_before_pass_chirho` integer DEFAULT false NOT NULL,
	FOREIGN KEY (`quest_id_chirho`) REFERENCES `quests_chirho`(`quest_id_chirho`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `quest_submissions_chirho` (
	`submission_id_chirho` text PRIMARY KEY NOT NULL,
	`quest_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`submitted_code_chirho` text NOT NULL,
	`is_correct_chirho` integer DEFAULT false NOT NULL,
	`test_results_json_chirho` text,
	`execution_time_ms_chirho` integer,
	`error_message_chirho` text,
	`viewed_solution_before_pass_chirho` integer DEFAULT false NOT NULL,
	`coins_awarded_chirho` integer DEFAULT 0,
	`submitted_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`quest_id_chirho`) REFERENCES `quests_chirho`(`quest_id_chirho`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `quest_tests_chirho` (
	`test_id_chirho` text PRIMARY KEY NOT NULL,
	`quest_id_chirho` text NOT NULL,
	`test_name_chirho` text NOT NULL,
	`test_code_chirho` text NOT NULL,
	`is_visible_chirho` integer DEFAULT true NOT NULL,
	`test_order_chirho` integer DEFAULT 0 NOT NULL,
	FOREIGN KEY (`quest_id_chirho`) REFERENCES `quests_chirho`(`quest_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `scholarships_chirho` (
	`scholarship_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`reason_chirho` text,
	`approved_by_user_id_chirho` text,
	`status_chirho` text DEFAULT 'active',
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `sessions_chirho` (
	`session_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`expires_at_chirho` integer NOT NULL,
	`user_agent_chirho` text,
	`ip_address_chirho` text,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `student_progress_chirho` (
	`progress_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`cohort_id_chirho` text,
	`lesson_id_chirho` text NOT NULL,
	`status_chirho` text DEFAULT 'not_started',
	`completion_percentage_chirho` integer DEFAULT 0,
	`video_watched_seconds_chirho` integer DEFAULT 0,
	`video_completed_chirho` integer DEFAULT false,
	`started_at_chirho` integer,
	`completed_at_chirho` integer,
	`last_accessed_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`lesson_id_chirho`) REFERENCES `lessons_chirho`(`lesson_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE UNIQUE INDEX `user_lesson_idx_chirho` ON `student_progress_chirho` (`user_id_chirho`,`lesson_id_chirho`);--> statement-breakpoint
CREATE TABLE `terminal_containers_chirho` (
	`container_id_chirho` text PRIMARY KEY NOT NULL,
	`node_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`container_name_chirho` text NOT NULL,
	`docker_container_id_chirho` text,
	`ttyd_port_chirho` integer,
	`ttyd_url_chirho` text,
	`ttyd_token_chirho` text,
	`memory_limit_mb_chirho` integer DEFAULT 512,
	`cpu_limit_percent_chirho` integer DEFAULT 25,
	`disk_limit_mb_chirho` integer DEFAULT 1024,
	`status_chirho` text DEFAULT 'creating',
	`error_message_chirho` text,
	`last_activity_at_chirho` integer,
	`auto_stop_after_minutes_chirho` integer DEFAULT 30,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`node_id_chirho`) REFERENCES `vps_nodes_chirho`(`node_id_chirho`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `users_chirho` (
	`user_id_chirho` text PRIMARY KEY NOT NULL,
	`username_chirho` text NOT NULL,
	`email_chirho` text NOT NULL,
	`password_hash_chirho` text NOT NULL,
	`display_name_chirho` text,
	`avatar_url_chirho` text,
	`role_chirho` text DEFAULT 'student' NOT NULL,
	`organization_id_chirho` text,
	`cohort_id_chirho` text,
	`terminal_container_id_chirho` text,
	`payment_status_chirho` text DEFAULT 'free',
	`donation_amount_cents_chirho` integer DEFAULT 0,
	`quest_coins_balance_chirho` integer DEFAULT 0,
	`github_username_chirho` text,
	`background_color_chirho` text DEFAULT '#3B82F6',
	`dismissed_announcement_id_chirho` text,
	`email_verified_chirho` integer DEFAULT false,
	`email_verification_token_chirho` text,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`last_login_at_chirho` integer
);
--> statement-breakpoint
CREATE UNIQUE INDEX `users_chirho_username_chirho_unique` ON `users_chirho` (`username_chirho`);--> statement-breakpoint
CREATE UNIQUE INDEX `users_chirho_email_chirho_unique` ON `users_chirho` (`email_chirho`);--> statement-breakpoint
CREATE TABLE `video_lessons_chirho` (
	`video_id_chirho` text PRIMARY KEY NOT NULL,
	`lesson_id_chirho` text NOT NULL,
	`youtube_video_id_chirho` text NOT NULL,
	`youtube_url_chirho` text NOT NULL,
	`is_unlisted_chirho` integer DEFAULT true NOT NULL,
	`title_chirho` text NOT NULL,
	`description_chirho` text,
	`duration_seconds_chirho` integer,
	`thumbnail_url_chirho` text,
	`chapters_json_chirho` text,
	`transcript_chirho` text,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`lesson_id_chirho`) REFERENCES `lessons_chirho`(`lesson_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `vps_nodes_chirho` (
	`node_id_chirho` text PRIMARY KEY NOT NULL,
	`pool_id_chirho` text NOT NULL,
	`hetzner_server_id_chirho` text,
	`hetzner_server_name_chirho` text,
	`hetzner_datacenter_chirho` text,
	`hostname_chirho` text NOT NULL,
	`ip_address_chirho` text NOT NULL,
	`internal_ip_chirho` text,
	`cpu_cores_chirho` integer,
	`memory_mb_chirho` integer,
	`disk_gb_chirho` integer,
	`max_containers_chirho` integer DEFAULT 20,
	`current_containers_chirho` integer DEFAULT 0,
	`ssl_certificate_chirho` text,
	`ssl_expires_at_chirho` integer,
	`status_chirho` text DEFAULT 'provisioning',
	`health_check_url_chirho` text,
	`last_health_check_at_chirho` integer,
	`health_status_chirho` text DEFAULT 'unknown',
	`monthly_cost_cents_chirho` integer,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`pool_id_chirho`) REFERENCES `vps_pools_chirho`(`pool_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `vps_pools_chirho` (
	`pool_id_chirho` text PRIMARY KEY NOT NULL,
	`name_chirho` text NOT NULL,
	`description_chirho` text,
	`default_max_containers_chirho` integer DEFAULT 20,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL
);
