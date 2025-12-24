<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();

	function getTransactionColorChirho(typeChirho) {
		switch (typeChirho) {
			case 'quest_reward':
				return 'from-green-500 to-emerald-500';
			case 'transfer':
				return 'from-blue-500 to-indigo-500';
			case 'system_grant':
				return 'from-purple-500 to-violet-500';
			default:
				return 'from-slate-500 to-slate-600';
		}
	}

	function getTransactionIconChirho(typeChirho) {
		switch (typeChirho) {
			case 'quest_reward':
				return '⚔️';
			case 'transfer':
				return '↔️';
			case 'system_grant':
				return '🎁';
			default:
				return '💰';
		}
	}

	function getTransactionLabelChirho(typeChirho) {
		switch (typeChirho) {
			case 'quest_reward':
				return 'Quest Reward';
			case 'transfer':
				return 'Transfer';
			case 'system_grant':
				return 'System Grant';
			default:
				return 'Transaction';
		}
	}

	function formatTimeAgoChirho(dateChirho) {
		const nowChirho = new Date();
		const thenChirho = new Date(dateChirho);
		const diffMsChirho = nowChirho.getTime() - thenChirho.getTime();
		const diffMinsChirho = Math.floor(diffMsChirho / (1000 * 60));
		const diffHoursChirho = Math.floor(diffMsChirho / (1000 * 60 * 60));
		const diffDaysChirho = Math.floor(diffMsChirho / (1000 * 60 * 60 * 24));

		if (diffMinsChirho < 1) return 'Just now';
		if (diffMinsChirho < 60) return `${diffMinsChirho}m ago`;
		if (diffHoursChirho < 24) return `${diffHoursChirho}h ago`;
		if (diffDaysChirho < 7) return `${diffDaysChirho}d ago`;
		return thenChirho.toLocaleDateString();
	}

	function shortenHashChirho(hashChirho) {
		if (!hashChirho) return '';
		if (hashChirho.length <= 12) return hashChirho;
		return hashChirho.slice(0, 6) + '...' + hashChirho.slice(-6);
	}

	function formatNumberChirho(numChirho) {
		return numChirho.toLocaleString();
	}
</script>

