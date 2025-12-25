// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { json, error } from '@sveltejs/kit';
import { nanoid } from 'nanoid';
import type { RequestHandler } from './$types';
import { blogPostChirho, userChirho } from '$lib/server/db/schema';
import { eq } from 'drizzle-orm';

const SAMPLE_POSTS_CHIRHO = [
	{
		title: 'Welcome to Sonshine Christian Code Academy',
		slug: 'welcome-to-sonshine',
		excerpt:
			'We are excited to announce the launch of Sonshine Christian Code Academy! Learn how we are combining faith and technology education to equip the next generation of Christian developers.',
		content: `
# Welcome to Sonshine Christian Code Academy!

We are thrilled to announce the launch of Sonshine Christian Code Academy, a platform designed to teach coding skills while nurturing faith in Christ.

## Our Mission

At Sonshine, we believe that technology is a powerful tool that can be used for God's glory. Our mission is to:

- **Equip young believers** with valuable coding skills
- **Integrate Biblical principles** into every lesson
- **Build a community** of faith-driven developers

## What Makes Us Different

Unlike traditional coding bootcamps, every aspect of our curriculum is infused with Scripture and Christian values. From the quests you complete to the projects you build, you'll see how faith and technology work together.

## Get Started Today

Whether you're a complete beginner or have some coding experience, Sonshine Christian Code Academy has something for you. Start your journey today and discover how coding can be an act of worship!

*"Whatever you do, work at it with all your heart, as working for the Lord, not for human masters."* — Colossians 3:23
		`,
		category: 'announcement',
		scriptureReference: 'For I know the plans I have for you — Jeremiah 29:11'
	},
	{
		title: 'Why Learn to Code as a Christian?',
		slug: 'why-learn-to-code',
		excerpt:
			'Discover how coding skills can be used to serve God and advance His kingdom in the digital age. Technology is a gift that can be stewarded for eternal purposes.',
		content: `
# Why Learn to Code as a Christian?

In today's digital world, coding is more than just a career skill—it's a way to make a meaningful impact for the Kingdom of God.

## Technology as Stewardship

God has given us incredible tools and abilities. Just as Bezalel was filled with the Spirit to craft the tabernacle (Exodus 31:1-5), we can use our technical skills to build things that honor God.

## Practical Applications

Here are just a few ways Christian coders are making a difference:

1. **Bible Apps** - Making Scripture accessible to billions
2. **Church Management Systems** - Helping churches operate efficiently
3. **Ministry Websites** - Spreading the Gospel online
4. **Educational Platforms** - Like Sonshine, teaching the next generation

## A Biblical Perspective

The Bible doesn't specifically mention coding, but it has much to say about:

- **Using our talents** (Matthew 25:14-30)
- **Working with excellence** (Colossians 3:23)
- **Serving others** (Galatians 5:13)

## Your Calling

Whether you become a professional developer or simply learn to build projects for your church, coding is a valuable skill that can be used for God's glory.

*"Whatever you do, do it all for the glory of God."* — 1 Corinthians 10:31
		`,
		category: 'devotional',
		scriptureReference: 'Whatever you do, work at it with all your heart — Colossians 3:23'
	},
	{
		title: 'Getting Started with HTML: Your First Webpage',
		slug: 'getting-started-html',
		excerpt:
			'A beginner-friendly guide to creating your first HTML webpage. No prior experience needed! Learn the building blocks of every website on the internet.',
		content: `
# Getting Started with HTML: Your First Webpage

HTML (HyperText Markup Language) is the foundation of every website. Let's learn how to create your first webpage!

## What is HTML?

HTML is like the skeleton of a website. It defines the structure and content of web pages using special tags.

## Your First HTML Document

\`\`\`html
<!DOCTYPE html>
<html>
<head>
  <title>My First Page</title>
</head>
<body>
  <h1>Hello, World!</h1>
  <p>This is my first webpage. Praise the Lord!</p>
</body>
</html>
\`\`\`

## Understanding the Tags

- **\`<!DOCTYPE html>\`** - Tells the browser this is an HTML5 document
- **\`<html>\`** - The root element of the page
- **\`<head>\`** - Contains metadata like the title
- **\`<body>\`** - Contains the visible content

## Try It Yourself!

1. Open a text editor (like Notepad or VS Code)
2. Copy the code above
3. Save the file as \`index.html\`
4. Open it in your browser!

## What's Next?

In our next tutorial, we'll learn about:
- Adding images and links
- Creating lists
- Styling with CSS

*"In the beginning God created the heaven and the earth."* — Genesis 1:1

Just as God created the world, you are now creating your own digital space. How exciting!
		`,
		category: 'tutorial',
		scriptureReference: 'In the beginning God created — Genesis 1:1'
	},
	{
		title: 'Introducing Quest Coins: Gamifying Your Learning Journey',
		slug: 'quest-coins-launch',
		excerpt:
			'We have launched our Quest Coins reward system! Complete quests to earn coins and track your progress through the curriculum.',
		content: `
# Introducing Quest Coins

We're excited to announce Quest Coins, our new reward system that makes learning to code even more engaging!

## What Are Quest Coins?

Quest Coins are the in-platform currency you earn by:

- ✅ **Completing quests** without viewing the solution
- ⭐ **Bonus coins** for perfect solutions
- 🎯 **Streak bonuses** for consistent learning

## How It Works

Every quest in our curriculum awards Quest Coins upon completion. The more challenging the quest, the more coins you earn!

### Earning Structure

| Quest Difficulty | Base Coins | No-Peek Bonus |
|-----------------|------------|---------------|
| Beginner | 10 | +5 |
| Intermediate | 15 | +7 |
| Advanced | 25 | +10 |

## The Blockchain Ledger

Every Quest Coin transaction is recorded in our transparent ledger system, inspired by blockchain technology. You can:

- View your complete transaction history
- See total coins in circulation
- Track your ranking on the leaderboard

## What Can You Do With Coins?

Quest Coins represent your dedication and achievement. While they're not exchangeable for real currency, they:

- Show your progress on your profile
- Contribute to leaderboard rankings
- Mark your journey through the curriculum

*"Well done, good and faithful servant!"* — Matthew 25:21

Start earning your Quest Coins today!
		`,
		category: 'update',
		scriptureReference: 'Well done, good and faithful servant — Matthew 25:21'
	},
	{
		title: 'The Parables in Code: A New Quest Series',
		slug: 'parables-in-code',
		excerpt:
			'Introducing our new quest series that teaches programming concepts through the parables of Jesus. Learn logic, loops, and more through timeless stories.',
		content: `
# The Parables in Code: A New Quest Series

We're thrilled to announce our newest quest series: **The Parables in Code**!

## What Makes This Series Special

Jesus taught through parables—simple stories with profound meanings. Now, we're using these same stories to teach programming concepts.

## Featured Quests

### 1. The Sower (Arrays and Loops)
Learn about arrays by planting seeds in different types of soil. Some will grow, some won't—just like the parable!

### 2. The Lost Sheep (Search Algorithms)
Implement a search algorithm to find the one lost sheep among 100. Experience the joy of finding what was lost!

### 3. The Talents (Functions and Returns)
Create functions that represent the servants multiplying their talents. Learn about return values and function calls.

### 4. The Prodigal Son (State Management)
Track the journey of the prodigal son through different states. Learn about state machines and conditional logic.

### 5. The Good Samaritan (Object-Oriented Programming)
Model the characters in the parable as objects with properties and methods.

## Coming Soon

Each quest includes:
- 📖 The Scripture passage
- 💻 Interactive coding challenges
- 🎯 Practical programming skills
- 🙏 Devotional applications

*"He taught them many things by parables."* — Mark 4:2

Get ready to learn coding through the timeless wisdom of Jesus!
		`,
		category: 'news',
		scriptureReference: 'He taught them many things by parables — Mark 4:2'
	}
];

