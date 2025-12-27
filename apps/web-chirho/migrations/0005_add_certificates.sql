CREATE TABLE `certificates_chirho` (
	`certificate_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`course_id_chirho` text NOT NULL,
	`recipient_name_chirho` text NOT NULL,
	`course_title_chirho` text NOT NULL,
	`issue_date_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`verification_code_chirho` text NOT NULL,
	`completion_percentage_chirho` integer DEFAULT 100,
	`quests_completed_chirho` integer DEFAULT 0,
	`total_quests_chirho` integer DEFAULT 0,
	`coins_earned_chirho` integer DEFAULT 0,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade,
	FOREIGN KEY (`course_id_chirho`) REFERENCES `courses_chirho`(`course_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE UNIQUE INDEX `certificates_chirho_verification_code_chirho_unique` ON `certificates_chirho` (`verification_code_chirho`);