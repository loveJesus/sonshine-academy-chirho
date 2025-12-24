<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';

	let { data, form } = $props();

	let showImportChirho = $state(false);
	let questJsonChirho = $state('');

	// Form filter state - syncs with URL params via $effect
	let difficultyFilterChirho = $state('');
	let typeFilterChirho = $state('');

	$effect(() => {
		difficultyFilterChirho = data.filtersChirho?.difficulty || '';
		typeFilterChirho = data.filtersChirho?.type || '';
	});

	function applyFiltersChirho() {
		const paramsChirho = new URLSearchParams();
		if (difficultyFilterChirho) paramsChirho.set('difficulty', difficultyFilterChirho);
		if (typeFilterChirho) paramsChirho.set('type', typeFilterChirho);
		goto(`/admin-chirho/quests-chirho?${paramsChirho.toString()}`);
	}

	function getDifficultyColorChirho(difficultyChirho) {
		switch (difficultyChirho) {
			case 'beginner':
				return 'bg-green-100 text-green-800';
			case 'intermediate':
				return 'bg-yellow-100 text-yellow-800';
			case 'advanced':
				return 'bg-red-100 text-red-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}

	function handleImportEnhanceChirho() {
		return async function (eventChirho) {
			await eventChirho.update();
			if (eventChirho.result.type === 'success') {
				questJsonChirho = '';
				showImportChirho = false;
			}
		};
	}
</script>

<svelte:head>
	<title>Quests - Admin - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<div class="flex items-center justify-between mb-6">
		<h1 class="text-2xl font-bold text-slate-900">Quests</h1>
		<button type="button" class="btn-primary" onclick={() => (showImportChirho = !showImportChirho)}>
			+ Import Quest
		</button>
	</div>

	{#if form?.successChirho}
		<div class="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-800 text-sm">
			{#if form.actionChirho === 'importQuestChirho'}
				Quest "{form.titleChirho}" imported successfully!
			{:else if form.actionChirho === 'deleteQuestChirho'}
				Quest deleted successfully.
			{:else}
				Action completed successfully.
			{/if}
		</div>
	{/if}

	{#if form?.errorChirho}
		<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">
			{form.errorChirho}
		</div>
	{/if}

	<!-- Stats -->
	{#if data.statsChirho}
	<div class="grid grid-cols-4 gap-4 mb-6">
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-slate-900">{data.statsChirho.totalChirho}</div>
			<div class="text-sm text-slate-600">Total Quests</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-green-600">{data.statsChirho.beginnerChirho}</div>
			<div class="text-sm text-slate-600">Beginner</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-yellow-600">{data.statsChirho.intermediateChirho}</div>
			<div class="text-sm text-slate-600">Intermediate</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-red-600">{data.statsChirho.advancedChirho}</div>
			<div class="text-sm text-slate-600">Advanced</div>
		</div>
	</div>
	{/if}

	<!-- Import Form -->
	{#if showImportChirho}
		<div class="bg-white rounded-lg shadow-sm p-4 mb-6">
			<h2 class="font-semibold text-slate-900 mb-4">Import Quest from JSON</h2>
			<form
				method="POST"
				action="?/importQuestChirho"
				use:enhance={handleImportEnhanceChirho}
			>
				<div class="mb-4">
					<label for="questJsonChirho" class="block text-sm font-medium text-slate-700 mb-1">
						Quest JSON
					</label>
					<textarea
						id="questJsonChirho"
						name="questJsonChirho"
						rows="10"
						class="w-full font-mono text-sm"
						placeholder={`{
  "title": "The Narrow Gate",
  "description": "Filter an array to find elements meeting a condition",
  "instructions": "Write a function that filters the array...",
  "starterCode": "function narrowGate(arr) {\\n  // Your code here\\n}",
  "solutionCode": "function narrowGate(arr) {\\n  return arr.filter(x => x > 0);\\n}",
  "difficulty": "beginner",
  "type": "javascript",
  "headerVerse": "Enter ye in at the strait gate - Matthew 7:13",
  "coinReward": 10,
  "tests": [
    { "name": "filters positive numbers", "code": "assert(narrowGate([1,-2,3]).length === 2)", "visible": true }
  ]
}`}
						bind:value={questJsonChirho}
					></textarea>
				</div>
				<div class="flex gap-2">
					<button type="submit" class="btn-primary">Import Quest</button>
					<button type="button" class="btn-secondary" onclick={() => (showImportChirho = false)}>
						Cancel
					</button>
				</div>
			</form>
		</div>
	{/if}

	<!-- Filters -->
	<div class="bg-white rounded-lg shadow-sm p-4 mb-6">
		<div class="flex flex-wrap gap-4">
			<div>
				<select class="w-full" bind:value={difficultyFilterChirho}>
					<option value="">All difficulties</option>
					<option value="beginner">Beginner</option>
					<option value="intermediate">Intermediate</option>
					<option value="advanced">Advanced</option>
				</select>
			</div>
			<div>
				<select class="w-full" bind:value={typeFilterChirho}>
					<option value="">All types</option>
					<option value="javascript">JavaScript</option>
					<option value="html">HTML</option>
					<option value="css">CSS</option>
					<option value="sql">SQL</option>
				</select>
			</div>
			<button type="button" class="btn-primary" onclick={applyFiltersChirho}>Filter</button>
		</div>
	</div>

	<!-- Quests Table -->
	<div class="bg-white rounded-lg shadow-sm overflow-hidden">
		{#if data.questsChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				No quests found. Import quests using the button above.
			</div>
		{:else}
			<div class="overflow-x-auto">
				<table class="w-full">
					<thead class="bg-slate-50">
						<tr>
							<th class="text-left py-3 px-4 font-medium text-slate-700">#</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Title</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Difficulty</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Type</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Coins</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Status</th>
							<th class="text-right py-3 px-4 font-medium text-slate-700">Actions</th>
						</tr>
					</thead>
					<tbody>
						{#each data.questsChirho as questItemChirho, indexChirho}
							<tr class="border-t hover:bg-slate-50">
								<td class="py-3 px-4 text-slate-500">{questItemChirho.orderIndex || indexChirho + 1}</td>
								<td class="py-3 px-4">
									<div class="font-medium text-slate-900">{questItemChirho.title}</div>
									{#if questItemChirho.headerVerse}
										<div class="text-xs text-slate-500 italic">{questItemChirho.headerVerse}</div>
									{/if}
								</td>
								<td class="py-3 px-4">
									<span
										class="text-xs px-2 py-1 rounded-full {getDifficultyColorChirho(
											questItemChirho.difficultyLevel
										)}"
									>
										{questItemChirho.difficultyLevel}
									</span>
								</td>
								<td class="py-3 px-4 text-slate-600">{questItemChirho.questType}</td>
								<td class="py-3 px-4 text-amber-600">{questItemChirho.coinReward}</td>
								<td class="py-3 px-4">
									<form method="POST" action="?/toggleActiveChirho" use:enhance class="inline">
										<input type="hidden" name="questIdChirho" value={questItemChirho.questId} />
										<input
											type="hidden"
											name="isActiveChirho"
											value={questItemChirho.isActive.toString()}
										/>
										<button
											type="submit"
											class="text-xs px-2 py-1 rounded-full"
											class:bg-green-100={questItemChirho.isActive}
											class:text-green-800={questItemChirho.isActive}
											class:bg-slate-100={!questItemChirho.isActive}
											class:text-slate-600={!questItemChirho.isActive}
										>
											{questItemChirho.isActive ? 'Active' : 'Inactive'}
										</button>
									</form>
								</td>
								<td class="py-3 px-4 text-right">
									<div class="flex items-center justify-end gap-2">
										<a
											href="/admin-chirho/quests-chirho/{questItemChirho.questId}"
											class="text-blue-600 hover:text-blue-800 text-sm"
										>
											Edit
										</a>
										<form method="POST" action="?/deleteQuestChirho" use:enhance class="inline">
											<input type="hidden" name="questIdChirho" value={questItemChirho.questId} />
											<button
												type="submit"
												class="text-red-600 hover:text-red-800 text-sm"
												onclick={(eChirho) => {
													if (!confirm('Are you sure you want to delete this quest?')) {
														eChirho.preventDefault();
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
					</tbody>
				</table>
			</div>
		{/if}
	</div>
</div>
