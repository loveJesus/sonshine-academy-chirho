<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { enhance } from '$app/forms';

	let { data, form }: { data: any; form: any } = $props();

	let showCreateFormChirho = $state(false);

	type CategoryType = 'announcement' | 'tutorial' | 'devotional' | 'news' | 'update';

	function formatDateChirho(dateChirho: Date | string | null | undefined): string {
		if (!dateChirho) return 'Draft';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			month: 'short',
			day: 'numeric',
			year: 'numeric'
		});
	}

	function getCategoryColorChirho(category: string): string {
		const colors: Record<CategoryType, string> = {
			announcement: 'bg-purple-100 text-purple-800',
			tutorial: 'bg-blue-100 text-blue-800',
			devotional: 'bg-amber-100 text-amber-800',
			news: 'bg-green-100 text-green-800',
			update: 'bg-slate-100 text-slate-800'
		};
		return colors[category as CategoryType] || colors.news;
	}

	function generateSlugChirho(title: string): string {
		return title
			.toLowerCase()
			.replace(/[^a-z0-9]+/g, '-')
			.replace(/^-|-$/g, '');
	}

	let titleChirho = $state('');
	const slugChirho = $derived(generateSlugChirho(titleChirho));
</script>

<svelte:head>
	<title>Blog Posts - Admin - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<div class="flex items-center justify-between mb-6">
		<h1 class="text-2xl font-bold text-slate-900">Blog Posts</h1>
		<div class="flex gap-3">
			{#if data.postsChirho.length === 0}
				<form method="POST" action="?/seedBlog" use:enhance>
					<button type="submit" class="btn-secondary">
						Seed Sample Posts
					</button>
				</form>
			{/if}
			<button
				class="btn-primary"
				onclick={() => (showCreateFormChirho = !showCreateFormChirho)}
			>
				{showCreateFormChirho ? 'Cancel' : '+ New Post'}
			</button>
		</div>
	</div>

	{#if form?.error}
		<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">
			{form.error}
		</div>
	{/if}

	{#if form?.success}
		<div class="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-700 text-sm">
			{form.message || 'Action completed successfully!'}
		</div>
	{/if}

	<!-- Create Form -->
	{#if showCreateFormChirho}
		<div class="bg-white rounded-lg shadow-sm p-6 mb-6">
			<h2 class="text-lg font-semibold text-slate-900 mb-4">Create New Blog Post</h2>
			<form method="POST" action="?/create" use:enhance class="space-y-4">
				<div class="grid md:grid-cols-2 gap-4">
					<div>
						<label for="title" class="block text-sm font-medium text-slate-700 mb-1">
							Title
						</label>
						<input
							type="text"
							id="title"
							name="title"
							required
							class="w-full"
							placeholder="Post title"
							bind:value={titleChirho}
						/>
					</div>

					<div>
						<label for="slug" class="block text-sm font-medium text-slate-700 mb-1">
							Slug (URL path)
						</label>
						<input
							type="text"
							id="slug"
							name="slug"
							required
							class="w-full"
							placeholder="post-url-slug"
							value={slugChirho}
						/>
					</div>
				</div>

				<div>
					<label for="excerpt" class="block text-sm font-medium text-slate-700 mb-1">
						Excerpt
					</label>
					<input
						type="text"
						id="excerpt"
						name="excerpt"
						class="w-full"
						placeholder="Short description for previews"
					/>
				</div>

				<div>
					<label for="content" class="block text-sm font-medium text-slate-700 mb-1">
						Content (Markdown supported)
					</label>
					<textarea
						id="content"
						name="content"
						required
						rows="10"
						class="w-full font-mono text-sm"
						placeholder="Write your post content here..."
					></textarea>
				</div>

				<div class="grid md:grid-cols-3 gap-4">
					<div>
						<label for="category" class="block text-sm font-medium text-slate-700 mb-1">
							Category
						</label>
						<select id="category" name="category" class="w-full">
							<option value="news">News</option>
							<option value="announcement">Announcement</option>
							<option value="tutorial">Tutorial</option>
							<option value="devotional">Devotional</option>
							<option value="update">Update</option>
						</select>
					</div>

					<div>
						<label for="scriptureReference" class="block text-sm font-medium text-slate-700 mb-1">
							Scripture Reference
						</label>
						<input
							type="text"
							id="scriptureReference"
							name="scriptureReference"
							class="w-full"
							placeholder="e.g., John 3:16"
						/>
					</div>

					<div>
						<label for="status" class="block text-sm font-medium text-slate-700 mb-1">
							Status
						</label>
						<select id="status" name="status" class="w-full">
							<option value="draft">Draft</option>
							<option value="published">Published</option>
						</select>
					</div>
				</div>

				<div class="flex gap-3">
					<button type="submit" class="btn-primary">
						Create Post
					</button>
					<button
						type="button"
						class="btn-secondary"
						onclick={() => (showCreateFormChirho = false)}
					>
						Cancel
					</button>
				</div>
			</form>
		</div>
	{/if}

	<!-- Posts List -->
	<div class="bg-white rounded-lg shadow-sm overflow-hidden">
		<table class="w-full">
			<thead class="bg-slate-50">
				<tr>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Title</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Category</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Status</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Views</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Published</th>
					<th class="text-right px-4 py-3 font-medium text-slate-700">Actions</th>
				</tr>
			</thead>
			<tbody>
				{#if data.postsChirho.length === 0}
					<tr>
						<td colspan="6" class="px-4 py-8 text-center text-slate-500">
							No blog posts yet. Create one above or seed sample posts!
						</td>
					</tr>
				{:else}
					{#each data.postsChirho as postChirho}
						<tr class="border-t">
							<td class="px-4 py-3">
								<a href="/blog-chirho/{postChirho.slug}" class="font-medium text-slate-900 hover:text-blue-600" target="_blank">
									{postChirho.title}
								</a>
								<div class="text-xs text-slate-500">/blog-chirho/{postChirho.slug}</div>
							</td>
							<td class="px-4 py-3">
								<span class="text-xs px-2 py-1 rounded-full {getCategoryColorChirho(postChirho.category || 'news')}">
									{postChirho.category || 'news'}
								</span>
							</td>
							<td class="px-4 py-3">
								{#if postChirho.status === 'published'}
									<span class="text-xs px-2 py-1 rounded-full bg-green-100 text-green-800">
										Published
									</span>
								{:else}
									<span class="text-xs px-2 py-1 rounded-full bg-yellow-100 text-yellow-800">
										Draft
									</span>
								{/if}
							</td>
							<td class="px-4 py-3 text-sm text-slate-500">
								{postChirho.viewCount || 0}
							</td>
							<td class="px-4 py-3 text-sm text-slate-500">
								{formatDateChirho(postChirho.publishedAt)}
							</td>
							<td class="px-4 py-3 text-right">
								<div class="flex gap-2 justify-end">
									<form method="POST" action="?/toggleStatus" use:enhance>
										<input type="hidden" name="postId" value={postChirho.postId} />
										<button
											type="submit"
											class="text-sm px-3 py-1 rounded border hover:bg-slate-50"
											class:border-green-300={postChirho.status !== 'published'}
											class:text-green-600={postChirho.status !== 'published'}
											class:border-yellow-300={postChirho.status === 'published'}
											class:text-yellow-600={postChirho.status === 'published'}
										>
											{postChirho.status === 'published' ? 'Unpublish' : 'Publish'}
										</button>
									</form>
									<form method="POST" action="?/delete" use:enhance>
										<input type="hidden" name="postId" value={postChirho.postId} />
										<button
											type="submit"
											class="text-sm px-3 py-1 rounded border border-red-300 text-red-600 hover:bg-red-50"
											onclick={(e: Event) => {
												if (!confirm('Are you sure you want to delete this post?')) {
													e.preventDefault();
												}
											}}
										>
											Delete
										</button>
									</form>
								</div>
							</td>
						</tr>
					{/each}
				{/if}
			</tbody>
		</table>
	</div>
</div>
