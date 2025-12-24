CREATE TABLE `feedback_chirho` (
	`feedback_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text,
	`feedback_type_chirho` text NOT NULL,
	`feedback_text_chirho` text NOT NULL,
	`page_url_chirho` text,
	`user_agent_chirho` text,
	`status_chirho` text DEFAULT 'new',
	`admin_notes_chirho` text,
	`reviewed_by_user_id_chirho` text,
	`reviewed_at_chirho` integer,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE set null
);
