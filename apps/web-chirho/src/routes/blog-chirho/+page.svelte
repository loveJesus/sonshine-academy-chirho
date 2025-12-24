<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { goto } from '$app/navigation';

	let { data } = $props();

	const categoriesChirho = [
		{ value: '', label: 'All Posts', icon: '📚' },
		{ value: 'announcement', label: 'Announcements', icon: '📢' },
		{ value: 'tutorial', label: 'Tutorials', icon: '📝' },
		{ value: 'devotional', label: 'Devotionals', icon: '🙏' },
		{ value: 'news', label: 'News', icon: '📰' },
		{ value: 'update', label: 'Updates', icon: '🔄' }
	];

	// Sample posts to display when database is empty
	const samplePostsChirho = [
		{
			postId: '1',
			title: 'Welcome to Sonshine Christian Code Academy',
			slug: 'welcome-to-sonshine',
			excerpt: 'We are excited to announce the launch of Sonshine Christian Code Academy! Learn how we are combining faith and technology education.',
			category: 'announcement',
			publishedAt: new Date('2025-01-15'),
			scriptureReference: 'For I know the plans I have for you — Jeremiah 29:11',
			authorName: 'Sonshine Team',
			viewCount: 150
		},
		{
			postId: '2',
			title: 'Why Learn to Code as a Christian?',
			slug: 'why-learn-to-code',
			excerpt: 'Discover how coding skills can be used to serve God and advance His kingdom in the digital age.',
			category: 'devotional',
			publishedAt: new Date('2025-01-10'),
			scriptureReference: 'Whatever you do, work at it with all your heart — Colossians 3:23',
			authorName: 'Sonshine Team',
			viewCount: 98
		},
		{
			postId: '3',
			title: 'Getting Started with HTML: Your First Webpage',
			slug: 'getting-started-html',
			excerpt: 'A beginner-friendly guide to creating your first HTML webpage. No prior experience needed!',
			category: 'tutorial',
			publishedAt: new Date('2025-01-08'),
			scriptureReference: 'In the beginning God created — Genesis 1:1',
			authorName: 'Sonshine Team',
			viewCount: 234
		},
		{
			postId: '4',
			title: 'New Quest Series: The Parables in Code',
			slug: 'parables-in-code',
			excerpt: 'Introducing our new quest series that teaches programming concepts through the parables of Jesus.',
			category: 'news',
			publishedAt: new Date('2025-01-05'),
			scriptureReference: 'He taught them many things by parables — Mark 4:2',
			authorName: 'Sonshine Team',
			viewCount: 76
		},
		{
			postId: '5',
			title: 'Platform Update: Quest Coins Now Available',
			slug: 'quest-coins-launch',
			excerpt: 'We have launched our Quest Coins reward system! Complete quests to earn coins and unlock achievements.',
			category: 'update',
			publishedAt: new Date('2025-01-02'),
			scriptureReference: 'Well done, good and faithful servant — Matthew 25:21',
			authorName: 'Sonshine Team',
			viewCount: 189
		}
	];

	// Use database posts if available, otherwise show sample posts
	const displayPostsChirho = $derived(
		data.postsChirho.length > 0 ? data.postsChirho : samplePostsChirho.filter(function(p) {
			return !data.categoryChirho || p.category === data.categoryChirho;
		})
	);

	function getCategoryColorChirho(category) {
		const colorsChirho = {
			announcement: 'bg-purple-100 text-purple-800',
			tutorial: 'bg-blue-100 text-blue-800',
			devotional: 'bg-amber-100 text-amber-800',
			news: 'bg-green-100 text-green-800',
			update: 'bg-slate-100 text-slate-800'
		};
		return colorsChirho[category] || colorsChirho.news;
	}

	function formatDateChirho(date) {
		if (!date) return '';
		const d = new Date(date);
		return d.toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'long',
			day: 'numeric'
		});
	}

	function filterByCategoryChirho(category) {
		if (category) {
			goto('/blog-chirho?category=' + category);
		} else {
			goto('/blog-chirho');
		}
	}
