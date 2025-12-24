<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	let { data } = $props();

	function formatDateChirho(dateChirho) {
		if (!dateChirho) return 'N/A';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			month: 'short',
			day: 'numeric',
			year: 'numeric'
		});
	}

	function formatTimeAgoChirho(dateChirho) {
		if (!dateChirho) return 'N/A';
		const nowChirho = new Date();
		const pastChirho = new Date(dateChirho);
		const diffMsChirho = nowChirho.getTime() - pastChirho.getTime();
		const diffMinsChirho = Math.floor(diffMsChirho / 60000);
		const diffHoursChirho = Math.floor(diffMinsChirho / 60);
		const diffDaysChirho = Math.floor(diffHoursChirho / 24);

		if (diffMinsChirho < 1) return 'Just now';
		if (diffMinsChirho < 60) return `${diffMinsChirho}m ago`;
		if (diffHoursChirho < 24) return `${diffHoursChirho}h ago`;
		if (diffDaysChirho < 7) return `${diffDaysChirho}d ago`;
		return formatDateChirho(dateChirho);
	}

	const progressPercentChirho = $derived(
		data.statsChirho.totalQuests > 0
			? Math.round((data.statsChirho.completedQuests / data.statsChirho.totalQuests) * 100)
			: 0
	);
</script>

