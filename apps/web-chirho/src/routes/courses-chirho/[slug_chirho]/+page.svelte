<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();

	let expandedModulesChirho = $state(new Set());

	function toggleModuleChirho(moduleIdChirho) {
		if (expandedModulesChirho.has(moduleIdChirho)) {
			expandedModulesChirho.delete(moduleIdChirho);
			expandedModulesChirho = new Set(expandedModulesChirho);
		} else {
			expandedModulesChirho.add(moduleIdChirho);
			expandedModulesChirho = new Set(expandedModulesChirho);
		}
	}

	function getLevelColorChirho(levelChirho) {
		switch (levelChirho) {
			case 'Beginner':
				return 'bg-green-100 text-green-800';
			case 'Intermediate':
				return 'bg-yellow-100 text-yellow-800';
			case 'Advanced':
				return 'bg-red-100 text-red-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}

	function getLessonIconChirho(lessonTypeChirho) {
		switch (lessonTypeChirho) {
			case 'video':
				return '🎬';
			case 'reading':
				return '📖';
			case 'quest':
				return '⚔️';
			case 'payload':
				return '💻';
			case 'exercise':
				return '✏️';
			default:
				return '📄';
		}
	}

	function formatDurationChirho(minutesChirho) {
		if (!minutesChirho) return '';
		if (minutesChirho < 60) return `${minutesChirho} min`;
		const hoursChirho = Math.floor(minutesChirho / 60);
		const remainingMinutesChirho = minutesChirho % 60;
		if (remainingMinutesChirho === 0) return `${hoursChirho} hr`;
		return `${hoursChirho} hr ${remainingMinutesChirho} min`;
	}

	// Calculate total lessons and duration
	let totalLessonsChirho = $derived(
		data.modulesChirho.reduce((accChirho, modChirho) => {
			return accChirho + modChirho.sessions.reduce((sAccChirho, sesChirho) => {
				return sAccChirho + (sesChirho.lessons?.length || 0);
			}, 0);
		}, 0)
	);

	let totalSessionsChirho = $derived(
		data.modulesChirho.reduce((accChirho, modChirho) => accChirho + (modChirho.sessions?.length || 0), 0)
	);
</script>

<svelte:head>
	<title>{data.courseChirho.title} - Sonshine Christian Code Academy</title>
	<meta name="description" content={data.courseChirho.description} />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Course Header -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-12">
		<div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
			<!-- Breadcrumb -->
			<nav class="mb-6" aria-label="Breadcrumb">
				<ol class="flex items-center gap-2 text-sm text-slate-400">
					<li><a href="/courses-chirho" class="hover:text-white no-underline">Courses</a></li>
					<li><span aria-hidden="true">/</span></li>
					<li class="text-white">{data.courseChirho.title}</li>
				</ol>
			</nav>

			<div class="flex items-start gap-6">
				<!-- Course Icon -->
				{#if data.courseChirho.icon}
					<span class="text-6xl" aria-hidden="true">{data.courseChirho.icon}</span>
				{/if}

				<div class="flex-1">
					<h1 class="text-3xl md:text-4xl font-bold mb-3">{data.courseChirho.title}</h1>

					<p class="text-lg text-slate-300 mb-4 max-w-3xl">
						{data.courseChirho.description}
					</p>

					<!-- Course Meta -->
					<div class="flex flex-wrap items-center gap-4 mb-4">
						{#if data.courseChirho.level}
							<span class="text-xs px-3 py-1 rounded-full {getLevelColorChirho(data.courseChirho.level)}">
								{data.courseChirho.level}
							</span>
						{/if}
						<span class="flex items-center gap-1 text-slate-300">
							<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
							</svg>
							{data.courseChirho.totalWeeks} weeks
						</span>
						<span class="flex items-center gap-1 text-slate-300">
							<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
							</svg>
							{data.modulesChirho.length} modules
						</span>
						<span class="flex items-center gap-1 text-slate-300">
							<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
							</svg>
							{totalSessionsChirho} sessions
						</span>
						<span class="flex items-center gap-1 text-slate-300">
							<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
							</svg>
							{totalLessonsChirho} lessons
						</span>
					</div>

					<!-- Scripture Verse -->
					{#if data.courseChirho.verse}
						<p class="text-sm italic text-amber-300 border-l-2 border-amber-400 pl-3">
							{data.courseChirho.verse}
						</p>
					{/if}
				</div>
			</div>

			<!-- CTA Buttons -->
			<div class="mt-8 flex flex-wrap gap-4">
				{#if data.userChirho}
					<button class="bg-amber-500 hover:bg-amber-600 text-white font-semibold px-6 py-3 rounded-lg transition-colors">
						Start Learning
					</button>
				{:else}
					<a href="/auth-chirho/register" class="bg-amber-500 hover:bg-amber-600 text-white font-semibold px-6 py-3 rounded-lg transition-colors no-underline">
						Sign Up to Enroll
					</a>
					<a href="/auth-chirho/login" class="bg-slate-700 hover:bg-slate-600 text-white font-semibold px-6 py-3 rounded-lg transition-colors no-underline">
						Log In
					</a>
				{/if}
			</div>
		</div>
	</header>

	<!-- Course Curriculum -->
	<main class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
		<h2 class="text-2xl font-bold text-slate-900 mb-6">Course Curriculum</h2>

		<!-- Modules Accordion -->
		<div class="space-y-4">
			{#each data.modulesChirho as moduleChirho, indexChirho}
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
					<!-- Module Header -->
					<button
						onclick={() => toggleModuleChirho(moduleChirho.moduleId)}
						class="w-full p-5 text-left flex items-center justify-between hover:bg-slate-50 transition-colors"
						aria-expanded={expandedModulesChirho.has(moduleChirho.moduleId)}
					>
						<div class="flex items-start gap-4">
							<span class="flex-shrink-0 w-10 h-10 rounded-full bg-gradient-to-br from-amber-500 to-orange-500 text-white flex items-center justify-center font-bold text-sm">
								{moduleChirho.weekNumber || indexChirho + 1}
							</span>
							<div>
								<h3 class="font-semibold text-slate-900">{moduleChirho.title}</h3>
								{#if moduleChirho.description}
									<p class="text-sm text-slate-600 mt-1">{moduleChirho.description}</p>
								{/if}
								{#if moduleChirho.theologicalTheme}
									<p class="text-xs text-amber-600 mt-1 flex items-center gap-1">
										<span>✝️</span> {moduleChirho.theologicalTheme}
									</p>
								{/if}
							</div>
						</div>
						<div class="flex items-center gap-4">
							<span class="text-sm text-slate-500">
								{moduleChirho.sessions?.length || 0} sessions
							</span>
							<svg
								class="w-5 h-5 text-slate-400 transition-transform {expandedModulesChirho.has(moduleChirho.moduleId) ? 'rotate-180' : ''}"
								fill="none"
								stroke="currentColor"
								viewBox="0 0 24 24"
							>
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
							</svg>
						</div>
					</button>

					<!-- Module Content (Sessions & Lessons) -->
					{#if expandedModulesChirho.has(moduleChirho.moduleId)}
						<div class="border-t border-slate-200">
							{#if moduleChirho.scriptureReference}
								<div class="px-5 py-3 bg-amber-50 border-b border-amber-100">
									<p class="text-sm text-amber-800">
										<span class="font-semibold">Scripture Focus:</span> {moduleChirho.scriptureReference}
									</p>
								</div>
							{/if}

							{#each moduleChirho.sessions || [] as sessionChirho, sessionIndexChirho}
								<div class="border-b border-slate-100 last:border-b-0">
									<!-- Session Header -->
									<div class="px-5 py-4 bg-slate-50">
										<div class="flex items-center justify-between">
											<div>
												<h4 class="font-medium text-slate-900">
													Session {sessionIndexChirho + 1}: {sessionChirho.title}
												</h4>
												{#if sessionChirho.description}
													<p class="text-sm text-slate-600 mt-1">{sessionChirho.description}</p>
												{/if}
											</div>
											{#if sessionChirho.estimatedDurationMinutes}
												<span class="text-sm text-slate-500">
													{formatDurationChirho(sessionChirho.estimatedDurationMinutes)}
												</span>
											{/if}
										</div>
										{#if sessionChirho.prayerFocus}
											<p class="text-xs text-purple-600 mt-2 italic">
												🙏 {sessionChirho.prayerFocus}
											</p>
										{/if}
									</div>

									<!-- Lessons List -->
									{#if sessionChirho.lessons && sessionChirho.lessons.length > 0}
										<ul class="divide-y divide-slate-100">
											{#each sessionChirho.lessons as lessonChirho}
												<li class="px-5 py-3 flex items-center justify-between hover:bg-slate-50 transition-colors">
													<div class="flex items-center gap-3">
														<span class="text-lg" aria-hidden="true">{getLessonIconChirho(lessonChirho.lessonType)}</span>
														<div>
															<span class="text-slate-900">{lessonChirho.title}</span>
															<span class="ml-2 text-xs text-slate-400 capitalize">{lessonChirho.lessonType}</span>
														</div>
													</div>
													<div class="flex items-center gap-3">
														{#if lessonChirho.estimatedDurationMinutes}
															<span class="text-xs text-slate-500">
																{lessonChirho.estimatedDurationMinutes} min
															</span>
														{/if}
														{#if data.userChirho}
															<a
																href="/courses-chirho/{data.courseChirho.slug}/lessons/{lessonChirho.lessonId}"
																class="text-amber-600 hover:text-amber-700 text-sm font-medium no-underline"
															>
																Start →
															</a>
														{:else}
															<span class="text-xs text-slate-400">🔒</span>
														{/if}
													</div>
												</li>
											{/each}
										</ul>
									{:else}
										<div class="px-5 py-4 text-sm text-slate-500 italic">
											Lessons coming soon...
										</div>
									{/if}
								</div>
							{/each}

							{#if !moduleChirho.sessions || moduleChirho.sessions.length === 0}
								<div class="px-5 py-8 text-center text-slate-500">
									<p>Sessions for this module are coming soon.</p>
								</div>
							{/if}
						</div>
					{/if}
				</div>
			{/each}
		</div>

		{#if data.modulesChirho.length === 0}
			<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-12 text-center">
				<p class="text-slate-500 text-lg">Course content is being prepared.</p>
				<p class="text-slate-400 mt-2">Check back soon!</p>
			</div>
		{/if}
	</main>

	<!-- Related Courses -->
	<section class="bg-white py-12 border-t border-slate-200">
		<div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
			<h2 class="text-2xl font-bold text-slate-900 mb-6">Continue Your Journey</h2>
			<p class="text-slate-600 mb-8">
				After completing this course, consider taking one of these next steps in your learning path.
			</p>
			<a
				href="/courses-chirho"
				class="inline-flex items-center gap-2 bg-slate-900 hover:bg-slate-800 text-white font-semibold px-6 py-3 rounded-lg transition-colors no-underline"
			>
				<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
				</svg>
				Browse All Courses
			</a>
		</div>
	</section>
</div>
