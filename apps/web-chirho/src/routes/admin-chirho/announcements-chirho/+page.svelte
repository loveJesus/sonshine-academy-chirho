<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let showCreateFormChirho = $state(false);
	let selectedScopeChirho = $state('global');

	function formatDateChirho(dateChirho) {
		if (!dateChirho) return 'N/A';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			month: 'short',
			day: 'numeric',
			year: 'numeric',
			hour: '2-digit',
			minute: '2-digit'
		});
	}

	function getScopeColorChirho(scope) {
		switch (scope) {
			case 'global':
				return 'bg-blue-100 text-blue-800';
			case 'organization':
				return 'bg-purple-100 text-purple-800';
			case 'cohort':
				return 'bg-green-100 text-green-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}
</script>

<svelte:head>
	<title>Announcements - Admin - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<div class="flex items-center justify-between mb-6">
		<h1 class="text-2xl font-bold text-slate-900">Announcements</h1>
		<button
			class="btn-primary"
			onclick={() => (showCreateFormChirho = !showCreateFormChirho)}
		>
			{showCreateFormChirho ? 'Cancel' : '+ New Announcement'}
		</button>
	</div>

	{#if form?.error}
		<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">
			{form.error}
		</div>
	{/if}

	{#if form?.success}
		<div class="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-700 text-sm">
			Announcement saved successfully!
		</div>
	{/if}

	<!-- Create Form -->
	{#if showCreateFormChirho}
		<div class="bg-white rounded-lg shadow-sm p-6 mb-6">
			<h2 class="text-lg font-semibold text-slate-900 mb-4">Create New Announcement</h2>
			<form method="POST" action="?/create" use:enhance class="space-y-4">
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
						placeholder="Announcement title"
					/>
				</div>

				<div>
					<label for="content" class="block text-sm font-medium text-slate-700 mb-1">
						Content
					</label>
					<textarea
						id="content"
						name="content"
						required
						rows="4"
						class="w-full"
						placeholder="Write your announcement here..."
					></textarea>
				</div>

				<div>
					<label for="scope" class="block text-sm font-medium text-slate-700 mb-1">
						Scope
					</label>
					<select
						id="scope"
						name="scope"
						class="w-full"
						bind:value={selectedScopeChirho}
					>
						<option value="global">Global (All Users)</option>
						<option value="organization">Specific Organization</option>
						<option value="cohort">Specific Cohort</option>
					</select>
				</div>

				{#if selectedScopeChirho === 'organization'}
					<div>
						<label for="organizationId" class="block text-sm font-medium text-slate-700 mb-1">
							Organization
						</label>
						<select id="organizationId" name="organizationId" class="w-full" required>
							<option value="">Select organization...</option>
							{#each data.organizationsChirho as orgChirho}
								<option value={orgChirho.organizationId}>{orgChirho.name}</option>
							{/each}
						</select>
					</div>
				{/if}

				{#if selectedScopeChirho === 'cohort'}
					<div>
						<label for="cohortId" class="block text-sm font-medium text-slate-700 mb-1">
							Cohort
						</label>
						<select id="cohortId" name="cohortId" class="w-full" required>
							<option value="">Select cohort...</option>
							{#each data.cohortsChirho as cohortChirho}
								<option value={cohortChirho.cohortId}>{cohortChirho.name}</option>
							{/each}
						</select>
					</div>
				{/if}

				<div class="flex gap-3">
					<button type="submit" class="btn-primary">
						Create Announcement
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

	<!-- Announcements List -->
	<div class="bg-white rounded-lg shadow-sm overflow-hidden">
		<table class="w-full">
			<thead class="bg-slate-50">
				<tr>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Title</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Scope</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Status</th>
					<th class="text-left px-4 py-3 font-medium text-slate-700">Created</th>
					<th class="text-right px-4 py-3 font-medium text-slate-700">Actions</th>
				</tr>
			</thead>
			<tbody>
				{#if data.announcementsChirho.length === 0}
					<tr>
						<td colspan="5" class="px-4 py-8 text-center text-slate-500">
							No announcements yet. Create one above!
						</td>
					</tr>
				{:else}
					{#each data.announcementsChirho as announcementChirho}
						<tr class="border-t">
							<td class="px-4 py-3">
								<div class="font-medium text-slate-900">{announcementChirho.title}</div>
								<div class="text-sm text-slate-500 line-clamp-1">{announcementChirho.content}</div>
							</td>
							<td class="px-4 py-3">
								<span class="text-xs px-2 py-1 rounded-full {getScopeColorChirho(announcementChirho.scope || 'global')}">
									{announcementChirho.scope || 'global'}
								</span>
							</td>
							<td class="px-4 py-3">
								{#if announcementChirho.isActive}
									<span class="text-xs px-2 py-1 rounded-full bg-green-100 text-green-800">
										Active
									</span>
								{:else}
									<span class="text-xs px-2 py-1 rounded-full bg-slate-100 text-slate-600">
										Inactive
									</span>
								{/if}
							</td>
							<td class="px-4 py-3 text-sm text-slate-500">
								{formatDateChirho(announcementChirho.createdAt)}
							</td>
							<td class="px-4 py-3 text-right">
								<div class="flex gap-2 justify-end">
									<form method="POST" action="?/toggle" use:enhance>
										<input type="hidden" name="announcementId" value={announcementChirho.announcementId} />
										<button
											type="submit"
											class="text-sm px-3 py-1 rounded border hover:bg-slate-50"
											class:border-green-300={!announcementChirho.isActive}
											class:text-green-600={!announcementChirho.isActive}
											class:border-slate-300={announcementChirho.isActive}
											class:text-slate-600={announcementChirho.isActive}
										>
											{announcementChirho.isActive ? 'Deactivate' : 'Activate'}
										</button>
									</form>
									<form method="POST" action="?/delete" use:enhance>
										<input type="hidden" name="announcementId" value={announcementChirho.announcementId} />
										<button
											type="submit"
											class="text-sm px-3 py-1 rounded border border-red-300 text-red-600 hover:bg-red-50"
											onclick={(e) => {
												if (!confirm('Are you sure you want to delete this announcement?')) {
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