<svelte:head>
	<title>Dashboard - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="max-w-6xl mx-auto py-8 px-4">
	<!-- Welcome Header -->
	<div class="mb-8">
		<h1 class="text-3xl font-bold text-slate-900">
			Welcome back, {data.userChirho.displayName || data.userChirho.username}!
		</h1>
		<p class="text-slate-600 mt-1">
			{#if data.organizationChirho && data.cohortChirho}
				{data.organizationChirho.name} • {data.cohortChirho.name}
			{:else if data.organizationChirho}
				{data.organizationChirho.name}
			{:else}
				Keep up the great work on your coding journey!
			{/if}
		</p>
	</div>

	<!-- Announcements -->
	{#if data.announcementsChirho.length > 0}
		<div class="mb-8 space-y-3">
			{#each data.announcementsChirho as announcementChirho}
				<div class="bg-blue-50 border border-blue-200 rounded-lg p-4">
					<h3 class="font-medium text-blue-900">{announcementChirho.title}</h3>
					<p class="text-sm text-blue-800 mt-1">{announcementChirho.content}</p>
					<p class="text-xs text-blue-600 mt-2">{formatDateChirho(announcementChirho.createdAt)}</p>
				</div>
			{/each}
		</div>
	{/if}

	<!-- Stats Grid -->
	<div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
		<div class="card text-center">
			<div class="text-3xl font-bold text-amber-500">{data.statsChirho.questCoins}</div>
			<div class="text-sm text-slate-600">Quest Coins</div>
		</div>
		<div class="card text-center">
			<div class="text-3xl font-bold text-green-500">{data.statsChirho.completedQuests}</div>
			<div class="text-sm text-slate-600">Quests Completed</div>
		</div>
		<div class="card text-center">
			<div class="text-3xl font-bold text-blue-500">{progressPercentChirho}%</div>
			<div class="text-sm text-slate-600">Quest Progress</div>
		</div>
		<div class="card text-center">
			<div class="text-3xl font-bold text-purple-500">{data.statsChirho.payloadsRun}</div>
			<div class="text-sm text-slate-600">Payloads Run</div>
		</div>
	</div>

	<div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
		<!-- Main Content -->
		<div class="lg:col-span-2 space-y-6">
			<!-- Terminal Access -->
			<div class="card">
				<h2 class="text-xl font-semibold text-slate-900 mb-4 flex items-center gap-2">
					<span>💻</span> Your Terminal
				</h2>
				{#if data.terminalChirho}
					{#if data.terminalChirho.status === 'running'}
						<div class="bg-slate-900 rounded-lg p-4 mb-4">
							<div class="flex items-center gap-2 mb-3">
								<span class="w-3 h-3 bg-green-500 rounded-full animate-pulse"></span>
								<span class="text-green-400 text-sm">Terminal Online</span>
							</div>
							<a
								href={data.terminalChirho.ttydUrl}
								target="_blank"
								rel="noopener noreferrer"
								class="btn-primary w-full text-center block"
							>
								Open Terminal →
							</a>
						</div>
					{:else}
						<div class="bg-amber-50 border border-amber-200 rounded-lg p-4 mb-4">
							<p class="text-amber-800">
								Your terminal is currently <strong>{data.terminalChirho.status}</strong>.
								{#if data.terminalChirho.status === 'stopped'}
									Click below to start it.
								{/if}
							</p>
							<button class="btn-primary mt-3">Start Terminal</button>
						</div>
					{/if}
				{:else}
					<div class="bg-slate-50 border border-slate-200 rounded-lg p-4">
						<p class="text-slate-600 mb-3">
							You don't have a terminal assigned yet. Your terminal will be created when you start
							the course.
						</p>
						<a href="/courses-chirho" class="btn-primary inline-block">Browse Courses →</a>
					</div>
				{/if}
			</div>

			<!-- Continue Learning -->
			<div class="card">
				<h2 class="text-xl font-semibold text-slate-900 mb-4 flex items-center gap-2">
					<span>📚</span> Continue Learning
				</h2>
				<div class="space-y-3">
					<a
						href="/courses-chirho"
						class="block p-4 border rounded-lg hover:border-blue-300 hover:bg-blue-50 transition-colors"
					>
						<div class="flex items-center justify-between">
							<div>
								<h3 class="font-medium text-slate-900">Course Content</h3>
								<p class="text-sm text-slate-600">Watch video lessons and follow along</p>
							</div>
							<span class="text-blue-500">→</span>
						</div>
					</a>
					<a
						href="/quests-chirho"
						class="block p-4 border rounded-lg hover:border-green-300 hover:bg-green-50 transition-colors"
					>
						<div class="flex items-center justify-between">
							<div>
								<h3 class="font-medium text-slate-900">Coding Quests</h3>
								<p class="text-sm text-slate-600">
									{data.statsChirho.completedQuests}/{data.statsChirho.totalQuests} completed
								</p>
							</div>
							<span class="text-green-500">→</span>
						</div>
					</a>
					<a
						href="/payloads-chirho"
						class="block p-4 border rounded-lg hover:border-purple-300 hover:bg-purple-50 transition-colors"
					>
						<div class="flex items-center justify-between">
							<div>
								<h3 class="font-medium text-slate-900">Payload Scripts</h3>
								<p class="text-sm text-slate-600">Run scripts in your terminal</p>
							</div>
							<span class="text-purple-500">→</span>
						</div>
					</a>
				</div>
			</div>

			<!-- Recent Activity -->
			<div class="card">
				<h2 class="text-xl font-semibold text-slate-900 mb-4 flex items-center gap-2">
					<span>⚡</span> Recent Quest Submissions
				</h2>
				{#if data.recentQuestSubmissionsChirho.length === 0}
					<p class="text-slate-500 text-sm">
						No quest submissions yet. Start solving quests to earn coins!
					</p>
				{:else}
					<div class="space-y-2">
						{#each data.recentQuestSubmissionsChirho as submissionChirho}
							<div
								class="flex items-center justify-between p-3 rounded-lg"
								class:bg-green-50={submissionChirho.isCorrect}
								class:bg-red-50={!submissionChirho.isCorrect}
							>
								<div>
									<p class="font-medium text-slate-900">
										{submissionChirho.questTitle || 'Unknown Quest'}
									</p>
									<p class="text-xs text-slate-500">
										{formatTimeAgoChirho(submissionChirho.submittedAt)}
									</p>
								</div>
								<div class="text-right">
									{#if submissionChirho.isCorrect}
										<span class="text-green-600 font-medium">✓ Passed</span>
										{#if submissionChirho.coinsAwarded}
											<p class="text-xs text-amber-600">+{submissionChirho.coinsAwarded} coins</p>
										{/if}
									{:else}
										<span class="text-red-600">✗ Try Again</span>
									{/if}
								</div>
							</div>
						{/each}
					</div>
					<a href="/quests-chirho" class="text-blue-600 hover:underline text-sm mt-4 inline-block">
						View all quests →
					</a>
				{/if}
			</div>
		</div>

		<!-- Sidebar -->
		<div class="space-y-6">
			<!-- Profile Card -->
			<div class="card">
				<div class="text-center">
					<div
						class="w-20 h-20 mx-auto rounded-full flex items-center justify-center text-3xl text-white mb-3"
						style="background-color: {data.userChirho.backgroundColor || '#3B82F6'}"
					>
						{(data.userChirho.displayName || data.userChirho.username).charAt(0).toUpperCase()}
					</div>
					<h3 class="font-semibold text-slate-900">
						{data.userChirho.displayName || data.userChirho.username}
					</h3>
					<p class="text-sm text-slate-500">@{data.userChirho.username}</p>
					<div class="mt-3 inline-flex items-center gap-1 bg-amber-100 text-amber-800 px-3 py-1 rounded-full text-sm">
						<span>🪙</span>
						<span class="font-medium">{data.statsChirho.questCoins} Quest Coins</span>
					</div>
				</div>
				<div class="mt-4 pt-4 border-t">
					<a href="/settings-chirho" class="text-blue-600 hover:underline text-sm block text-center">
						Edit Profile →
					</a>
				</div>
			</div>

			<!-- Quest Progress -->
			<div class="card">
				<h3 class="font-semibold text-slate-900 mb-3">Quest Progress</h3>
				<div class="mb-2">
					<div class="flex justify-between text-sm mb-1">
						<span class="text-slate-600">Completed</span>
						<span class="font-medium">
							{data.statsChirho.completedQuests}/{data.statsChirho.totalQuests}
						</span>
					</div>
					<div class="w-full bg-slate-200 rounded-full h-3">
						<div
							class="bg-green-500 h-3 rounded-full transition-all duration-500"
							style="width: {progressPercentChirho}%"
						></div>
					</div>
				</div>
				<p class="text-xs text-slate-500">
					{data.statsChirho.totalQuests - data.statsChirho.completedQuests} quests remaining
				</p>
			</div>

			<!-- Organization Info -->
			{#if data.organizationChirho}
				<div class="card">
					<h3 class="font-semibold text-slate-900 mb-3">Your Organization</h3>
					<p class="text-slate-700">{data.organizationChirho.name}</p>
					{#if data.cohortChirho}
						<p class="text-sm text-slate-500 mt-1">
							{data.cohortChirho.name}
							{#if data.cohortChirho.startDate}
								• Started {formatDateChirho(data.cohortChirho.startDate)}
							{/if}
						</p>
					{/if}
					{#if data.userChirho.role === 'org_admin'}
						<a
							href="/organizations-chirho/{data.organizationChirho.slug}/manage"
							class="text-blue-600 hover:underline text-sm mt-3 inline-block"
						>
							Manage Organization →
						</a>
					{/if}
				</div>
			{:else}
				<div class="card bg-slate-50">
					<h3 class="font-semibold text-slate-900 mb-2">Join an Organization</h3>
					<p class="text-sm text-slate-600 mb-3">
						Connect with a church, school, or homeschool group for guided learning.
					</p>
					<a href="/organizations-chirho/register" class="btn-secondary text-sm w-full text-center">
						Register Organization
					</a>
				</div>
			{/if}

			<!-- Quick Links -->
			<div class="card">
				<h3 class="font-semibold text-slate-900 mb-3">Quick Links</h3>
				<div class="space-y-2 text-sm">
					<a href="/quest-coins-chirho" class="text-blue-600 hover:underline block">
						🪙 Quest Coin Ledger
					</a>
					<a href="/leaderboard-chirho" class="text-blue-600 hover:underline block">
						🏆 Leaderboard
					</a>
					<a href="/help-chirho" class="text-blue-600 hover:underline block">
						❓ Help & Support
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripture Footer -->
	<div class="mt-12 text-center">
		<p class="text-slate-500 italic text-sm">
			"Study to shew thyself approved unto God, a workman that needeth not to be ashamed,
			<br />rightly dividing the word of truth."
			<br />— 2 Timothy 2:15
		</p>
	</div>
</div>