</script>

<svelte:head>
	<title>Blog - Sonshine Christian Code Academy</title>
	<meta name="description" content="Read the latest news, tutorials, and devotionals from Sonshine Christian Code Academy." />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block">📖</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Blog & News</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Stay updated with announcements, tutorials, devotionals, and insights from our community.
		</p>
	</div>
</section>

<!-- Category Filter -->
<section class="py-6 bg-white border-b border-slate-200 sticky top-16 z-40">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex flex-wrap items-center gap-2">
			{#each categoriesChirho as categoryChirho}
				<button
					type="button"
					onclick={() => filterByCategoryChirho(categoryChirho.value)}
					class="px-4 py-2 rounded-full text-sm font-medium transition-colors {data.categoryChirho === categoryChirho.value || (!data.categoryChirho && !categoryChirho.value) ? 'bg-amber-500 text-white' : 'bg-slate-100 text-slate-700 hover:bg-slate-200'}"
				>
					<span class="mr-1">{categoryChirho.icon}</span>
					{categoryChirho.label}
				</button>
			{/each}
		</div>
	</div>
</section>

<!-- Blog Posts -->
<section class="py-12 bg-slate-50">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		{#if displayPostsChirho.length === 0}
			<div class="text-center py-16">
				<span class="text-6xl block mb-4">📝</span>
				<h3 class="text-xl font-semibold text-slate-900 mb-2">No posts yet</h3>
				<p class="text-slate-600">Check back soon for new content!</p>
			</div>
		{:else}
			<!-- Featured Post (first post) -->
			{#if displayPostsChirho.length > 0 && !data.categoryChirho}
				{@const featuredChirho = displayPostsChirho[0]}
				<div class="mb-12">
					<a href="/blog-chirho/{featuredChirho.slug}" class="block group no-underline">
						<div class="bg-white rounded-2xl shadow-sm border border-slate-200 overflow-hidden hover:shadow-lg transition-shadow">
							<div class="grid md:grid-cols-2 gap-0">
								<div class="bg-gradient-to-br from-amber-500 to-orange-500 p-8 flex items-center justify-center">
									<span class="text-8xl">📖</span>
								</div>
								<div class="p-8">
									<div class="flex items-center gap-2 mb-4">
										<span class="text-xs px-2 py-1 rounded-full {getCategoryColorChirho(featuredChirho.category)}">
											{featuredChirho.category}
										</span>
										<span class="text-xs text-slate-500">{formatDateChirho(featuredChirho.publishedAt)}</span>
									</div>
									<h2 class="text-2xl font-bold text-slate-900 mb-3 group-hover:text-amber-600 transition-colors">
										{featuredChirho.title}
									</h2>
									<p class="text-slate-600 mb-4">{featuredChirho.excerpt}</p>
									{#if featuredChirho.scriptureReference}
										<p class="text-sm italic text-slate-500 border-l-2 border-amber-400 pl-2 mb-4">
											{featuredChirho.scriptureReference}
										</p>
									{/if}
									<div class="flex items-center justify-between">
										<span class="text-sm text-slate-500">By {featuredChirho.authorName || 'Sonshine Team'}</span>
										<span class="text-amber-600 font-medium group-hover:underline">Read more →</span>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			{/if}

			<!-- Post Grid -->
			<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
				{#each (data.categoryChirho ? displayPostsChirho : displayPostsChirho.slice(1)) as postChirho}
					<a href="/blog-chirho/{postChirho.slug}" class="block group no-underline">
						<article class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden hover:shadow-md transition-shadow h-full flex flex-col">
							<!-- Post Image/Placeholder -->
							<div class="h-40 bg-gradient-to-br from-slate-100 to-slate-200 flex items-center justify-center">
								{#if postChirho.featuredImageUrl}
									<img src={postChirho.featuredImageUrl} alt={postChirho.title} class="w-full h-full object-cover" />
								{:else}
									<span class="text-5xl opacity-50">📄</span>
								{/if}
							</div>

							<!-- Post Content -->
							<div class="p-5 flex-1 flex flex-col">
								<div class="flex items-center gap-2 mb-3">
									<span class="text-xs px-2 py-0.5 rounded-full {getCategoryColorChirho(postChirho.category)}">
										{postChirho.category}
									</span>
									<span class="text-xs text-slate-500">{formatDateChirho(postChirho.publishedAt)}</span>
								</div>

								<h3 class="text-lg font-bold text-slate-900 mb-2 group-hover:text-amber-600 transition-colors">
									{postChirho.title}
								</h3>

								<p class="text-sm text-slate-600 mb-3 flex-1">{postChirho.excerpt}</p>

								{#if postChirho.scriptureReference}
									<p class="text-xs italic text-slate-500 border-l-2 border-amber-400 pl-2 mb-3">
										{postChirho.scriptureReference}
									</p>
								{/if}

								<div class="flex items-center justify-between text-sm">
									<span class="text-slate-500">{postChirho.authorName || 'Sonshine Team'}</span>
									<span class="text-slate-400">{postChirho.viewCount || 0} views</span>
								</div>
							</div>
						</article>
					</a>
				{/each}
			</div>
		{/if}
	</div>
</section>

<!-- Newsletter CTA -->
<section class="py-16 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl block mb-4">✉️</span>
		<h2 class="text-3xl font-bold mb-4">Stay Connected</h2>
		<p class="text-xl text-white/90 mb-8">
			Join our community on Discord to get the latest updates and connect with other learners.
		</p>
		<a
			href="https://discord.gg/sonshinecoders"
			target="_blank"
			rel="noopener noreferrer"
			class="inline-flex items-center gap-2 bg-white text-amber-600 font-bold px-8 py-3 rounded-lg hover:bg-amber-50 transition-colors no-underline"
		>
			<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M20.317 4.37a19.791 19.791 0 0 0-4.885-1.515.074.074 0 0 0-.079.037c-.21.375-.444.864-.608 1.25a18.27 18.27 0 0 0-5.487 0 12.64 12.64 0 0 0-.617-1.25.077.077 0 0 0-.079-.037A19.736 19.736 0 0 0 3.677 4.37a.07.07 0 0 0-.032.027C.533 9.046-.32 13.58.099 18.057a.082.082 0 0 0 .031.057 19.9 19.9 0 0 0 5.993 3.03.078.078 0 0 0 .084-.028c.462-.63.874-1.295 1.226-1.994a.076.076 0 0 0-.041-.106 13.107 13.107 0 0 1-1.872-.892.077.077 0 0 1-.008-.128 10.2 10.2 0 0 0 .372-.292.074.074 0 0 1 .077-.01c3.928 1.793 8.18 1.793 12.062 0a.074.074 0 0 1 .078.01c.12.098.246.198.373.292a.077.077 0 0 1-.006.127 12.299 12.299 0 0 1-1.873.892.077.077 0 0 0-.041.107c.36.698.772 1.362 1.225 1.993a.076.076 0 0 0 .084.028 19.839 19.839 0 0 0 6.002-3.03.077.077 0 0 0 .032-.054c.5-5.177-.838-9.674-3.549-13.66a.061.061 0 0 0-.031-.03zM8.02 15.33c-1.183 0-2.157-1.085-2.157-2.419 0-1.333.956-2.419 2.157-2.419 1.21 0 2.176 1.096 2.157 2.42 0 1.333-.956 2.418-2.157 2.418zm7.975 0c-1.183 0-2.157-1.085-2.157-2.419 0-1.333.955-2.419 2.157-2.419 1.21 0 2.176 1.096 2.157 2.42 0 1.333-.946 2.418-2.157 2.418z"/></svg>
			Join Discord
		</a>
	</div>
</section>