<svelte:head>
	<title>Quest Coin Ledger - Sonshine Christian Code Academy</title>
	<meta name="description" content="View the transparent Quest Coin transaction ledger at Sonshine Christian Code Academy." />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Hero Section -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-12">
		<div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
			<h1 class="text-4xl md:text-5xl font-bold mb-4">
				<span class="text-amber-400">🪙</span> Quest Coin Ledger
			</h1>
			<p class="text-xl text-slate-300 max-w-2xl mx-auto">
				A transparent record of all Quest Coin transactions. Every reward, transfer, and grant is publicly verifiable.
			</p>
			<p class="text-sm text-amber-400 mt-4 italic">
				"The integrity of the upright shall guide them" — Proverbs 11:3
			</p>
		</div>
	</header>

	<main class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
		<!-- Stats Cards -->
		<div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-4 mb-8">
			<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
				<div class="text-sm text-slate-500 mb-1">Total Transactions</div>
				<div class="text-2xl font-bold text-slate-900">{formatNumberChirho(data.totalTransactionsChirho)}</div>
			</div>
			<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
				<div class="text-sm text-slate-500 mb-1">Total Coins Moved</div>
				<div class="text-2xl font-bold text-amber-600 flex items-center gap-1">
					<span>🪙</span>
					{formatNumberChirho(data.totalCoinsTransferredChirho)}
				</div>
			</div>
			{#if data.userChirho}
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<div class="text-sm text-slate-500 mb-1">Your Balance</div>
					<div class="text-2xl font-bold text-green-600 flex items-center gap-1">
						<span>🪙</span>
						{formatNumberChirho(data.userChirho.questCoinsBalance || 0)}
					</div>
				</div>
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<div class="text-sm text-slate-500 mb-1">Your Transactions</div>
					<div class="text-2xl font-bold text-slate-900">{data.userTransactionsChirho.length}</div>
				</div>
			{:else}
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6 col-span-2">
					<div class="text-sm text-slate-500 mb-2">Want to track your coins?</div>
					<a
						href="/auth-chirho/login"
						class="text-amber-600 hover:text-amber-700 font-medium no-underline"
					>
						Log in to view your transactions →
					</a>
				</div>
			{/if}
		</div>

		<!-- Filter Bar -->
		<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-4 mb-6">
			<form method="get" class="flex flex-wrap items-center gap-4">
				<div class="flex items-center gap-2">
					<label for="type-filter" class="text-sm font-medium text-slate-700">Type:</label>
					<select
						id="type-filter"
						name="type"
						class="border border-slate-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-amber-500 focus:border-amber-500"
					>
						<option value="all" selected={data.filterTypeChirho === 'all'}>All</option>
						<option value="quest_reward" selected={data.filterTypeChirho === 'quest_reward'}>Quest Rewards</option>
						<option value="transfer" selected={data.filterTypeChirho === 'transfer'}>Transfers</option>
						<option value="system_grant" selected={data.filterTypeChirho === 'system_grant'}>System Grants</option>
					</select>
				</div>

				<div class="flex items-center gap-2">
					<label for="user-filter" class="text-sm font-medium text-slate-700">User:</label>
					<input
						id="user-filter"
						name="user"
						type="text"
						placeholder="Username"
						value={data.filterUserChirho}
						class="border border-slate-300 rounded-lg px-3 py-2 text-sm w-40 focus:ring-2 focus:ring-amber-500 focus:border-amber-500"
					/>
				</div>

				<button
					type="submit"
					class="bg-amber-500 hover:bg-amber-600 text-white px-4 py-2 rounded-lg text-sm font-medium transition-colors"
				>
					Filter
				</button>

				{#if data.filterTypeChirho !== 'all' || data.filterUserChirho}
					<a
						href="/quest-coins-chirho"
						class="text-slate-500 hover:text-slate-700 text-sm no-underline"
					>
						Clear filters
					</a>
				{/if}
			</form>
		</div>

		<!-- Transaction List -->
		<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
			<div class="px-6 py-4 border-b border-slate-200 bg-slate-50">
				<h2 class="text-lg font-semibold text-slate-900">Recent Transactions</h2>
			</div>

			<div class="divide-y divide-slate-100">
				{#each data.transactionsChirho as txChirho}
					<div class="px-6 py-4 hover:bg-slate-50 transition-colors">
						<div class="flex items-start justify-between gap-4">
							<div class="flex items-start gap-4">
								<!-- Transaction Icon -->
								<div class="w-10 h-10 rounded-full bg-gradient-to-br {getTransactionColorChirho(txChirho.transactionType)} flex items-center justify-center text-lg">
									{getTransactionIconChirho(txChirho.transactionType)}
								</div>

								<div>
									<!-- Transaction Type & Amount -->
									<div class="flex items-center gap-2 mb-1">
										<span class="text-xs px-2 py-0.5 rounded-full bg-slate-100 text-slate-600 font-medium">
											{getTransactionLabelChirho(txChirho.transactionType)}
										</span>
										<span class="text-lg font-bold text-green-600">+{txChirho.amount} 🪙</span>
									</div>

									<!-- From/To -->
									<div class="text-sm text-slate-600">
										<span class="text-slate-400">From:</span>
										<span class="font-mono {txChirho.fromUsername === 'SYSTEM' ? 'text-purple-600' : 'text-slate-900'}">
											{txChirho.fromUsername}
										</span>
										<span class="mx-2 text-slate-400">→</span>
										<span class="text-slate-400">To:</span>
										<span class="font-mono text-slate-900">{txChirho.toUsername}</span>
									</div>

									<!-- Memo -->
									{#if txChirho.memo}
										<div class="text-sm text-slate-500 mt-1">
											{txChirho.memo}
										</div>
									{/if}
								</div>
							</div>

							<!-- Time & Hash -->
							<div class="text-right text-sm">
								<div class="text-slate-500">{formatTimeAgoChirho(txChirho.createdAt)}</div>
								<div class="font-mono text-xs text-slate-400 mt-1" title={txChirho.transactionHash}>
									{shortenHashChirho(txChirho.transactionHash)}
								</div>
							</div>
						</div>

						<!-- Hash Chain (collapsed) -->
						<details class="mt-3">
							<summary class="text-xs text-slate-400 cursor-pointer hover:text-slate-600">
								View transaction details
							</summary>
							<div class="mt-2 bg-slate-50 rounded-lg p-3 font-mono text-xs space-y-1">
								<div>
									<span class="text-slate-500">TX Hash:</span>
									<span class="text-slate-700 break-all">{txChirho.transactionHash}</span>
								</div>
								<div>
									<span class="text-slate-500">Prev Hash:</span>
									<span class="text-slate-700 break-all">{txChirho.previousHash || 'genesis'}</span>
								</div>
								{#if txChirho.referenceId}
									<div>
										<span class="text-slate-500">Reference:</span>
										<span class="text-slate-700">{txChirho.referenceId}</span>
									</div>
								{/if}
							</div>
						</details>
					</div>
				{/each}
			</div>

			{#if data.transactionsChirho.length === 0}
				<div class="p-12 text-center">
					<div class="text-4xl mb-4">🪙</div>
					<h3 class="text-lg font-semibold text-slate-900 mb-2">No Transactions Found</h3>
					<p class="text-slate-500">
						{#if data.filterTypeChirho !== 'all' || data.filterUserChirho}
							No transactions match your filters.
						{:else}
							No transactions yet. Complete quests to earn Quest Coins!
						{/if}
					</p>
				</div>
			{/if}
		</div>

		<!-- Sample Data Notice -->
		{#if !data.isFromDatabaseChirho}
			<div class="mt-8 bg-blue-50 border border-blue-200 rounded-lg p-4 text-center">
				<p class="text-blue-800 text-sm">
					<span class="font-semibold">Demo Mode:</span> Showing sample transaction data.
					<a href="/quests-chirho" class="underline hover:no-underline">Complete quests</a> to see real transactions!
				</p>
			</div>
		{/if}

		<!-- Explanation Section -->
		<div class="mt-12 bg-white rounded-xl shadow-sm border border-slate-200 p-8">
			<h2 class="text-xl font-bold text-slate-900 mb-4">About Quest Coins</h2>
			<div class="grid md:grid-cols-3 gap-6">
				<div>
					<div class="text-2xl mb-2">⚔️</div>
					<h3 class="font-semibold text-slate-900 mb-2">Earn by Learning</h3>
					<p class="text-sm text-slate-600">
						Complete quests and challenges to earn Quest Coins. Bonus coins for solving without viewing the solution!
					</p>
				</div>
				<div>
					<div class="text-2xl mb-2">🤝</div>
					<h3 class="font-semibold text-slate-900 mb-2">Share with Others</h3>
					<p class="text-sm text-slate-600">
						Transfer Quest Coins to fellow students as thanks for help, encouragement, or just because!
					</p>
				</div>
				<div>
					<div class="text-2xl mb-2">🏆</div>
					<h3 class="font-semibold text-slate-900 mb-2">Unlock Rewards</h3>
					<p class="text-sm text-slate-600">
						Use Quest Coins for profile themes, badges, and eventually physical rewards like Christian apparel.
					</p>
				</div>
			</div>
		</div>
	</main>
</div>
