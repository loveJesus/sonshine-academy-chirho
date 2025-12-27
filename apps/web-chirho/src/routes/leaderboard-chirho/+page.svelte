<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	let { data }: { data: any } = $props();

	interface RankBadgeChirho {
		emoji: string;
		class: string;
	}

	function getRankBadgeChirho(rankChirho: number): RankBadgeChirho {
		switch (rankChirho) {
			case 1:
				return { emoji: '🥇', class: 'from-yellow-400 to-amber-500' };
			case 2:
				return { emoji: '🥈', class: 'from-slate-300 to-slate-400' };
			case 3:
				return { emoji: '🥉', class: 'from-orange-400 to-orange-500' };
			default:
				return { emoji: '', class: 'from-slate-600 to-slate-700' };
		}
	}

	function formatNumberChirho(numChirho: number): string {
		if (numChirho >= 1000) {
			return (numChirho / 1000).toFixed(1) + 'k';
		}
		return numChirho.toString();
	}

	function getInitialsChirho(nameChirho: string | null | undefined): string {
		if (!nameChirho) return '?';
		const wordsChirho = nameChirho.split(' ');
		if (wordsChirho.length >= 2) {
			return wordsChirho[0][0] + wordsChirho[1][0];
		}
		return nameChirho.substring(0, 2).toUpperCase();
	}
</script>

