<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import MarkdownTextChirho from '$lib/components/MarkdownTextChirho.svelte';

	let { data } = $props();

	const postChirho = $derived(data.postChirho);
	const relatedPostsChirho = $derived(data.relatedPostsChirho);

	/** @param {Date | string | null} date */
	function formatDateChirho(date) {
		if (!date) return '';
		const d = new Date(date);
		return d.toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'long',
			day: 'numeric'
		});
	}

	/** @param {string} category */
	function getCategoryColorChirho(category) {
		/** @type {Record<string, string>} */
		const colorsChirho = {
			announcement: 'bg-purple-100 text-purple-800',
			tutorial: 'bg-blue-100 text-blue-800',
			devotional: 'bg-amber-100 text-amber-800',
			news: 'bg-green-100 text-green-800',
			update: 'bg-slate-100 text-slate-800'
		};
		return colorsChirho[category] || colorsChirho.news;
	}

	/** @param {string} category */
	function getCategoryIconChirho(category) {
		/** @type {Record<string, string>} */
		const iconsChirho = {
			announcement: '📢',
			tutorial: '📝',
			devotional: '🙏',
			news: '📰',
			update: '🔄'
		};
		return iconsChirho[category] || '📄';
	}
</script>

<svelte:head>
	<title>{postChirho.title} - Sonshine Christian Code Academy Blog</title>
	<meta name="description" content={postChirho.excerpt || postChirho.metaDescription || ''} />
	<meta property="og:title" content={postChirho.title} />
	<meta property="og:description" content={postChirho.excerpt || ''} />
	<meta property="og:type" content="article" />
	{#if postChirho.featuredImageUrl}
		<meta property="og:image" content={postChirho.featuredImageUrl} />
	{/if}
</svelte:head>

<!-- Breadcrumb -->
<nav class="bg-white border-b border-slate-200 py-3" aria-label="Breadcrumb">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<ol class="flex items-center gap-2 text-sm">
			<li>
				<a href="/" class="text-slate-500 hover:text-slate-700 no-underline">Home</a>
			</li>
			<li class="text-slate-400">/</li>
			<li>
				<a href="/blog-chirho" class="text-slate-500 hover:text-slate-700 no-underline">Blog</a>
			</li>
			<li class="text-slate-400">/</li>
			<li class="text-slate-900 font-medium truncate max-w-[200px]">{postChirho.title}</li>
		</ol>
	</div>
</nav>

<!-- Article -->
<article class="py-12 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<!-- Header -->
		<header class="mb-10">
			<div class="flex items-center gap-3 mb-4">
				<span class="text-sm px-3 py-1 rounded-full {getCategoryColorChirho(postChirho.category)}">
					{getCategoryIconChirho(postChirho.category)} {postChirho.category}
				</span>
				<span class="text-sm text-slate-500">{formatDateChirho(postChirho.publishedAt)}</span>
				<span class="text-sm text-slate-400">•</span>
				<span class="text-sm text-slate-500">{postChirho.viewCount || 0} views</span>
			</div>

			<h1 class="text-4xl md:text-5xl font-bold text-slate-900 mb-6 leading-tight">
				{postChirho.title}
			</h1>

			{#if postChirho.excerpt}
				<p class="text-xl text-slate-600 leading-relaxed">{postChirho.excerpt}</p>
			{/if}

			{#if postChirho.scriptureReference}
				<div class="mt-6 p-4 bg-amber-50 border-l-4 border-amber-500 rounded-r-lg">
					<p class="text-amber-800 italic">{postChirho.scriptureReference}</p>
				</div>
			{/if}

			<!-- Author -->
			<div class="mt-8 flex items-center gap-4 pt-6 border-t border-slate-200">
				<div class="w-12 h-12 bg-gradient-to-br from-amber-400 to-orange-500 rounded-full flex items-center justify-center text-white font-bold text-lg">
					{(postChirho.authorName || postChirho.authorUsername || 'S')[0].toUpperCase()}
				</div>
				<div>
					<div class="font-semibold text-slate-900">{postChirho.authorName || postChirho.authorUsername || 'Sonshine Team'}</div>
					<div class="text-sm text-slate-500">Author</div>
				</div>
			</div>
		</header>

		<!-- Featured Image -->
		{#if postChirho.featuredImageUrl}
			<figure class="mb-10">
				<img
					src={postChirho.featuredImageUrl}
					alt={postChirho.title}
					class="w-full rounded-xl shadow-lg"
				/>
			</figure>
		{/if}

		<!-- Content -->
		<div class="prose prose-lg prose-slate max-w-none prose-headings:text-slate-900 prose-a:text-blue-600 prose-code:bg-slate-100 prose-code:px-1 prose-code:py-0.5 prose-code:rounded prose-pre:bg-slate-900">
			<MarkdownTextChirho textChirho={postChirho.content || ''} />
		</div>

		<!-- Tags -->
		{#if postChirho.tags}
			{@const tagsArrayChirho = typeof postChirho.tags === 'string' ? JSON.parse(postChirho.tags) : postChirho.tags}
			{#if Array.isArray(tagsArrayChirho) && tagsArrayChirho.length > 0}
				<div class="mt-10 pt-6 border-t border-slate-200">
					<h3 class="text-sm font-semibold text-slate-500 uppercase mb-3">Tags</h3>
					<div class="flex flex-wrap gap-2">
						{#each tagsArrayChirho as tagChirho}
							<span class="px-3 py-1 bg-slate-100 text-slate-700 text-sm rounded-full">
								#{tagChirho}
							</span>
						{/each}
					</div>
				</div>
			{/if}
		{/if}

		<!-- Share -->
		<div class="mt-10 pt-6 border-t border-slate-200">
			<h3 class="text-sm font-semibold text-slate-500 uppercase mb-3">Share This Post</h3>
			<div class="flex gap-3">
				<a
					href="https://twitter.com/intent/tweet?text={encodeURIComponent(postChirho.title)}&url={encodeURIComponent(typeof window !== 'undefined' ? window.location.href : '')}"
					target="_blank"
					rel="noopener noreferrer"
					class="flex items-center gap-2 px-4 py-2 bg-slate-100 hover:bg-slate-200 text-slate-700 rounded-lg no-underline transition-colors"
				>
					<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg>
					Share
				</a>
				<a
					href="mailto:?subject={encodeURIComponent(postChirho.title)}&body={encodeURIComponent('Check out this post: ' + (typeof window !== 'undefined' ? window.location.href : ''))}"
					class="flex items-center gap-2 px-4 py-2 bg-slate-100 hover:bg-slate-200 text-slate-700 rounded-lg no-underline transition-colors"
				>
					<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /></svg>
					Email
				</a>
			</div>
		</div>
	</div>
</article>

<!-- Related Posts -->
{#if relatedPostsChirho && relatedPostsChirho.length > 0}
	<section class="py-12 bg-slate-50">
		<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
			<h2 class="text-2xl font-bold text-slate-900 mb-6">Related Posts</h2>
			<div class="grid md:grid-cols-3 gap-6">
				{#each relatedPostsChirho as relatedChirho}
					<a href="/blog-chirho/{relatedChirho.slug}" class="block group no-underline">
						<article class="bg-white rounded-xl shadow-sm border border-slate-200 p-5 hover:shadow-md transition-shadow h-full">
							<span class="text-xs px-2 py-0.5 rounded-full {getCategoryColorChirho(relatedChirho.category)}">
								{relatedChirho.category}
							</span>
							<h3 class="mt-3 font-semibold text-slate-900 group-hover:text-amber-600 transition-colors line-clamp-2">
								{relatedChirho.title}
							</h3>
							<p class="mt-2 text-sm text-slate-500">{formatDateChirho(relatedChirho.publishedAt)}</p>
						</article>
					</a>
				{/each}
			</div>
		</div>
	</section>
{/if}

<!-- Back to Blog -->
<section class="py-8 bg-white border-t border-slate-200">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<a href="/blog-chirho" class="inline-flex items-center gap-2 text-amber-600 hover:text-amber-700 font-medium no-underline">
			<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
			</svg>
			Back to All Posts
		</a>
	</div>
</section>
