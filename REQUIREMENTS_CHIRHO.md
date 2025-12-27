# Sonshine Christian Code Academy - Requirements
# For God so loved the world, that he gave his only begotten Son,
# that whosoever believeth in him should not perish, but have everlasting life.
# John 3:16 (KJV)

## Branding
- **Name:** Sonshine Christian Code Academy
- **Domain:** sonshinecodingschool.org
- **Partner:** sonshinewarriors.org
- **Design:** Similar to sonshinewarriors.org but fresher, more alive, still sober
- **Scripture:** KJV primary, others acceptable

## Target Audience
- Primary: Middle School (11-14) and High School (14-18)
- Secondary: All ages welcome (family-friendly, parents can learn too)

## Authentication
- Email/password registration
- Google OAuth integration
- Session-based auth (already implemented)

## Payment Model (Stripe)
- Monthly subscription tiers:
  - **$0/mo** - Scholarship (full access, no cost)
  - **$5/mo** - Cover my costs (~$3-5 server infrastructure)
  - **$10/mo** - Support the mission (covers living expenses, funds scholarships)
  - **$25/mo** - Champion (sponsors 5 students, supports missions)

## Content
- **141 Quests** - Biblical-themed coding challenges (user will share path to import)
- **51 Payload Scripts** - Terminal automation scripts (user will share path)
- **3 Main Projects:**
  1. Bible Flashcard App (Weeks 1-4, Beginner)
  2. Bible Study Notes App (Weeks 5-8, Intermediate)
  3. Verse Share Network (Weeks 9-14, Advanced)
- **Deployment:** Students deploy their projects to Cloudflare
- **Style:** freeCodeCamp-style step-by-step curriculum with certificates

## Quest Coin Economy
- **Purpose:** Meaningful rewards that matter for their future
- **Benefits:**
  - Help students find work/internships
  - Earn leadership responsibilities (mentoring others)
  - Badges and profile themes (gamification)
  - Physical rewards: Christian shirts, etc. (implement later)
- **Leadership Tiers:**
  - Mentors (help other students)
  - Quest creators (make practice quests - second tier)
- **Philosophy:** All to the glory of God

## Custom Content
- Organizations can REQUEST custom quests
- Platform admins create and approve all quests
- No self-service quest creation for orgs

## Terminal Infrastructure
- **Provider:** Hetzner VPS
- **Technology:** ttyd (web terminal)
- **Scale:** Start small (10-30 students, 1-2 VPS servers)
- **Growth:** Scale as needed

## Community
- **Discord:** Need to create server
- **Integration:** Link from platform to Discord

## Email
- **Provider:** Resend
- **Use cases:** Welcome emails, progress updates, notifications

## Features to Build

### Core (MVP)
- [x] User registration and authentication
- [x] Organization management
- [x] Cohort management
- [x] Admin panel (users, quests)
- [x] Google OAuth
- [x] Blog/news section (built-in)
- [x] Simple About Us page
- [x] Discord link integration
- [x] Full WCAG accessibility compliance
- [x] Feedback bubble component
- [x] Courses listing page
- [x] Quests listing page
- [x] Stripe subscription integration (checkout, webhooks, pricing page)
- [x] Resend email integration (welcome, quest completion emails)
- [x] freeCodeCamp-style progress tracking
- [ ] Certificate generation
- [ ] Mentor/leadership tier system
- [x] Quest import from JSON files (131 quests, 176 tests)
- [x] Payload import (50 scripts imported)
- [ ] VPS provisioning system

### Video Courses
- [x] YouTube video embedding per lesson
- [ ] Video progress tracking (watched/unwatched)
- [x] Video chapters/timestamps
- [ ] Video playback speed controls (YouTube native)
- [ ] Take notes while watching

### Coding Flashcards
- [ ] Flashcard decks (JavaScript, HTML, CSS, etc.)
- [ ] Spaced repetition algorithm
- [ ] Daily review reminders
- [ ] Custom flashcard creation
- [ ] Share flashcard decks

### Feedback System (Universal Comment Bubble)
- [ ] Floating feedback button on all pages
- [ ] Context-aware (knows which video/quest/page)
- [ ] Feedback types: Bug report, Suggestion, Question, Praise
- [ ] Screenshot capture option
- [ ] Admin dashboard for reviewing feedback
- [ ] Status tracking (New, In Progress, Resolved)
- [ ] Upvoting popular suggestions

### Future Enhancements
- [ ] AI code review/hints
- [ ] Pair programming matching
- [ ] Live coding sessions
- [ ] Parent progress reports
- [ ] Mobile app (PWA)
- [ ] Offline mode for lessons
- [ ] Code playground/sandbox
- [ ] GitHub integration

## Accessibility (WCAG Compliance)
- Screen reader support
- Keyboard navigation
- Color contrast (AA minimum)
- Alt text for all images
- Focus indicators
- Skip links

## Admin
- Initial admin: Single user (hallelujah)
- Add more admins as team grows

## Timeline
- **Target Launch:** January 2026
- **Current Date:** December 2025

## Pages Needed
- [x] Landing page (/)
- [x] Login (/auth-chirho/login)
- [x] Register (/auth-chirho/register)
- [x] Dashboard (/dashboard-chirho)
- [x] Organization registration (/organizations-chirho/register)
- [x] Organization public page (/organizations-chirho/[slug])
- [x] Organization management (/organizations-chirho/[slug]/manage)
- [x] Admin dashboard (/admin-chirho)
- [x] Admin users (/admin-chirho/users-chirho)
- [x] Admin quests (/admin-chirho/quests-chirho)
- [x] Courses listing (/courses-chirho)
- [x] Quests listing (/quests-chirho)
- [x] About Us (/about-chirho)
- [x] Blog/News (/blog-chirho)
- [x] Course detail (/courses-chirho/[slug]) - with modules/sessions/lessons accordion
- [x] Lesson page (/courses-chirho/[slug]/lessons/[lesson]) - video embedding, reading, quest links
- [x] Quest detail (/quests-chirho/[id]) - with code editor and test runner
- [x] Leaderboard (/leaderboard-chirho) - top Quest Coin earners with podium
- [x] Quest Coin Ledger (/quest-coins-chirho) - transaction history with filtering
- [x] Settings (/settings-chirho)
- [x] Help/Support (/help-chirho)

## Cloudflare Resources (sonshinewarriors account)
- **Account ID:** a2f7103a3a2ac299398d0f85e9977905
- **Worker:** sonshine-coding-school-chirho
- **D1 Database:** sonshine-coding-school-chirho (8b1c1a56-6028-4408-8df8-3c2c61dc381c)
- **R2 Bucket:** sonshine-coding-school-chirho
