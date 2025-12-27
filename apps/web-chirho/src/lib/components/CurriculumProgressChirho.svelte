<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	interface WeekDataChirho {
		weekNumber: number;
		title: string;
		lessonsCompleted: number;
		lessonsTotal: number;
		questsCompleted: number;
		questsTotal: number;
	}

	let {
		completedLessons = 0,
		totalLessons = 54,
		completedQuests = 0,
		totalQuests = 141,
		currentWeek = 1
	} = $props();

	// 18-week curriculum structure
	const weeksChirho: WeekDataChirho[] = [
		{ weekNumber: 1, title: 'Foundation', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 2, title: 'CSS Basics', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 3, title: 'JavaScript Intro', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 4, title: 'Logic & Truth', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 5, title: 'Collections', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 6, title: 'Loops', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 7, title: 'DOM', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 8, title: 'Forms', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 9, title: 'Layout', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 10, title: 'Animation', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 11, title: 'APIs', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 12, title: 'Storage', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 13, title: 'Project 1', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 14, title: 'Advanced JS', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 15, title: 'Modern CSS', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 7 },
		{ weekNumber: 16, title: 'Project 2', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 17, title: 'Final Prep', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 },
		{ weekNumber: 18, title: 'Celebration', lessonsCompleted: 0, lessonsTotal: 3, questsCompleted: 0, questsTotal: 8 }
	];

	const overallProgressChirho = $derived(
		totalLessons > 0 ? Math.round((completedLessons / totalLessons) * 100) : 0
	);

	const questProgressChirho = $derived(
		totalQuests > 0 ? Math.round((completedQuests / totalQuests) * 100) : 0
	);

	function getWeekStatusChirho(weekNumChirho: number): 'completed' | 'current' | 'upcoming' {
		if (weekNumChirho < currentWeek) return 'completed';
		if (weekNumChirho === currentWeek) return 'current';
		return 'upcoming';
	}

	function getStatusColorChirho(statusChirho: 'completed' | 'current' | 'upcoming'): string {
		switch (statusChirho) {
			case 'completed':
				return 'bg-green-500';
			case 'current':
				return 'bg-amber-500 animate-pulse';
			case 'upcoming':
				return 'bg-slate-300';
		}
	}
</script>

<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
	<!-- Header -->
	<div class="flex items-center justify-between mb-6">
		<div>
			<h2 class="text-xl font-bold text-slate-900 flex items-center gap-2">
				<span>📈</span> Your Journey
			</h2>
			<p class="text-sm text-slate-600 mt-1">18-week curriculum progress</p>
		</div>
		<div class="text-right">
			<div class="text-2xl font-bold text-amber-500">{overallProgressChirho}%</div>
			<div class="text-xs text-slate-500">Overall Progress</div>
		</div>
	</div>

	<!-- Main Progress Bar -->
	<div class="mb-6">
		<div class="h-4 bg-slate-100 rounded-full overflow-hidden">
			<div
				class="h-full bg-gradient-to-r from-amber-400 to-orange-500 transition-all duration-500 ease-out"
				style="width: {overallProgressChirho}%"
			></div>
		</div>
		<div class="flex justify-between text-xs text-slate-500 mt-1">
			<span>Week 1</span>
			<span>Week 9</span>
			<span>Week 18</span>
		</div>
	</div>

	<!-- Week Milestones -->
	<div class="flex justify-between items-center gap-1 mb-6 overflow-x-auto pb-2">
		{#each weeksChirho as weekChirho}
			{@const statusChirho = getWeekStatusChirho(weekChirho.weekNumber)}
			<div class="flex flex-col items-center min-w-[40px]" title="Week {weekChirho.weekNumber}: {weekChirho.title}">
				<div
					class="w-6 h-6 rounded-full flex items-center justify-center text-xs font-medium transition-all {getStatusColorChirho(statusChirho)} {statusChirho === 'completed' ? 'text-white' : statusChirho === 'current' ? 'text-white' : 'text-slate-500'}"
				>
					{#if statusChirho === 'completed'}
						✓
					{:else}
						{weekChirho.weekNumber}
					{/if}
				</div>
				<span class="text-[10px] text-slate-500 mt-1 text-center truncate w-full">
					{weekChirho.title}
				</span>
			</div>
		{/each}
	</div>

	<!-- Stats Summary -->
	<div class="grid grid-cols-2 gap-4 pt-4 border-t border-slate-100">
		<div class="text-center">
			<div class="flex items-center justify-center gap-2 mb-1">
				<span class="text-lg">📚</span>
				<span class="text-xl font-bold text-blue-600">{completedLessons}/{totalLessons}</span>
			</div>
			<div class="text-xs text-slate-500">Lessons Completed</div>
		</div>
		<div class="text-center">
			<div class="flex items-center justify-center gap-2 mb-1">
				<span class="text-lg">⚔️</span>
				<span class="text-xl font-bold text-green-600">{completedQuests}/{totalQuests}</span>
			</div>
			<div class="text-xs text-slate-500">Quests Conquered</div>
		</div>
	</div>

	<!-- Encouragement -->
	{#if overallProgressChirho === 0}
		<div class="mt-4 p-3 bg-blue-50 border border-blue-100 rounded-lg text-center text-sm text-blue-800">
			<strong>Ready to begin?</strong> Start with Week 1 to embark on your coding journey!
		</div>
	{:else if overallProgressChirho < 25}
		<div class="mt-4 p-3 bg-amber-50 border border-amber-100 rounded-lg text-center text-sm text-amber-800">
			<strong>Great start!</strong> "Commit your work to the Lord, and your plans will be established." — Proverbs 16:3
		</div>
	{:else if overallProgressChirho < 50}
		<div class="mt-4 p-3 bg-green-50 border border-green-100 rounded-lg text-center text-sm text-green-800">
			<strong>Keep going!</strong> "I can do all things through Christ who strengthens me." — Philippians 4:13
		</div>
	{:else if overallProgressChirho < 75}
		<div class="mt-4 p-3 bg-purple-50 border border-purple-100 rounded-lg text-center text-sm text-purple-800">
			<strong>More than halfway!</strong> "Let us not become weary in doing good." — Galatians 6:9
		</div>
	{:else if overallProgressChirho < 100}
		<div class="mt-4 p-3 bg-orange-50 border border-orange-100 rounded-lg text-center text-sm text-orange-800">
			<strong>Almost there!</strong> "Finishing is better than starting." — Ecclesiastes 7:8
		</div>
	{:else}
		<div class="mt-4 p-3 bg-gradient-to-r from-amber-100 to-orange-100 border border-amber-200 rounded-lg text-center text-sm text-amber-900">
			<strong>🎉 Congratulations!</strong> You've completed the entire curriculum! "Well done, good and faithful servant!" — Matthew 25:21
		</div>
	{/if}
</div>
