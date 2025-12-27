<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import '../app.css';
	import FeedbackBubbleChirho from '$lib/components/FeedbackBubbleChirho.svelte';
	import NavigationProgressChirho from '$lib/components/NavigationProgressChirho.svelte';

	let { children, data } = $props();

	let mobileMenuOpenChirho = $state(false);

	function toggleMobileMenuChirho() {
		mobileMenuOpenChirho = !mobileMenuOpenChirho;
	}

	function closeMobileMenuChirho() {
		mobileMenuOpenChirho = false;
	}
</script>

<svelte:head>
	<link rel="icon" type="image/png" href="/favicon-chirho.png" />

	<!-- Default Open Graph tags for social sharing -->
	<meta property="og:site_name" content="Sonshine Christian Code Academy" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="https://sonshinecoders.org/og-image-chirho.png" />
	<meta property="og:image:width" content="1200" />
	<meta property="og:image:height" content="630" />
	<meta property="og:image:alt" content="Sonshine Christian Code Academy - Learn to Code, Grow in Faith" />

	<!-- Twitter Card tags -->
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:site" content="@sonshinecoders" />
	<meta name="twitter:image" content="https://sonshinecoders.org/og-image-chirho.png" />

	<!-- Theme color for browsers -->
	<meta name="theme-color" content="#f59e0b" />

	<!-- Additional SEO -->
	<meta name="author" content="Sonshine Christian Code Academy" />
	<meta name="robots" content="index, follow" />
	<link rel="canonical" href="https://sonshinecoders.org" />
</svelte:head>

