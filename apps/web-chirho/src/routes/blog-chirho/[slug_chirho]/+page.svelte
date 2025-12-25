<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	let { data } = $props();

	const postChirho = data.postChirho;

	function formatDateChirho(date: Date | null) {
		if (!date) return '';
		return new Date(date).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'long',
			day: 'numeric'
		});
	}

	function getCategoryColorChirho(category: string) {
		const colors: Record<string, string> = {
			announcement: 'bg-purple-100 text-purple-800',
			tutorial: 'bg-blue-100 text-blue-800',
			devotional: 'bg-amber-100 text-amber-800',
			news: 'bg-green-100 text-green-800',
			update: 'bg-slate-100 text-slate-800'
		};
		return colors[category] || colors.news;
	}

	// Simple markdown-like rendering (basic)
	function renderContentChirho(content: string) {
		if (!content) return '';
		return content
			// Headers
			.replace(/^### (.+)$/gm, '<h3 class="text-xl font-bold text-slate-900 mt-6 mb-3">$1</h3>')
			.replace(/^## (.+)$/gm, '<h2 class="text-2xl font-bold text-slate-900 mt-8 mb-4">$1</h2>')
			.replace(/^# (.+)$/gm, '<h1 class="text-3xl font-bold text-slate-900 mt-8 mb-4">$1</h1>')
			// Bold
			.replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
			// Italic
			.replace(/\*(.+?)\*/g, '<em>$1</em>')
			// Code blocks
			.replace(/```(\w+)?\n([\s\S]*?)```/g, '<pre class="bg-slate-900 text-slate-100 p-4 rounded-lg overflow-x-auto my-4 text-sm"><code>$2</code></pre>')
			// Inline code
			.replace(/`([^`]+)`/g, '<code class="bg-slate-100 text-slate-800 px-1.5 py-0.5 rounded text-sm">$1</code>')
			// Lists
			.replace(/^- (.+)$/gm, '<li class="ml-4">$1</li>')
			.replace(/(<li.*<\/li>\n?)+/g, '<ul class="list-disc list-inside my-4 space-y-1">$&</ul>')
			// Numbered lists
			.replace(/^\d+\. (.+)$/gm, '<li class="ml-4">$1</li>')
			// Paragraphs
			.replace(/\n\n/g, '</p><p class="my-4">')
			// Line breaks
			.replace(/\n/g, '<br />');
	}
</script>

<svelte:head>
	<title>{postChirho.title} - Sonshine Christian Code Academy Blog</title>
	<meta name="description" content={postChirho.metaDescription || postChirho.excerpt || ''} />
</svelte:head>

<article class="max-w-4xl mx-auto py-12 px-4">
	<!-- Back Link -->
	<div class="mb-8">
		<a href="/blog-chirho" class="text-blue-600 hover:text-blue-800 text-sm flex items-center gap-1">
			<span>←</span> Back to Blog
		</a>
	</div>

	<!-- Header -->
	<header class="mb-8">
		<div class="flex items-center gap-3 mb-4">
			<span class="text-xs px-3 py-1 rounded-full {getCategoryColorChirho(postChirho.category || 'news')}">
				{postChirho.category || 'news'}
			</span>
			<span class="text-sm text-slate-500">{formatDateChirho(postChirho.publishedAt)}</span>
			<span class="text-sm text-slate-400">• {postChirho.viewCount || 0} views</span>
		</div>

		<h1 class="text-4xl font-bold text-slate-900 mb-4">{postChirho.title}</h1>

		{#if postChirho.excerpt}
			<p class="text-xl text-slate-600">{postChirho.excerpt}</p>
		{/if}

		{#if postChirho.scriptureReference}
			<div class="mt-6 p-4 bg-amber-50 border-l-4 border-amber-400 rounded-r-lg">
				<p class="text-amber-800 italic">{postChirho.scriptureReference}</p>
			</div>
		{/if}

		<div class="mt-6 flex items-center gap-3 pt-6 border-t">
			<div class="w-10 h-10 bg-amber-500 rounded-full flex items-center justify-center text-white font-bold">
				{(postChirho.authorName || 'S').charAt(0)}
			</div>
			<div>
				<p class="font-medium text-slate-900">{postChirho.authorName || 'Sonshine Team'}</p>
				{#if postChirho.authorUsername}
					<p class="text-sm text-slate-500">@{postChirho.authorUsername}</p>
				{/if}
			</div>
		</div>
	</header>

	<!-- Featured Image -->
	{#if postChirho.featuredImageUrl}
		<div class="mb-8 rounded-xl overflow-hidden">
			<img src={postChirho.featuredImageUrl} alt={postChirho.title} class="w-full h-auto" />
		</div>
	{/if}

	<!-- Content -->
	<div class="prose prose-slate prose-lg max-w-none">
		<p class="my-4">
			{@html renderContentChirho(postChirho.content || '')}
		</p>
	</div>

	<!-- Tags -->
	{#if postChirho.tags}
		{@const tagsArray = JSON.parse(postChirho.tags)}
		{#if tagsArray.length > 0}
			<div class="mt-8 pt-8 border-t">
				<h3 class="text-sm font-medium text-slate-700 mb-3">Tags</h3>
				<div class="flex flex-wrap gap-2">
					{#each tagsArray as tag}
						<span class="text-sm px-3 py-1 bg-slate-100 text-slate-600 rounded-full">
							{tag}
						</span>
					{/each}
				</div>
			</div>
		{/if}
	{/if}

	<!-- Share Section -->
	<div class="mt-12 p-6 bg-slate-50 rounded-xl text-center">
		<h3 class="font-semibold text-slate-900 mb-2">Share This Post</h3>
		<p class="text-sm text-slate-600 mb-4">If this post blessed you, share it with others!</p>
		<div class="flex justify-center gap-3">
			<a
				href="https://twitter.com/intent/tweet?text={encodeURIComponent(postChirho.title)}&url={encodeURIComponent(`https://sonshinecoders.org/blog-chirho/${postChirho.slug}`)}"
				target="_blank"
				rel="noopener noreferrer"
				class="px-4 py-2 bg-slate-900 text-white rounded-lg text-sm hover:bg-slate-700"
			>
				Share on X
			</a>
			<a
				href="https://www.facebook.com/sharer/sharer.php?u={encodeURIComponent(`https://sonshinecoders.org/blog-chirho/${postChirho.slug}`)}"
				target="_blank"
				rel="noopener noreferrer"
				class="px-4 py-2 bg-blue-600 text-white rounded-lg text-sm hover:bg-blue-700"
			>
				Share on Facebook
			</a>
		</div>
	</div>

	<!-- Scripture Footer -->
	<div class="mt-12 text-center">
		<p class="text-slate-500 italic text-sm">
			"For God so loved the world, that he gave his only begotten Son,
			<br />that whosoever believeth in him should not perish, but have everlasting life."
			<br />— John 3:16 (KJV)
		</p>
	</div>
</article>
