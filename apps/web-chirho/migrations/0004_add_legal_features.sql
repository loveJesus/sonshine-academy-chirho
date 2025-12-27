CREATE TABLE `contact_submissions_chirho` (
	`contact_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text,
	`name_chirho` text NOT NULL,
	`email_chirho` text NOT NULL,
	`subject_chirho` text NOT NULL,
	`message_chirho` text NOT NULL,
	`newsletter_opt_in_chirho` integer DEFAULT false,
	`status_chirho` text DEFAULT 'new',
	`admin_notes_chirho` text,
	`replied_by_user_id_chirho` text,
	`replied_at_chirho` integer,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
CREATE TABLE `course_enrollments_chirho` (
	`enrollment_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`course_id_chirho` text NOT NULL,
	`status_chirho` text DEFAULT 'active',
	`progress_percentage_chirho` integer DEFAULT 0,
	`enrolled_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`completed_at_chirho` integer,
	`last_accessed_at_chirho` integer,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`course_id_chirho`) REFERENCES `courses_chirho`(`course_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `user_course_enrollment_idx_chirho` ON `course_enrollments_chirho` (`user_id_chirho`,`course_id_chirho`);--> statement-breakpoint
CREATE TABLE `feature_comments_chirho` (
	`comment_id_chirho` text PRIMARY KEY NOT NULL,
	`suggestion_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`content_chirho` text NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`suggestion_id_chirho`) REFERENCES `feature_suggestions_chirho`(`suggestion_id_chirho`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `feature_suggestions_chirho` (
	`suggestion_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`title_chirho` text NOT NULL,
	`description_chirho` text NOT NULL,
	`category_chirho` text DEFAULT 'new_feature',
	`upvotes_chirho` integer DEFAULT 0,
	`downvotes_chirho` integer DEFAULT 0,
	`status_chirho` text DEFAULT 'pending',
	`admin_response_chirho` text,
	`responded_by_user_id_chirho` text,
	`responded_at_chirho` integer,
	`is_public_chirho` integer DEFAULT true,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `feature_votes_chirho` (
	`vote_id_chirho` text PRIMARY KEY NOT NULL,
	`suggestion_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`vote_value_chirho` integer NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`suggestion_id_chirho`) REFERENCES `feature_suggestions_chirho`(`suggestion_id_chirho`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `user_suggestion_vote_idx_chirho` ON `feature_votes_chirho` (`user_id_chirho`,`suggestion_id_chirho`);--> statement-breakpoint
CREATE TABLE `lesson_progress_chirho` (
	`progress_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`lesson_id_chirho` text NOT NULL,
	`status_chirho` text DEFAULT 'not_started',
	`completion_percentage_chirho` integer DEFAULT 0,
	`video_watched_seconds_chirho` integer DEFAULT 0,
	`video_completed_chirho` integer DEFAULT false,
	`started_at_chirho` integer,
	`completed_at_chirho` integer,
	`last_accessed_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`lesson_id_chirho`) REFERENCES `lessons_chirho`(`lesson_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `user_lesson_progress_idx_chirho` ON `lesson_progress_chirho` (`user_id_chirho`,`lesson_id_chirho`);--> statement-breakpoint
CREATE TABLE `password_reset_tokens_chirho` (
	`token_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`token_hash_chirho` text NOT NULL,
	`expires_at_chirho` integer NOT NULL,
	`used_at_chirho` integer,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `promotion_codes_chirho` (
	`code_id_chirho` text PRIMARY KEY NOT NULL,
	`code_chirho` text NOT NULL,
	`description_chirho` text,
	`discount_type_chirho` text NOT NULL,
	`discount_value_chirho` integer NOT NULL,
	`max_redemptions_chirho` integer,
	`current_redemptions_chirho` integer DEFAULT 0,
	`max_redemptions_per_user_chirho` integer DEFAULT 1,
	`starts_at_chirho` integer,
	`expires_at_chirho` integer,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`min_purchase_cents_chirho` integer,
	`applicable_course_ids_chirho` text,
	`created_by_user_id_chirho` text,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `promotion_codes_chirho_code_chirho_unique` ON `promotion_codes_chirho` (`code_chirho`);--> statement-breakpoint
CREATE TABLE `promotion_code_redemptions_chirho` (
	`redemption_id_chirho` text PRIMARY KEY NOT NULL,
	`code_id_chirho` text NOT NULL,
	`user_id_chirho` text NOT NULL,
	`payment_id_chirho` text,
	`discount_applied_cents_chirho` integer NOT NULL,
	`redeemed_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`code_id_chirho`) REFERENCES `promotion_codes_chirho`(`code_id_chirho`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `user_quest_progress_chirho` (
	`progress_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`quest_id_chirho` text NOT NULL,
	`status_chirho` text DEFAULT 'not_started',
	`attempts_chirho` integer DEFAULT 0,
	`viewed_solution_chirho` integer DEFAULT false,
	`coins_earned_chirho` integer DEFAULT 0,
	`started_at_chirho` integer,
	`completed_at_chirho` integer,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`quest_id_chirho`) REFERENCES `quests_chirho`(`quest_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `user_quest_progress_idx_chirho` ON `user_quest_progress_chirho` (`user_id_chirho`,`quest_id_chirho`);--> statement-breakpoint
PRAGMA foreign_keys=OFF;--> statement-breakpoint
CREATE TABLE `__new_payloads_chirho` (
	`payload_id_chirho` text PRIMARY KEY NOT NULL,
	`lesson_id_chirho` text,
	`name_chirho` text NOT NULL,
	`description_chirho` text,
	`version_chirho` text DEFAULT '1.0.0',
	`week_number_chirho` integer,
	`session_number_chirho` integer,
	`r2_key_chirho` text,
	`file_count_chirho` integer DEFAULT 0,
	`total_size_bytes_chirho` integer DEFAULT 0,
	`script_content_chirho` text,
	`script_type_chirho` text DEFAULT 'bash',
	`execution_command_chirho` text,
	`generates_html_chirho` integer DEFAULT false,
	`generates_css_chirho` integer DEFAULT false,
	`generates_js_chirho` integer DEFAULT false,
	`required_payloads_json_chirho` text,
	`verification_type_chirho` text,
	`verification_config_json_chirho` text,
	`auto_execute_chirho` integer DEFAULT true,
	`order_index_chirho` integer DEFAULT 0,
	`is_active_chirho` integer DEFAULT true NOT NULL,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`lesson_id_chirho`) REFERENCES `lessons_chirho`(`lesson_id_chirho`) ON UPDATE no action ON DELETE set null
);
--> statement-breakpoint
INSERT INTO `__new_payloads_chirho`("payload_id_chirho", "lesson_id_chirho", "name_chirho", "description_chirho", "version_chirho", "week_number_chirho", "session_number_chirho", "r2_key_chirho", "file_count_chirho", "total_size_bytes_chirho", "script_content_chirho", "script_type_chirho", "execution_command_chirho", "generates_html_chirho", "generates_css_chirho", "generates_js_chirho", "required_payloads_json_chirho", "verification_type_chirho", "verification_config_json_chirho", "auto_execute_chirho", "order_index_chirho", "is_active_chirho", "created_at_chirho", "updated_at_chirho") SELECT "payload_id_chirho", "lesson_id_chirho", "name_chirho", "description_chirho", "version_chirho", "week_number_chirho", "session_number_chirho", "r2_key_chirho", "file_count_chirho", "total_size_bytes_chirho", "script_content_chirho", "script_type_chirho", "execution_command_chirho", "generates_html_chirho", "generates_css_chirho", "generates_js_chirho", "required_payloads_json_chirho", "verification_type_chirho", "verification_config_json_chirho", "auto_execute_chirho", "order_index_chirho", "is_active_chirho", "created_at_chirho", "updated_at_chirho" FROM `payloads_chirho`;--> statement-breakpoint
DROP TABLE `payloads_chirho`;--> statement-breakpoint
ALTER TABLE `__new_payloads_chirho` RENAME TO `payloads_chirho`;--> statement-breakpoint
PRAGMA foreign_keys=ON;