<div class="min-h-screen flex flex-col">
	<!-- Navigation Progress Indicator -->
	<NavigationProgressChirho />

	<!-- Skip to main content link for keyboard users -->
	<a href="#main-content" class="sr-only focus:not-sr-only focus:absolute focus:top-4 focus:left-4 focus:z-[100] focus:bg-amber-500 focus:text-white focus:px-4 focus:py-2 focus:rounded-lg focus:font-semibold">
		Skip to main content
	</a>

	<!-- Header -->
	<header class="bg-white border-b border-slate-200 sticky top-0 z-50">
		<nav class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8" aria-label="Main navigation">
			<div class="flex justify-between h-16 items-center">
				<!-- Logo -->
				<a href="/" class="flex items-center gap-2 no-underline">
					<img src="/favicon-chirho.png" alt="Sonshine Logo" class="w-10 h-10" />
					<span class="font-bold text-xl text-slate-900 hidden sm:inline">Sonshine Christian Code Academy</span>
					<span class="font-bold text-xl text-slate-900 sm:hidden">Sonshine Coders</span>
				</a>

				<!-- Navigation -->
				<div class="hidden md:flex items-center gap-6">
					<a href="/about-chirho" class="text-slate-600 hover:text-slate-900 no-underline">About</a>
					<a href="/courses-chirho" class="text-slate-600 hover:text-slate-900 no-underline"
						>Courses</a
					>
					<a href="/pricing-chirho" class="text-slate-600 hover:text-slate-900 no-underline"
						>Pricing</a
					>

					{#if data.userChirho}
						<a
							href="/dashboard-chirho"
							class="text-slate-600 hover:text-slate-900 no-underline">Dashboard</a
						>
						<a
							href="/quests-chirho"
							class="text-slate-600 hover:text-slate-900 no-underline">Quests</a
						>
						<a
							href="/workshop-chirho"
							class="text-slate-600 hover:text-slate-900 no-underline flex items-center gap-1">
							<span class="text-sm">🛠️</span> Workshop
						</a>
						<a
							href="/lamp-chirho"
							class="text-slate-600 hover:text-slate-900 no-underline flex items-center gap-1">
							<span class="text-sm">🔦</span> Lamp
						</a>
						<a
							href="/pathway-chirho"
							class="text-slate-600 hover:text-slate-900 no-underline flex items-center gap-1">
							<span class="text-sm">📓</span> Pathway
						</a>
						<a
							href="/leaderboard-chirho"
							class="text-slate-600 hover:text-slate-900 no-underline flex items-center gap-1">
							<span class="text-sm">🏆</span> Leaderboard
						</a>
						<div class="relative group">
							<button class="flex items-center gap-2 text-slate-600 hover:text-slate-900">
								<span class="text-sm font-medium">
									{data.userChirho.displayName || data.userChirho.username}
								</span>
								<span class="text-amber-500 flex items-center gap-0.5 text-xs">
									🪙 {data.userChirho.questCoinsBalance || 0}
								</span>
								<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
								</svg>
							</button>
							<!-- Dropdown menu -->
							<div class="absolute right-0 top-full mt-2 w-48 bg-white rounded-lg shadow-lg border border-slate-200 py-2 hidden group-hover:block">
								<a href="/settings-chirho" class="block px-4 py-2 text-sm text-slate-700 hover:bg-slate-50 no-underline">
									Settings
								</a>
								<a href="/quest-coins-chirho" class="block px-4 py-2 text-sm text-slate-700 hover:bg-slate-50 no-underline">
									Quest Coins
								</a>
								<hr class="my-2 border-slate-200">
								<a href="/auth-chirho/logout" class="block px-4 py-2 text-sm text-red-600 hover:bg-red-50 no-underline">
									Logout
								</a>
							</div>
						</div>
					{:else}
						<a
							href="/auth-chirho/login"
							class="text-slate-600 hover:text-slate-900 no-underline">Login</a
						>
						<a href="/auth-chirho/register" class="btn-primary no-underline"> Get Started </a>
					{/if}
				</div>

				<!-- Mobile menu button -->
				<button
					class="md:hidden p-2"
					aria-label={mobileMenuOpenChirho ? 'Close mobile menu' : 'Open mobile menu'}
					aria-expanded={mobileMenuOpenChirho}
					onclick={toggleMobileMenuChirho}
				>
					{#if mobileMenuOpenChirho}
						<svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
						</svg>
					{:else}
						<svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
						</svg>
					{/if}
				</button>
			</div>

			<!-- Mobile Menu -->
			{#if mobileMenuOpenChirho}
				<div class="md:hidden border-t border-slate-200 bg-white">
					<div class="px-4 py-4 space-y-3">
						<a href="/about-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>About</a>
						<a href="/courses-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>Courses</a>
						<a href="/pricing-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>Pricing</a>

						{#if data.userChirho}
							<hr class="border-slate-200">
							<a href="/dashboard-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>Dashboard</a>
							<a href="/quests-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>Quests</a>
							<a href="/workshop-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2 flex items-center gap-2" onclick={closeMobileMenuChirho}>
								<span>🛠️</span> Workshop
							</a>
							<a href="/lamp-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2 flex items-center gap-2" onclick={closeMobileMenuChirho}>
								<span>🔦</span> Lamp (Videos)
							</a>
							<a href="/pathway-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2 flex items-center gap-2" onclick={closeMobileMenuChirho}>
								<span>📓</span> Pathway (Interactive)
							</a>
							<a href="/leaderboard-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2 flex items-center gap-2" onclick={closeMobileMenuChirho}>
								<span>🏆</span> Leaderboard
							</a>
							<a href="/quest-coins-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2 flex items-center gap-2" onclick={closeMobileMenuChirho}>
								<span>🪙</span> Quest Coins ({data.userChirho.questCoinsBalance || 0})
							</a>
							<hr class="border-slate-200">
							<a href="/settings-chirho" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>Settings</a>
							<a href="/auth-chirho/logout" class="block text-red-600 hover:text-red-700 no-underline py-2" onclick={closeMobileMenuChirho}>Logout</a>
						{:else}
							<hr class="border-slate-200">
							<a href="/auth-chirho/login" class="block text-slate-600 hover:text-slate-900 no-underline py-2" onclick={closeMobileMenuChirho}>Login</a>
							<a href="/auth-chirho/register" class="block bg-amber-500 text-white text-center font-semibold py-3 rounded-lg no-underline" onclick={closeMobileMenuChirho}>Get Started</a>
						{/if}
					</div>
				</div>
			{/if}
		</nav>
	</header>

	<!-- Main content -->
	<main id="main-content" class="flex-1" tabindex="-1">
		{@render children()}
	</main>

	<!-- Footer -->
	<footer class="bg-slate-900 text-slate-400 py-12">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="grid md:grid-cols-4 gap-8">
				<div>
					<div class="flex items-center gap-3 mb-4">
						<span class="text-3xl text-amber-400">&lt;✝&gt;</span>
						<span class="font-bold text-lg text-white">Sonshine Christian Code Academy</span>
					</div>
					<p class="text-sm">Learn to code. Grow in faith. Build something that matters.</p>
					<div class="mt-4 flex items-center gap-4 text-xs">
						<a href="https://sonshinewarriors.org" target="_blank" rel="noopener noreferrer" class="text-slate-400 hover:text-white no-underline">
							Sonshine Warriors
						</a>
						<span class="text-slate-600">|</span>
						<a href="https://loveJesus.software" target="_blank" rel="noopener noreferrer" class="text-slate-400 hover:text-white no-underline">
							Love Jesus Software
						</a>
					</div>
					<div class="mt-4">
						<a
							href="https://www.jesusfilm.org/watch/jesus.html/english.html"
							target="_blank"
							rel="noopener noreferrer"
							class="inline-flex items-center gap-2 text-amber-400 hover:text-amber-300 no-underline text-sm"
							title="Watch the Jesus Film"
						>
							<span class="text-2xl">☧</span>
							<span>Watch the Jesus Film</span>
						</a>
					</div>
				</div>

				<nav aria-label="Learn navigation">
					<h4 class="font-semibold text-white mb-4">Learn</h4>
					<ul class="space-y-2 text-sm">
						<li><a href="/courses-chirho" class="hover:text-white no-underline">Courses</a></li>
						<li><a href="/quests-chirho" class="hover:text-white no-underline">Quests</a></li>
						<li><a href="/leaderboard-chirho" class="hover:text-white no-underline">Leaderboard</a></li>
					</ul>
				</nav>

				<nav aria-label="Community navigation">
					<h4 class="font-semibold text-white mb-4">Community</h4>
					<ul class="space-y-2 text-sm">
						<li>
							<a href="/organizations-chirho" class="hover:text-white no-underline">For Organizations</a>
						</li>
						<li>
							<a href="/blog-chirho" class="hover:text-white no-underline">Blog</a>
						</li>
						<li>
							<a href="https://discord.gg/sonshinecoders" target="_blank" rel="noopener noreferrer" class="hover:text-white no-underline flex items-center gap-1">
								<svg class="w-4 h-4" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path d="M20.317 4.37a19.791 19.791 0 0 0-4.885-1.515.074.074 0 0 0-.079.037c-.21.375-.444.864-.608 1.25a18.27 18.27 0 0 0-5.487 0 12.64 12.64 0 0 0-.617-1.25.077.077 0 0 0-.079-.037A19.736 19.736 0 0 0 3.677 4.37a.07.07 0 0 0-.032.027C.533 9.046-.32 13.58.099 18.057a.082.082 0 0 0 .031.057 19.9 19.9 0 0 0 5.993 3.03.078.078 0 0 0 .084-.028c.462-.63.874-1.295 1.226-1.994a.076.076 0 0 0-.041-.106 13.107 13.107 0 0 1-1.872-.892.077.077 0 0 1-.008-.128 10.2 10.2 0 0 0 .372-.292.074.074 0 0 1 .077-.01c3.928 1.793 8.18 1.793 12.062 0a.074.074 0 0 1 .078.01c.12.098.246.198.373.292a.077.077 0 0 1-.006.127 12.299 12.299 0 0 1-1.873.892.077.077 0 0 0-.041.107c.36.698.772 1.362 1.225 1.993a.076.076 0 0 0 .084.028 19.839 19.839 0 0 0 6.002-3.03.077.077 0 0 0 .032-.054c.5-5.177-.838-9.674-3.549-13.66a.061.061 0 0 0-.031-.03zM8.02 15.33c-1.183 0-2.157-1.085-2.157-2.419 0-1.333.956-2.419 2.157-2.419 1.21 0 2.176 1.096 2.157 2.42 0 1.333-.956 2.418-2.157 2.418zm7.975 0c-1.183 0-2.157-1.085-2.157-2.419 0-1.333.955-2.419 2.157-2.419 1.21 0 2.176 1.096 2.157 2.42 0 1.333-.946 2.418-2.157 2.418z"/></svg>
								Discord <span class="sr-only">(opens in new tab)</span>
							</a>
						</li>
					</ul>
				</nav>

				<nav aria-label="Support navigation">
					<h4 class="font-semibold text-white mb-4">Support</h4>
					<ul class="space-y-2 text-sm">
						<li><a href="/pricing-chirho" class="hover:text-white no-underline">Pricing</a></li>
						<li><a href="/help-chirho" class="hover:text-white no-underline">Help & FAQ</a></li>
						<li><a href="/about-chirho" class="hover:text-white no-underline">About Us</a></li>
					</ul>
				</nav>
			</div>

			<div class="mt-8 pt-8 border-t border-slate-800 text-center text-sm">
				<p class="scripture-quote border-l-amber-400 text-slate-500">
					"For God so loved the world that he gave his only begotten Son, that whosoever believeth
					in him should not perish, but have everlasting life." — John 3:16 (KJV)
				</p>
				<p class="mt-4">&copy; {new Date().getFullYear()} Sonshine Christian Code Academy. Built for His glory.</p>
			</div>
		</div>
	</footer>

	<!-- Feedback Bubble -->
	<FeedbackBubbleChirho />
</div>
