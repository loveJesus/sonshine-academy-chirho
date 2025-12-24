<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();

	let difficultyFilterChirho = $state('all');
	let typeFilterChirho = $state('all');

	const questsChirho = $derived.by(function() {
		let filtered = data.questsChirho || [];

		if (difficultyFilterChirho !== 'all') {
			filtered = filtered.filter(function(q) { return q.difficultyLevel === difficultyFilterChirho; });
		}

		if (typeFilterChirho !== 'all') {
			filtered = filtered.filter(function(q) { return q.questType === typeFilterChirho; });
		}

		return filtered;
	});

	function getDifficultyColorChirho(difficulty) {
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

	function getTypeIconChirho(type) {
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

<!-- Filters -->
<section class="py-6 bg-white border-b border-slate-200">
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
				Showing {questsChirho.length} quest{questsChirho.length === 1 ? '' : 's'}
			</span>
		</div>
	</div>
</section>

<!-- Quest Grid -->
<section class="py-12 bg-slate-50">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		{#if questsChirho.length === 0}
			<div class="text-center py-12">
				<span class="text-5xl block mb-4">🔍</span>
				<h3 class="text-xl font-semibold text-slate-900 mb-2">No quests found</h3>
				<p class="text-slate-600">Try adjusting your filters to see more quests.</p>
			</div>
		{:else}
			<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
				{#each questsChirho as questChirho}
					<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden hover:shadow-md transition-shadow">
						<!-- Quest Header -->
						<div class="p-4 border-b border-slate-100">
							<div class="flex items-start justify-between">
								<div class="flex items-center gap-2">
									<span class="text-2xl">{getTypeIconChirho(questChirho.questType)}</span>
									<div>
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
								class="block w-full text-center py-2 px-4 bg-slate-900 text-white font-medium rounded-lg hover:bg-slate-800 transition-colors no-underline"
							>
								Start Quest
							</a>
						</div>
					</div>
				{/each}
			</div>
		{/if}
	</div>
</section>

<!-- CTA Section -->
<section class="py-16 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">New to Coding?</h2>
		<p class="text-lg text-slate-600 mb-8">
			Start with our beginner-friendly quests to build your foundation.
			Our step-by-step challenges will guide you through each concept.
		</p>
		<a href="/courses-chirho" class="btn-primary text-lg px-8 py-3 no-underline">
			Explore Our Courses
		</a>
	</div>
</section>
