<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';

	let { data, form }: { data: any; form: any } = $props();

	let expandedIdChirho = $state<string | null>(null);
	let editingNoteIdChirho = $state<string | null>(null);
	let noteTextChirho = $state('');

	function getTypeIconChirho(typeChirho: string): string {
		switch (typeChirho) {
			case 'bug':
				return '🐛';
			case 'suggestion':
				return '💡';
			case 'question':
				return '❓';
			case 'praise':
				return '🙏';
			default:
				return '💬';
		}
	}

	function getTypeColorChirho(typeChirho: string): string {
		switch (typeChirho) {
			case 'bug':
				return 'bg-red-100 text-red-800';
			case 'suggestion':
				return 'bg-blue-100 text-blue-800';
			case 'question':
				return 'bg-purple-100 text-purple-800';
			case 'praise':
				return 'bg-green-100 text-green-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}

	function getStatusColorChirho(statusChirho: string): string {
		switch (statusChirho) {
			case 'new':
				return 'bg-amber-100 text-amber-800';
			case 'reviewed':
				return 'bg-blue-100 text-blue-800';
			case 'resolved':
				return 'bg-green-100 text-green-800';
			case 'archived':
				return 'bg-slate-100 text-slate-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}

	function formatDateChirho(dateChirho: Date | string | null): string {
		if (!dateChirho) return 'Unknown';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'short',
			day: 'numeric',
			hour: '2-digit',
			minute: '2-digit'
		});
	}

	function startEditNoteChirho(feedbackChirho: { feedbackId: string; adminNotes: string | null }): void {
		editingNoteIdChirho = feedbackChirho.feedbackId;
		noteTextChirho = feedbackChirho.adminNotes || '';
	}

	function cancelEditNoteChirho(): void {
		editingNoteIdChirho = null;
		noteTextChirho = '';
	}

	function updateFilterChirho(paramChirho: string, valueChirho: string): void {
		const urlChirho = new URL(window.location.href);
		if (valueChirho === 'all') {
			urlChirho.searchParams.delete(paramChirho);
		} else {
			urlChirho.searchParams.set(paramChirho, valueChirho);
		}
		goto(urlChirho.toString(), { replaceState: true });
	}
</script>

<div class="space-y-6">
	<!-- Header -->
	<div class="flex items-center justify-between">
		<div>
			<h1 class="text-2xl font-bold text-slate-900">Feedback Management</h1>
			<p class="text-slate-600">Review and manage user feedback</p>
		</div>
	</div>

	<!-- Stats Cards -->
	<div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-5 gap-4">
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">{data.statsChirho.total}</div>
			<div class="text-sm text-slate-500">Total</div>
		</div>
		<div class="bg-amber-50 rounded-lg shadow-sm border border-amber-200 p-4">
			<div class="text-2xl font-bold text-amber-700">{data.statsChirho.new}</div>
			<div class="text-sm text-amber-600">New</div>
		</div>
		<div class="bg-blue-50 rounded-lg shadow-sm border border-blue-200 p-4">
			<div class="text-2xl font-bold text-blue-700">{data.statsChirho.reviewed}</div>
			<div class="text-sm text-blue-600">Reviewed</div>
		</div>
		<div class="bg-green-50 rounded-lg shadow-sm border border-green-200 p-4">
			<div class="text-2xl font-bold text-green-700">{data.statsChirho.resolved}</div>
			<div class="text-sm text-green-600">Resolved</div>
		</div>
		<div class="bg-slate-50 rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-700">{data.statsChirho.archived}</div>
			<div class="text-sm text-slate-600">Archived</div>
		</div>
	</div>

	<!-- Type Stats -->
	<div class="grid grid-cols-4 gap-4">
		<button
			onclick={() => updateFilterChirho('type', data.filtersChirho.type === 'bug' ? 'all' : 'bug')}
			class="bg-white rounded-lg shadow-sm border p-3 text-center hover:bg-red-50 transition-colors {data.filtersChirho.type === 'bug' ? 'border-red-400 bg-red-50' : 'border-slate-200'}"
		>
			<div class="text-xl">🐛</div>
			<div class="text-sm font-medium">{data.statsChirho.bugs} Bugs</div>
		</button>
		<button
			onclick={() => updateFilterChirho('type', data.filtersChirho.type === 'suggestion' ? 'all' : 'suggestion')}
			class="bg-white rounded-lg shadow-sm border p-3 text-center hover:bg-blue-50 transition-colors {data.filtersChirho.type === 'suggestion' ? 'border-blue-400 bg-blue-50' : 'border-slate-200'}"
		>
			<div class="text-xl">💡</div>
			<div class="text-sm font-medium">{data.statsChirho.suggestions} Suggestions</div>
		</button>
		<button
			onclick={() => updateFilterChirho('type', data.filtersChirho.type === 'question' ? 'all' : 'question')}
			class="bg-white rounded-lg shadow-sm border p-3 text-center hover:bg-purple-50 transition-colors {data.filtersChirho.type === 'question' ? 'border-purple-400 bg-purple-50' : 'border-slate-200'}"
		>
			<div class="text-xl">❓</div>
			<div class="text-sm font-medium">{data.statsChirho.questions} Questions</div>
		</button>
		<button
			onclick={() => updateFilterChirho('type', data.filtersChirho.type === 'praise' ? 'all' : 'praise')}
			class="bg-white rounded-lg shadow-sm border p-3 text-center hover:bg-green-50 transition-colors {data.filtersChirho.type === 'praise' ? 'border-green-400 bg-green-50' : 'border-slate-200'}"
		>
			<div class="text-xl">🙏</div>
			<div class="text-sm font-medium">{data.statsChirho.praise} Praise</div>
		</button>
	</div>

	<!-- Filters -->
	<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
		<div class="flex items-center gap-4">
			<label class="flex items-center gap-2">
				<span class="text-sm text-slate-600">Status:</span>
				<select
					class="border border-slate-300 rounded-lg px-3 py-1.5 text-sm"
					onchange={(eventChirho) => updateFilterChirho('status', (eventChirho.target as HTMLSelectElement).value)}
					value={data.filtersChirho.status}
				>
					<option value="all">All</option>
					<option value="new">New</option>
					<option value="reviewed">Reviewed</option>
					<option value="resolved">Resolved</option>
					<option value="archived">Archived</option>
				</select>
			</label>
			{#if data.filtersChirho.status !== 'all' || data.filtersChirho.type !== 'all'}
				<button
					onclick={() => goto('/admin-chirho/feedback-chirho')}
					class="text-sm text-blue-600 hover:text-blue-800"
				>
					Clear filters
				</button>
			{/if}
		</div>
	</div>

	<!-- Feedback List -->
	<div class="bg-white rounded-lg shadow-sm border border-slate-200">
		{#if data.feedbackChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				<div class="text-4xl mb-2">📭</div>
				<p>No feedback found matching your filters.</p>
			</div>
		{:else}
			<div class="divide-y divide-slate-200">
				{#each data.feedbackChirho as feedbackItemChirho}
					<div class="p-4">
						<!-- Header Row -->
						<div class="flex items-start justify-between gap-4">
							<div class="flex items-center gap-3 flex-1">
								<span class="text-2xl">{getTypeIconChirho(feedbackItemChirho.feedbackType)}</span>
								<div class="flex-1 min-w-0">
									<div class="flex items-center gap-2 flex-wrap">
										<span class="text-xs px-2 py-0.5 rounded-full {getTypeColorChirho(feedbackItemChirho.feedbackType)}">
											{feedbackItemChirho.feedbackType}
										</span>
										<span class="text-xs px-2 py-0.5 rounded-full {getStatusColorChirho(feedbackItemChirho.status)}">
											{feedbackItemChirho.status}
										</span>
										<span class="text-xs text-slate-400">{formatDateChirho(feedbackItemChirho.createdAt)}</span>
									</div>
									<p class="mt-1 text-slate-900 {expandedIdChirho === feedbackItemChirho.feedbackId ? '' : 'line-clamp-2'}">
										{feedbackItemChirho.feedbackText}
									</p>
									{#if feedbackItemChirho.feedbackText.length > 150}
										<button
											onclick={() => expandedIdChirho = expandedIdChirho === feedbackItemChirho.feedbackId ? null : feedbackItemChirho.feedbackId}
											class="text-xs text-blue-600 hover:text-blue-800 mt-1"
										>
											{expandedIdChirho === feedbackItemChirho.feedbackId ? 'Show less' : 'Show more'}
										</button>
									{/if}
								</div>
							</div>

							<!-- Actions -->
							<div class="flex items-center gap-2">
								<form method="POST" action="?/updateStatus" use:enhance>
									<input type="hidden" name="feedbackId" value={feedbackItemChirho.feedbackId} />
									<select
										name="status"
										class="text-xs border border-slate-300 rounded px-2 py-1"
										onchange={(e: Event) => (e.target as HTMLSelectElement)?.form?.requestSubmit()}
									>
										<option value="new" selected={feedbackItemChirho.status === 'new'}>New</option>
										<option value="reviewed" selected={feedbackItemChirho.status === 'reviewed'}>Reviewed</option>
										<option value="resolved" selected={feedbackItemChirho.status === 'resolved'}>Resolved</option>
										<option value="archived" selected={feedbackItemChirho.status === 'archived'}>Archived</option>
									</select>
								</form>
								<form method="POST" action="?/delete" use:enhance>
									<input type="hidden" name="feedbackId" value={feedbackItemChirho.feedbackId} />
									<button
										type="submit"
										class="text-red-500 hover:text-red-700 p-1"
										onclick={(e) => { if (!confirm('Delete this feedback?')) e.preventDefault(); }}
										title="Delete"
									>
										<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
											<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
										</svg>
									</button>
								</form>
							</div>
						</div>

						<!-- Meta info -->
						<div class="mt-3 flex flex-wrap gap-4 text-xs text-slate-500">
							<div class="flex items-center gap-1">
								<span>From:</span>
								{#if feedbackItemChirho.userName || feedbackItemChirho.userUsername}
									<span class="font-medium text-slate-700">
										{feedbackItemChirho.userName || feedbackItemChirho.userUsername}
									</span>
									{#if feedbackItemChirho.userEmail}
										<span>({feedbackItemChirho.userEmail})</span>
									{/if}
								{:else}
									<span class="italic">Anonymous</span>
								{/if}
							</div>
							{#if feedbackItemChirho.pageUrl}
								<div class="flex items-center gap-1">
									<span>Page:</span>
									<code class="bg-slate-100 px-1 rounded text-xs">{feedbackItemChirho.pageUrl}</code>
								</div>
							{/if}
						</div>

						<!-- Admin Notes -->
						<div class="mt-3 pt-3 border-t border-slate-100">
							{#if editingNoteIdChirho === feedbackItemChirho.feedbackId}
								<form method="POST" action="?/addNote" use:enhance={() => {
									return async ({ update }) => {
										await update();
										cancelEditNoteChirho();
									};
								}}>
									<input type="hidden" name="feedbackId" value={feedbackItemChirho.feedbackId} />
									<textarea
										name="adminNotes"
										bind:value={noteTextChirho}
										rows="2"
										class="w-full text-sm border border-slate-300 rounded-lg px-3 py-2"
										placeholder="Add admin notes..."
									></textarea>
									<div class="mt-2 flex gap-2">
										<button
											type="submit"
											class="text-xs bg-blue-600 hover:bg-blue-700 text-white px-3 py-1 rounded"
										>
											Save Note
										</button>
										<button
											type="button"
											onclick={cancelEditNoteChirho}
											class="text-xs text-slate-600 hover:text-slate-800"
										>
											Cancel
										</button>
									</div>
								</form>
							{:else if feedbackItemChirho.adminNotes}
								<div class="flex items-start gap-2">
									<span class="text-xs text-slate-500">Admin note:</span>
									<p class="text-sm text-slate-700 flex-1">{feedbackItemChirho.adminNotes}</p>
									<button
										onclick={() => startEditNoteChirho(feedbackItemChirho)}
										class="text-xs text-blue-600 hover:text-blue-800"
									>
										Edit
									</button>
								</div>
							{:else}
								<button
									onclick={() => startEditNoteChirho(feedbackItemChirho)}
									class="text-xs text-blue-600 hover:text-blue-800"
								>
									+ Add admin note
								</button>
							{/if}
						</div>
					</div>
				{/each}
			</div>
		{/if}
	</div>
</div>