<svelte:head>
	<title>Leaderboard - Sonshine Christian Code Academy</title>
	<meta name="description" content="See the top Quest Coin earners at Sonshine Christian Code Academy." />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Hero Section -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-12">
		<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
			<h1 class="text-4xl md:text-5xl font-bold mb-4">
				<span class="text-amber-400">🏆</span> Leaderboard
			</h1>
			<p class="text-xl text-slate-300 max-w-2xl mx-auto">
				Top Quest Coin earners who are excelling in their coding journey while glorifying God.
			</p>
			<p class="text-sm text-amber-400 mt-4 italic">
				"And whatsoever ye do, do it heartily, as to the Lord" — Colossians 3:23
			</p>
		</div>
	</header>

	<main class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
		<!-- Your Rank Card (if logged in) -->
		{#if data.userChirho && data.userRankChirho}
			<div class="mb-8 bg-gradient-to-r from-amber-500 to-orange-500 rounded-xl p-6 text-white shadow-lg">
				<div class="flex items-center justify-between">
					<div class="flex items-center gap-4">
						<div
							class="w-14 h-14 rounded-full flex items-center justify-center text-xl font-bold text-white"
							style="background-color: {data.userChirho.backgroundColor || '#3B82F6'}"
						>
							{getInitialsChirho(data.userChirho.displayName || data.userChirho.username)}
						</div>
						<div>
							<div class="text-sm text-amber-100">Your Rank</div>
							<div class="text-2xl font-bold">#{data.userRankChirho}</div>
						</div>
					</div>
					<div class="text-right">
						<div class="text-sm text-amber-100">Quest Coins</div>
						<div class="text-2xl font-bold flex items-center gap-1">
							<span>🪙</span>
							{formatNumberChirho(data.userChirho.questCoinsBalance || 0)}
						</div>
					</div>
				</div>
			</div>
		{/if}

		<!-- Top 3 Podium -->
		<div class="mb-12">
			<div class="grid grid-cols-3 gap-4 items-end">
				<!-- Second Place -->
				{#if data.leaderboardChirho[1]}
					<div class="text-center">
						<div
							class="w-16 h-16 mx-auto rounded-full flex items-center justify-center text-xl font-bold text-white mb-2"
							style="background-color: {data.leaderboardChirho[1].backgroundColor}"
						>
							{getInitialsChirho(data.leaderboardChirho[1].displayName)}
						</div>
						<div class="text-2xl mb-2">🥈</div>
						<div class="font-semibold text-slate-900 truncate">
							{data.leaderboardChirho[1].displayName}
						</div>
						<div class="text-amber-600 font-bold flex items-center justify-center gap-1">
							<span>🪙</span> {formatNumberChirho(data.leaderboardChirho[1].questCoinsBalance)}
						</div>
						<div class="bg-gradient-to-t from-slate-300 to-slate-200 h-24 rounded-t-lg mt-4"></div>
					</div>
				{/if}

				<!-- First Place -->
				{#if data.leaderboardChirho[0]}
					<div class="text-center">
						<div
							class="w-20 h-20 mx-auto rounded-full flex items-center justify-center text-2xl font-bold text-white mb-2 ring-4 ring-yellow-400 ring-offset-2"
							style="background-color: {data.leaderboardChirho[0].backgroundColor}"
						>
							{getInitialsChirho(data.leaderboardChirho[0].displayName)}
						</div>
						<div class="text-3xl mb-2">🥇</div>
						<div class="font-bold text-lg text-slate-900 truncate">
							{data.leaderboardChirho[0].displayName}
						</div>
						<div class="text-amber-600 font-bold text-lg flex items-center justify-center gap-1">
							<span>🪙</span> {formatNumberChirho(data.leaderboardChirho[0].questCoinsBalance)}
						</div>
						<div class="bg-gradient-to-t from-yellow-400 to-amber-300 h-32 rounded-t-lg mt-4"></div>
					</div>
				{/if}

				<!-- Third Place -->
				{#if data.leaderboardChirho[2]}
					<div class="text-center">
						<div
							class="w-14 h-14 mx-auto rounded-full flex items-center justify-center text-lg font-bold text-white mb-2"
							style="background-color: {data.leaderboardChirho[2].backgroundColor}"
						>
							{getInitialsChirho(data.leaderboardChirho[2].displayName)}
						</div>
						<div class="text-2xl mb-2">🥉</div>
						<div class="font-semibold text-slate-900 truncate">
							{data.leaderboardChirho[2].displayName}
						</div>
						<div class="text-amber-600 font-bold flex items-center justify-center gap-1">
							<span>🪙</span> {formatNumberChirho(data.leaderboardChirho[2].questCoinsBalance)}
						</div>
						<div class="bg-gradient-to-t from-orange-400 to-orange-300 h-20 rounded-t-lg mt-4"></div>
					</div>
				{/if}
			</div>
		</div>

		<!-- Full Leaderboard Table -->
		<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
			<div class="px-6 py-4 border-b border-slate-200 bg-slate-50">
				<h2 class="text-lg font-semibold text-slate-900">All Rankings</h2>
			</div>

			<div class="divide-y divide-slate-100">
				{#each data.leaderboardChirho as entryChirho, indexChirho}
					<div
						class="px-6 py-4 flex items-center justify-between hover:bg-slate-50 transition-colors {data.userChirho?.username === entryChirho.username ? 'bg-amber-50' : ''}"
					>
						<div class="flex items-center gap-4">
							<!-- Rank -->
							<div class="w-10 text-center">
								{#if entryChirho.rank <= 3}
									<span class="text-2xl">{getRankBadgeChirho(entryChirho.rank).emoji}</span>
								{:else}
									<span class="text-lg font-bold text-slate-500">#{entryChirho.rank}</span>
								{/if}
							</div>

							<!-- Avatar -->
							<div
								class="w-12 h-12 rounded-full flex items-center justify-center text-white font-bold"
								style="background-color: {entryChirho.backgroundColor}"
							>
								{getInitialsChirho(entryChirho.displayName)}
							</div>

							<!-- Name & Stats -->
							<div>
								<div class="font-semibold text-slate-900">
									{entryChirho.displayName}
									{#if data.userChirho?.username === entryChirho.username}
										<span class="text-xs bg-amber-100 text-amber-700 px-2 py-0.5 rounded-full ml-2">You</span>
									{/if}
								</div>
								<div class="text-sm text-slate-500">
									@{entryChirho.username} · {entryChirho.questsCompleted} quests completed
								</div>
							</div>
						</div>

						<!-- Quest Coins -->
						<div class="flex items-center gap-2 text-amber-600 font-bold">
							<span class="text-xl">🪙</span>
							<span class="text-lg">{formatNumberChirho(entryChirho.questCoinsBalance)}</span>
						</div>
					</div>
				{/each}
			</div>
		</div>

		<!-- No Data State -->
		{#if data.leaderboardChirho.length === 0}
			<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-12 text-center">
				<div class="text-4xl mb-4">🏆</div>
				<h2 class="text-xl font-bold text-slate-900 mb-2">No Rankings Yet</h2>
				<p class="text-slate-600 mb-6">
					Be the first to complete quests and earn Quest Coins!
				</p>
				<a
					href="/quests-chirho"
					class="inline-block bg-amber-500 hover:bg-amber-600 text-white font-semibold px-6 py-3 rounded-lg transition-colors no-underline"
				>
					Start a Quest
				</a>
			</div>
		{/if}

		<!-- Sample Data Notice -->
		{#if !data.isFromDatabaseChirho}
			<div class="mt-8 bg-blue-50 border border-blue-200 rounded-lg p-4 text-center">
				<p class="text-blue-800 text-sm">
					<span class="font-semibold">Demo Mode:</span> Showing sample leaderboard data.
					<a href="/auth-chirho/register" class="underline hover:no-underline">Sign up</a> to earn Quest Coins and appear on the real leaderboard!
				</p>
			</div>
		{/if}
	</main>

	<!-- CTA Section -->
	<section class="bg-gradient-to-r from-amber-500 to-orange-500 py-12">
		<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-white">
			<h2 class="text-2xl font-bold mb-4">Ready to Climb the Ranks?</h2>
			<p class="text-lg text-white/90 mb-6">
				Complete quests, earn Quest Coins, and see your name rise on the leaderboard!
			</p>
			<a
				href="/quests-chirho"
				class="inline-block bg-white text-amber-600 font-bold px-6 py-3 rounded-lg hover:bg-amber-50 transition-colors no-underline"
			>
				Browse Quests
			</a>
		</div>
	</section>
</div>
