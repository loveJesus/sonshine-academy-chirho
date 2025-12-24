# Sonshine Academy

> "For God so loved the world that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." - John 3:16 (KJV)

A Christian programming e-learning platform for high schoolers. Learn to code while growing in faith.

## Structure

```
sonshine-academy-chirho/
├── apps/
│   ├── web-chirho/              # Main SvelteKit platform
│   └── vps-controller-chirho/   # VPS management API
├── packages/
│   ├── node-agent-chirho/       # Runs on each VPS
│   └── student-container-chirho/ # Student Docker image
├── content/                     # Course content
├── infrastructure/              # VPS setup scripts
└── docs/                        # Documentation
```

## Features

- **18-week curriculum** with 3 progressive projects
- **141 biblical-themed coding quests** ("The Narrow Gate", "Seventy Times Seven", etc.)
- **Web-based terminal** for each student (Docker + ttyd)
- **Organization & cohort management** for churches and schools
- **Quest Coins** gamification system
- **YouTube video lessons** with progress tracking
- **Pay-what-you-can** donation model with free scholarships

## Tech Stack

- **Frontend**: SvelteKit 2, Svelte 5, Tailwind CSS
- **Backend**: Cloudflare Workers, D1 (SQLite)
- **Database**: Drizzle ORM
- **Terminal**: Docker + ttyd on Hetzner VPS
- **Payments**: Stripe

## Getting Started

```bash
# Install dependencies
bun install

# Run development server
bun run dev

# Run database migrations
bun run db:migrate
```

## The Three Projects

1. **Bible Flashcard App** (Weeks 1-4) - HTML/CSS/JS fundamentals
2. **Bible Annotation App** (Weeks 5-8) - Full-stack with SQL
3. **Bible Verse Twitter Clone** (Weeks 9-14) - Real-time multi-user

## License

MIT - Built for the glory of God
