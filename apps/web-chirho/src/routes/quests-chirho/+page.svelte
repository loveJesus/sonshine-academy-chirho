<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { page } from '$app/state';

	let { data }: { data: any } = $props();

	interface QuestChirho {
		questId: string;
		title: string;
		description: string;
		orderIndex: number;
		difficultyLevel: string;
		questType: string;
		coinReward: number;
	}

	// Pagination
	const QUESTS_PER_PAGE = 12;
	let currentPageChirho = $state(1);

	// Filters
	let categoryFilterChirho = $state('scroll'); // 'scroll' (0-95) or 'trial' (96+)
	let difficultyFilterChirho = $state('all');
	let typeFilterChirho = $state('all');

	// Separate quests into Scrolls (instructional, 0-95) and Trials (practice, 96+)
	const scrollsChirho = $derived((data.questsChirho || []).filter((q: QuestChirho) => q.orderIndex < 96));
	const trialsChirho = $derived((data.questsChirho || []).filter((q: QuestChirho) => q.orderIndex >= 96));

	const filteredQuestsChirho = $derived.by(() => {
		let filtered = categoryFilterChirho === 'scroll' ? scrollsChirho : trialsChirho;

		if (difficultyFilterChirho !== 'all') {
			filtered = filtered.filter((q: QuestChirho) => q.difficultyLevel === difficultyFilterChirho);
		}

		if (typeFilterChirho !== 'all') {
			filtered = filtered.filter((q: QuestChirho) => q.questType === typeFilterChirho);
		}

		return filtered;
	});

	// Pagination calculations
	const totalPagesChirho = $derived(Math.ceil(filteredQuestsChirho.length / QUESTS_PER_PAGE));
	const paginatedQuestsChirho = $derived(
		filteredQuestsChirho.slice(
			(currentPageChirho - 1) * QUESTS_PER_PAGE,
			currentPageChirho * QUESTS_PER_PAGE
		)
	);

	// Reset page when filters change
	$effect(() => {
		if (categoryFilterChirho || difficultyFilterChirho || typeFilterChirho) {
			currentPageChirho = 1;
		}
	});

	function setPageChirho(pageNum: number): void {
		currentPageChirho = Math.max(1, Math.min(pageNum, totalPagesChirho));
		window.scrollTo({ top: 0, behavior: 'smooth' });
	}

	function getDifficultyColorChirho(difficulty: string): string {
		switch (difficulty) {
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

	function getTypeIconChirho(type: string): string {
		switch (type) {
			case 'javascript':
				return '📜';
			case 'html':
				return '🌐';
			case 'css':
				return '🎨';
			case 'sql':
				return '🗃️';
			default:
				return '💻';
		}
	}

	// Check if a quest is completed by the user
	const completedSetChirho = $derived(new Set(data.completedQuestIdsChirho || []));
	function isCompletedChirho(questIdChirho: string): boolean {
		return completedSetChirho.has(questIdChirho);
	}

	// Count completed quests in current view
	const completedScrollsCountChirho = $derived(
		scrollsChirho.filter((q: QuestChirho) => completedSetChirho.has(q.questId)).length
	);
	const completedTrialsCountChirho = $derived(
		trialsChirho.filter((q: QuestChirho) => completedSetChirho.has(q.questId)).length
	);
</script>

<svelte:head>
	<title>Quests - Sonshine Christian Code Academy</title>
	<meta name="description" content="Practice your coding skills with faith-integrated coding challenges. Earn Quest Coins as you complete quests!" />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block">⚔️</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Coding Quests</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Sharpen your coding skills with our scripture-inspired challenges.
			Each quest you complete earns you Quest Coins!
		</p>
	</div>
</section>

<!-- Quest Coins Info -->
<section class="py-8 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex flex-wrap items-center justify-center gap-8">
			<div class="flex items-center gap-3">
				<span class="text-3xl">🪙</span>
				<div>
					<div class="font-semibold">Earn Quest Coins</div>
					<div class="text-sm text-white/80">Complete quests to earn rewards</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">🏆</span>
				<div>
					<div class="font-semibold">Unlock Achievements</div>
					<div class="text-sm text-white/80">Show off your coding progress</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">🎁</span>
				<div>
					<div class="font-semibold">Redeem Rewards</div>
					<div class="text-sm text-white/80">Use coins for mentorship, merch & more</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Category Tabs -->
<section class="bg-white border-b border-slate-200">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex gap-4">
			<button
				onclick={() => { categoryFilterChirho = 'scroll'; }}
				class="py-4 px-6 font-semibold border-b-2 transition-colors {categoryFilterChirho === 'scroll' ? 'border-amber-500 text-amber-600' : 'border-transparent text-slate-600 hover:text-slate-900'}"
			>
				<span class="text-xl mr-2">📖</span>
				Learn
				<span class="ml-2 text-sm font-normal text-slate-500">
					{#if completedScrollsCountChirho > 0}
						<span class="text-green-600">{completedScrollsCountChirho}</span>/{scrollsChirho.length}
					{:else}
						{scrollsChirho.length}
					{/if}
				</span>
				<span class="block text-xs font-normal text-slate-400 mt-0.5">Guided quests</span>
			</button>
			<button
				onclick={() => { categoryFilterChirho = 'trial'; }}
				class="py-4 px-6 font-semibold border-b-2 transition-colors {categoryFilterChirho === 'trial' ? 'border-amber-500 text-amber-600' : 'border-transparent text-slate-600 hover:text-slate-900'}"
			>
				<span class="text-xl mr-2">⚔️</span>
				Practice
				<span class="ml-2 text-sm font-normal text-slate-500">
					{#if completedTrialsCountChirho > 0}
						<span class="text-green-600">{completedTrialsCountChirho}</span>/{trialsChirho.length}
					{:else}
						{trialsChirho.length}
					{/if}
				</span>
				<span class="block text-xs font-normal text-slate-400 mt-0.5">Test your skills</span>
			</button>
		</div>
	</div>
</section>

<!-- Filters -->
<section class="py-4 bg-slate-50 border-b border-slate-200">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex flex-wrap items-center gap-4">
			<span class="text-sm font-medium text-slate-700">Filter by:</span>

			<select
				bind:value={difficultyFilterChirho}
				class="text-sm rounded-lg border-slate-300"
			>
				<option value="all">All Difficulties</option>
				<option value="beginner">Beginner</option>
				<option value="intermediate">Intermediate</option>
				<option value="advanced">Advanced</option>
			</select>

			<select
				bind:value={typeFilterChirho}
				class="text-sm rounded-lg border-slate-300"
			>
				<option value="all">All Types</option>
				<option value="javascript">JavaScript</option>
				<option value="html">HTML</option>
				<option value="css">CSS</option>
				<option value="sql">SQL</option>
			</select>

			<span class="text-sm text-slate-500 ml-auto">
				Showing {paginatedQuestsChirho.length} of {filteredQuestsChirho.length} quests
			</span>
		</div>
	</div>
</section>

<!-- Quest Grid -->
<section class="py-12 bg-slate-50">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		{#if filteredQuestsChirho.length === 0}
			<div class="text-center py-12">
				<span class="text-5xl block mb-4">🔍</span>
				<h3 class="text-xl font-semibold text-slate-900 mb-2">No quests found</h3>
				<p class="text-slate-600">Try adjusting your filters to see more.</p>
			</div>
		{:else}
			<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
				{#each paginatedQuestsChirho as questChirho, idx}
					{@const completedChirho = isCompletedChirho(questChirho.questId)}
					<div class="bg-white rounded-xl shadow-sm border overflow-hidden hover:shadow-md transition-shadow {completedChirho ? 'border-green-300 ring-1 ring-green-200' : 'border-slate-200'}">
						<!-- Quest Header -->
						<div class="p-4 border-b {completedChirho ? 'border-green-100 bg-green-50/50' : 'border-slate-100'}">
							<div class="flex items-start justify-between">
								<div class="flex items-center gap-2">
									<span class="text-2xl">{completedChirho ? '✅' : getTypeIconChirho(questChirho.questType)}</span>
									<div>
										<div class="text-xs text-slate-400 mb-0.5">#{questChirho.orderIndex + 1}</div>
										<h3 class="font-bold text-slate-900">{questChirho.title}</h3>
										<div class="flex items-center gap-2 mt-1">
											<span class="text-xs px-2 py-0.5 rounded-full {getDifficultyColorChirho(questChirho.difficultyLevel)}">
												{questChirho.difficultyLevel}
											</span>
											<span class="text-xs text-slate-500">{questChirho.questType}</span>
										</div>
									</div>
								</div>
								<div class="flex items-center gap-1 text-amber-500 font-semibold">
									<span>🪙</span>
									<span>{questChirho.coinReward}</span>
								</div>
							</div>
						</div>

						<!-- Quest Content -->
						<div class="p-4">
							<p class="text-slate-600 text-sm mb-3 line-clamp-2">{questChirho.description}</p>

							<!-- Scripture -->
							{#if questChirho.headerVerse}
								<p class="text-xs italic text-slate-500 border-l-2 border-amber-400 pl-2 mb-4 line-clamp-2">
									{questChirho.headerVerse}
								</p>
							{/if}

							<!-- CTA -->
							<a
								href="/quests-chirho/{questChirho.questId}"
								class="block w-full text-center py-2 px-4 font-medium rounded-lg transition-colors no-underline {completedChirho ? 'bg-green-600 text-white hover:bg-green-700' : 'bg-slate-900 text-white hover:bg-slate-800'}"
							>
								{#if completedChirho}
									Review Again
								{:else}
									{categoryFilterChirho === 'scroll' ? 'Start Quest' : 'Begin Quest'}
								{/if}
							</a>
						</div>
					</div>
				{/each}
			</div>

			<!-- Pagination -->
			{#if totalPagesChirho > 1}
				<div class="mt-8 flex items-center justify-center gap-2">
					<button
						onclick={() => setPageChirho(currentPageChirho - 1)}
						disabled={currentPageChirho === 1}
						class="px-4 py-2 rounded-lg bg-white border border-slate-300 text-slate-700 hover:bg-slate-50 disabled:opacity-50 disabled:cursor-not-allowed"
					>
						Previous
					</button>

					<div class="flex items-center gap-1">
						{#each Array(totalPagesChirho) as _, i}
							{#if totalPagesChirho <= 7 || i === 0 || i === totalPagesChirho - 1 || Math.abs(i + 1 - currentPageChirho) <= 1}
								<button
									onclick={() => setPageChirho(i + 1)}
									class="w-10 h-10 rounded-lg font-medium {currentPageChirho === i + 1 ? 'bg-amber-500 text-white' : 'bg-white border border-slate-300 text-slate-700 hover:bg-slate-50'}"
								>
									{i + 1}
								</button>
							{:else if i === 1 || i === totalPagesChirho - 2}
								<span class="px-2 text-slate-400">...</span>
							{/if}
						{/each}
					</div>

					<button
						onclick={() => setPageChirho(currentPageChirho + 1)}
						disabled={currentPageChirho === totalPagesChirho}
						class="px-4 py-2 rounded-lg bg-white border border-slate-300 text-slate-700 hover:bg-slate-50 disabled:opacity-50 disabled:cursor-not-allowed"
					>
						Next
					</button>
				</div>
			{/if}
		{/if}
	</div>
</section>

<!-- CTA Section -->
<section class="py-16 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">New to Coding?</h2>
		<p class="text-lg text-slate-600 mb-8">
			Start with our beginner-friendly Scrolls to build your foundation.
			Our step-by-step challenges will guide you through each concept.
		</p>
		<a href="/courses-chirho" class="btn-primary text-lg px-8 py-3 no-underline">
			Explore Our Courses
		</a>
	</div>
</section>
