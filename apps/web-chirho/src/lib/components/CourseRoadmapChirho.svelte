<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	interface LessonProgressChirho {
		lessonId: string;
		title: string;
		lessonType: string;
		status: 'not_started' | 'in_progress' | 'completed';
	}

	interface SessionProgressChirho {
		sessionId: string;
		title: string;
		lessons: LessonProgressChirho[];
	}

	interface ModuleProgressChirho {
		moduleId: string;
		title: string;
		weekNumber: number;
		sessions: SessionProgressChirho[];
	}

	interface Props {
		modulesChirho: ModuleProgressChirho[];
		courseSlugChirho: string;
	}

	let { modulesChirho, courseSlugChirho }: Props = $props();

	function getModuleProgressChirho(moduleChirho: ModuleProgressChirho): number {
		const allLessonsChirho = moduleChirho.sessions.flatMap(s => s.lessons);
		if (allLessonsChirho.length === 0) return 0;
		const completedChirho = allLessonsChirho.filter(l => l.status === 'completed').length;
		return Math.round((completedChirho / allLessonsChirho.length) * 100);
	}

	function getLessonIconChirho(lessonChirho: LessonProgressChirho): string {
		if (lessonChirho.status === 'completed') return '✓';
		if (lessonChirho.status === 'in_progress') return '→';

		switch (lessonChirho.lessonType) {
			case 'video': return '▶';
			case 'quest': return '⚔';
			case 'payload': return '⌨';
			case 'reading': return '📖';
			case 'exercise': return '✏';
			default: return '○';
		}
	}

	function getLessonColorChirho(lessonChirho: LessonProgressChirho): string {
		if (lessonChirho.status === 'completed') return 'bg-green-500 text-white';
		if (lessonChirho.status === 'in_progress') return 'bg-amber-500 text-white';
		return 'bg-slate-200 text-slate-600';
	}
</script>

<div class="space-y-6">
	{#each modulesChirho as moduleChirho, indexChirho}
		{@const progressChirho = getModuleProgressChirho(moduleChirho)}
		<div class="border rounded-lg overflow-hidden">
			<!-- Module Header -->
			<div class="bg-slate-50 p-4 border-b">
				<div class="flex items-center justify-between">
					<div class="flex items-center gap-3">
						<div class="w-10 h-10 rounded-full flex items-center justify-center text-white font-bold
							{progressChirho === 100 ? 'bg-green-500' : progressChirho > 0 ? 'bg-amber-500' : 'bg-slate-400'}">
							{#if progressChirho === 100}
								✓
							{:else}
								{indexChirho + 1}
							{/if}
						</div>
						<div>
							<h3 class="font-semibold text-slate-900">
								Week {moduleChirho.weekNumber}: {moduleChirho.title}
							</h3>
							<p class="text-sm text-slate-500">
								{moduleChirho.sessions.length} sessions
							</p>
						</div>
					</div>
					<div class="text-right">
						<div class="text-lg font-bold text-slate-700">{progressChirho}%</div>
						<div class="w-24 bg-slate-200 rounded-full h-2">
							<div
								class="h-2 rounded-full transition-all duration-300
									{progressChirho === 100 ? 'bg-green-500' : 'bg-amber-500'}"
								style="width: {progressChirho}%"
							></div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sessions -->
			<div class="p-4 space-y-4">
				{#each moduleChirho.sessions as sessionChirho}
					<div>
						<h4 class="text-sm font-medium text-slate-700 mb-2">{sessionChirho.title}</h4>
						<div class="flex flex-wrap gap-2">
							{#each sessionChirho.lessons as lessonChirho}
								<a
									href="/courses-chirho/{courseSlugChirho}/lessons/{lessonChirho.lessonId}"
									class="group relative"
									title="{lessonChirho.title} ({lessonChirho.status})"
								>
									<div class="w-8 h-8 rounded-full flex items-center justify-center text-sm
										{getLessonColorChirho(lessonChirho)} transition-transform group-hover:scale-110">
										{getLessonIconChirho(lessonChirho)}
									</div>
									<!-- Tooltip -->
									<div class="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 px-2 py-1 bg-slate-800 text-white text-xs rounded
										opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none z-10">
										{lessonChirho.title}
									</div>
								</a>
							{/each}
						</div>
					</div>
				{/each}
			</div>
		</div>
	{/each}
</div>
