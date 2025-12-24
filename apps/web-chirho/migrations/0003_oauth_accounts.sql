CREATE TABLE `oauth_accounts_chirho` (
	`oauth_account_id_chirho` text PRIMARY KEY NOT NULL,
	`user_id_chirho` text NOT NULL,
	`provider_chirho` text NOT NULL,
	`provider_user_id_chirho` text NOT NULL,
	`access_token_chirho` text,
	`refresh_token_chirho` text,
	`expires_at_chirho` integer,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`user_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
PRAGMA foreign_keys=OFF;--> statement-breakpoint
CREATE TABLE `__new_users_chirho` (
	`user_id_chirho` text PRIMARY KEY NOT NULL,
	`username_chirho` text NOT NULL,
	`email_chirho` text NOT NULL,
	`password_hash_chirho` text,
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
INSERT INTO `__new_users_chirho`("user_id_chirho", "username_chirho", "email_chirho", "password_hash_chirho", "display_name_chirho", "avatar_url_chirho", "role_chirho", "organization_id_chirho", "cohort_id_chirho", "terminal_container_id_chirho", "payment_status_chirho", "donation_amount_cents_chirho", "quest_coins_balance_chirho", "github_username_chirho", "background_color_chirho", "dismissed_announcement_id_chirho", "email_verified_chirho", "email_verification_token_chirho", "created_at_chirho", "updated_at_chirho", "last_login_at_chirho") SELECT "user_id_chirho", "username_chirho", "email_chirho", "password_hash_chirho", "display_name_chirho", "avatar_url_chirho", "role_chirho", "organization_id_chirho", "cohort_id_chirho", "terminal_container_id_chirho", "payment_status_chirho", "donation_amount_cents_chirho", "quest_coins_balance_chirho", "github_username_chirho", "background_color_chirho", "dismissed_announcement_id_chirho", "email_verified_chirho", "email_verification_token_chirho", "created_at_chirho", "updated_at_chirho", "last_login_at_chirho" FROM `users_chirho`;--> statement-breakpoint
DROP TABLE `users_chirho`;--> statement-breakpoint
ALTER TABLE `__new_users_chirho` RENAME TO `users_chirho`;--> statement-breakpoint
PRAGMA foreign_keys=ON;--> statement-breakpoint
CREATE UNIQUE INDEX `users_chirho_username_chirho_unique` ON `users_chirho` (`username_chirho`);--> statement-breakpoint
CREATE UNIQUE INDEX `users_chirho_email_chirho_unique` ON `users_chirho` (`email_chirho`);