export const POST: RequestHandler = async ({ locals }) => {
	if (!locals.dbChirho) {
		error(500, 'Database not available');
	}

	// For security, only allow this in development or for platform admins
	if (locals.userChirho?.role !== 'platform_admin') {
		error(403, 'Only platform admins can seed the blog');
	}

	// Get the first admin user to use as author
	const admins = await locals.dbChirho
		.select()
		.from(userChirho)
		.where(eq(userChirho.role, 'platform_admin'))
		.limit(1);

	const authorId = admins.length > 0 ? admins[0].userId : locals.userChirho.userId;

	const insertedPosts = [];

	for (const post of SAMPLE_POSTS_CHIRHO) {
		const postId = nanoid();
		const publishedAt = new Date(Date.now() - Math.random() * 30 * 24 * 60 * 60 * 1000); // Random date in last 30 days

		await locals.dbChirho.insert(blogPostChirho).values({
			postId,
			authorId,
			title: post.title,
			slug: post.slug,
			excerpt: post.excerpt,
			content: post.content.trim(),
			category: post.category,
			scriptureReference: post.scriptureReference,
			status: 'published',
			publishedAt,
			viewCount: Math.floor(Math.random() * 200) + 50
		});

		insertedPosts.push({ postId, title: post.title });
	}

	return json({
		success: true,
		message: `Seeded ${insertedPosts.length} blog posts`,
		posts: insertedPosts
	});
};
