CREATE TABLE `blog_posts_chirho` (
	`post_id_chirho` text PRIMARY KEY NOT NULL,
	`author_id_chirho` text NOT NULL,
	`title_chirho` text NOT NULL,
	`slug_chirho` text NOT NULL,
	`excerpt_chirho` text,
	`content_chirho` text NOT NULL,
	`featured_image_url_chirho` text,
	`category_chirho` text DEFAULT 'news',
	`tags_chirho` text,
	`status_chirho` text DEFAULT 'draft',
	`published_at_chirho` integer,
	`meta_description_chirho` text,
	`scripture_reference_chirho` text,
	`view_count_chirho` integer DEFAULT 0,
	`created_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	`updated_at_chirho` integer DEFAULT (unixepoch()) NOT NULL,
	FOREIGN KEY (`author_id_chirho`) REFERENCES `users_chirho`(`user_id_chirho`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE UNIQUE INDEX `blog_posts_chirho_slug_chirho_unique` ON `blog_posts_chirho` (`slug_chirho`);