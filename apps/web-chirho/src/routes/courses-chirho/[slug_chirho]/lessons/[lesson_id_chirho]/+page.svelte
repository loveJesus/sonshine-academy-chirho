<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { onMount, onDestroy } from 'svelte';
	import { invalidateAll } from '$app/navigation';
	import { browser } from '$app/environment';

	let { data }: { data: any } = $props();

	// Video state
	let videoCompletedChirho = $state(false);
	let videoProgressChirho = $state(0);
	let showChaptersChirho = $state(false);
	let isMarkingCompleteChirho = $state(false);

	// Video progress tracking with YouTube IFrame API
	let playerChirho: any = null;
	let progressIntervalChirho: ReturnType<typeof setInterval> | null = null;
	let savedProgressChirho = $state<number | null>(null);
	let showResumePromptChirho = $state(false);
	let videoDurationChirho = $state(0);

	function getProgressKeyChirho(lessonIdChirho: string): string {
		return `sonshine_video_progress_${lessonIdChirho}`;
	}

	function saveVideoProgressChirho(): void {
		if (!browser || !playerChirho || !data.lessonChirho?.lessonId) return;
		try {
			const currentTimeChirho = playerChirho.getCurrentTime?.();
			const durationChirho = playerChirho.getDuration?.();
			if (currentTimeChirho && durationChirho && currentTimeChirho > 5) {
				const progressDataChirho = {
					time: Math.floor(currentTimeChirho),
					duration: Math.floor(durationChirho),
					savedAt: new Date().toISOString(),
					percent: Math.round((currentTimeChirho / durationChirho) * 100)
				};
				localStorage.setItem(
					getProgressKeyChirho(data.lessonChirho.lessonId),
					JSON.stringify(progressDataChirho)
				);
				videoProgressChirho = progressDataChirho.percent;
			}
		} catch (errChirho) {
			console.warn('Failed to save video progress:', errChirho);
		}
	}

	function loadSavedProgressChirho(): void {
		if (!browser || !data.lessonChirho?.lessonId) return;
		try {
			const savedChirho = localStorage.getItem(getProgressKeyChirho(data.lessonChirho.lessonId));
			if (savedChirho) {
				const parsedChirho = JSON.parse(savedChirho);
				// Only show resume if progress is meaningful (more than 30 seconds, less than 95% complete)
				if (parsedChirho.time > 30 && parsedChirho.percent < 95) {
					savedProgressChirho = parsedChirho.time;
					videoProgressChirho = parsedChirho.percent;
					showResumePromptChirho = true;
				}
			}
		} catch (errChirho) {
			console.warn('Failed to load video progress:', errChirho);
		}
	}

	function resumeFromSavedChirho(): void {
		if (playerChirho && savedProgressChirho) {
			playerChirho.seekTo(savedProgressChirho, true);
			playerChirho.playVideo();
		}
		showResumePromptChirho = false;
	}

	function startFromBeginningChirho(): void {
		showResumePromptChirho = false;
		if (browser && data.lessonChirho?.lessonId) {
			localStorage.removeItem(getProgressKeyChirho(data.lessonChirho.lessonId));
		}
	}

	function clearVideoProgressChirho(): void {
		if (!browser || !data.lessonChirho?.lessonId) return;
		localStorage.removeItem(getProgressKeyChirho(data.lessonChirho.lessonId));
	}

	function initYouTubePlayerChirho(): void {
		if (!browser || !data.videoChirho?.youtubeVideoId) return;

		// Load YouTube IFrame API if not loaded
		if (!window.YT) {
			const tagChirho = document.createElement('script');
			tagChirho.src = 'https://www.youtube.com/iframe_api';
			const firstScriptChirho = document.getElementsByTagName('script')[0];
			firstScriptChirho.parentNode?.insertBefore(tagChirho, firstScriptChirho);

			window.onYouTubeIframeAPIReady = createPlayerChirho;
		} else {
			createPlayerChirho();
		}
	}

	function createPlayerChirho(): void {
		if (!browser || !data.videoChirho?.youtubeVideoId) return;

		playerChirho = new window.YT.Player('youtube-player-chirho', {
			videoId: data.videoChirho.youtubeVideoId,
			playerVars: {
				rel: 0,
				modestbranding: 1,
				enablejsapi: 1
			},
			events: {
				onReady: onPlayerReadyChirho,
				onStateChange: onPlayerStateChangeChirho
			}
		});
	}

	function onPlayerReadyChirho(eventChirho: any): void {
		videoDurationChirho = eventChirho.target.getDuration() || 0;
		loadSavedProgressChirho();

		// Start progress tracking interval
		progressIntervalChirho = setInterval(saveVideoProgressChirho, 5000);
	}

	function onPlayerStateChangeChirho(eventChirho: any): void {
		// YT.PlayerState.ENDED = 0
		if (eventChirho.data === 0) {
			clearVideoProgressChirho();
			videoProgressChirho = 100;
		}
		// YT.PlayerState.PLAYING = 1
		if (eventChirho.data === 1) {
			showResumePromptChirho = false;
		}
	}

	// Declare global YT type
	declare global {
		interface Window {
			YT: any;
			onYouTubeIframeAPIReady: () => void;
		}
	}

	// Parse video chapters if available
	let chaptersChirho = $derived(() => {
		if (data.videoChirho?.chaptersJson) {
			try {
				return JSON.parse(data.videoChirho.chaptersJson);
			} catch {
				return [];
			}
		}
		return [];
	});

	// Track lesson view on mount
	onMount(async () => {
		// Mark lesson as in_progress when viewed (if not already completed)
		if (data.progressChirho?.status !== 'completed') {
			try {
				await fetch('/api/progress-chirho', {
					method: 'POST',
					headers: { 'Content-Type': 'application/json' },
					body: JSON.stringify({
						lessonId: data.lessonChirho.lessonId,
						status: 'in_progress'
					})
				});
			} catch (errorChirho) {
				console.error('Failed to track lesson progress:', errorChirho);
			}
		}

		// Initialize YouTube player for video lessons
		if (data.lessonChirho.lessonType === 'video' && data.videoChirho) {
			initYouTubePlayerChirho();
		}
	});

	// Cleanup on destroy
	onDestroy(() => {
		if (progressIntervalChirho) {
			clearInterval(progressIntervalChirho);
		}
		// Save final progress before leaving
		saveVideoProgressChirho();
	});

	function getLessonIconChirho(lessonTypeChirho: string): string {
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

	function formatTimeChirho(secondsChirho: number | null): string {
		if (!secondsChirho) return '0:00';
		const minsChirho = Math.floor(secondsChirho / 60);
		const secsChirho = secondsChirho % 60;
		return `${minsChirho}:${secsChirho.toString().padStart(2, '0')}`;
	}

	async function markAsCompleteChirho(): Promise<void> {
		if (isMarkingCompleteChirho) return;
		isMarkingCompleteChirho = true;

		try {
			const responseChirho = await fetch('/api/progress-chirho', {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify({
					lessonId: data.lessonChirho.lessonId,
					status: 'completed',
					completionPercentage: 100,
					videoCompleted: data.lessonChirho.lessonType === 'video'
				})
			});

			if (responseChirho.ok) {
				videoCompletedChirho = true;
				await invalidateAll();
			}
		} catch (errorChirho) {
			console.error('Failed to mark lesson as complete:', errorChirho);
		} finally {
			isMarkingCompleteChirho = false;
		}
	}
</script>

<svelte:head>
	<title>{data.lessonChirho.title} - {data.courseChirho.title} - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-screen bg-slate-900">
	<!-- Breadcrumb Navigation -->
	<nav class="bg-slate-800 border-b border-slate-700" aria-label="Breadcrumb">
		<div class="max-w-6xl mx-auto px-4 py-3">
			<div class="flex flex-wrap items-center justify-between gap-2">
				<!-- Breadcrumb Trail -->
				<ol class="flex flex-wrap items-center gap-1 text-sm">
					<li class="flex items-center">
						<a href="/" class="text-slate-400 hover:text-white no-underline">Home</a>
						<svg class="w-4 h-4 text-slate-600 mx-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
						</svg>
					</li>
					<li class="flex items-center">
						<a href="/courses-chirho" class="text-slate-400 hover:text-white no-underline">Courses</a>
						<svg class="w-4 h-4 text-slate-600 mx-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
						</svg>
					</li>
					<li class="flex items-center">
						<a href="/courses-chirho/{data.courseChirho.slug}" class="text-slate-400 hover:text-white no-underline truncate max-w-[150px]" title={data.courseChirho.title}>
							{data.courseChirho.title}
						</a>
						<svg class="w-4 h-4 text-slate-600 mx-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
						</svg>
					</li>
					{#if data.sessionChirho?.moduleTitle}
						<li class="flex items-center">
							<span class="text-slate-500 truncate max-w-[120px]" title={data.sessionChirho.moduleTitle}>
								{#if data.sessionChirho.weekNumber}
									Week {data.sessionChirho.weekNumber}
								{:else}
									{data.sessionChirho.moduleTitle}
								{/if}
							</span>
							<svg class="w-4 h-4 text-slate-600 mx-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
							</svg>
						</li>
					{/if}
					{#if data.sessionChirho?.title}
						<li class="flex items-center">
							<span class="text-slate-500 truncate max-w-[120px]" title={data.sessionChirho.title}>
								{data.sessionChirho.title}
							</span>
							<svg class="w-4 h-4 text-slate-600 mx-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
							</svg>
						</li>
					{/if}
					<li class="text-amber-400 font-medium truncate max-w-[200px]" title={data.lessonChirho.title} aria-current="page">
						{data.lessonChirho.title}
					</li>
				</ol>

				<!-- Status indicator -->
				<div class="flex items-center gap-4">
					{#if data.progressChirho?.status === 'completed' || videoCompletedChirho}
						<span class="text-green-400 flex items-center gap-1 text-sm">
							<svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
								<path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
							</svg>
							Completed
						</span>
					{/if}
				</div>
			</div>
		</div>
	</nav>

	<div class="max-w-6xl mx-auto">
		<div class="grid lg:grid-cols-3 gap-0">
			<!-- Main Content Area -->
			<main class="lg:col-span-2">
				<!-- Video Player -->
				{#if data.lessonChirho.lessonType === 'video' && data.videoChirho}
					<div class="relative">
						<div class="aspect-video bg-black">
							<div id="youtube-player-chirho" class="w-full h-full"></div>
						</div>

						<!-- Video Progress Bar -->
						{#if videoProgressChirho > 0 && videoProgressChirho < 100}
							<div class="absolute bottom-0 left-0 right-0 h-1 bg-slate-700">
								<div
									class="h-full bg-amber-500 transition-all duration-300"
									style="width: {videoProgressChirho}%"
								></div>
							</div>
						{/if}

						<!-- Resume Prompt -->
						{#if showResumePromptChirho}
							<div class="absolute inset-0 bg-black/80 flex items-center justify-center z-10">
								<div class="bg-slate-800 rounded-xl p-6 max-w-sm text-center shadow-xl border border-slate-700">
									<div class="text-4xl mb-3">▶️</div>
									<h3 class="text-lg font-semibold text-white mb-2">Continue Watching?</h3>
									<p class="text-slate-400 text-sm mb-4">
										You were at {formatTimeChirho(savedProgressChirho)} ({videoProgressChirho}% complete)
									</p>
									<div class="flex gap-3 justify-center">
										<button
											onclick={startFromBeginningChirho}
											class="px-4 py-2 text-slate-400 hover:text-white transition-colors"
										>
											Start Over
										</button>
										<button
											onclick={resumeFromSavedChirho}
											class="px-6 py-2 bg-amber-500 hover:bg-amber-600 text-white font-medium rounded-lg transition-colors"
										>
											Resume
										</button>
									</div>
								</div>
							</div>
						{/if}
					</div>
				{/if}

				<!-- Lesson Content -->
				<div class="p-6 bg-slate-800">
					<!-- Lesson Header -->
					<div class="flex items-start justify-between mb-6">
						<div>
							<div class="flex items-center gap-2 text-slate-400 text-sm mb-2">
								<span>{getLessonIconChirho(data.lessonChirho.lessonType)}</span>
								<span class="capitalize">{data.lessonChirho.lessonType}</span>
								{#if data.lessonChirho.estimatedDurationMinutes}
									<span>•</span>
									<span>{data.lessonChirho.estimatedDurationMinutes} min</span>
								{/if}
							</div>
							<h1 class="text-2xl font-bold text-white">{data.lessonChirho.title}</h1>
						</div>

						{#if !videoCompletedChirho && data.progressChirho?.status !== 'completed'}
							<button
								onclick={markAsCompleteChirho}
								disabled={isMarkingCompleteChirho}
								class="bg-green-600 hover:bg-green-700 disabled:bg-green-400 text-white px-4 py-2 rounded-lg text-sm font-medium transition-colors flex items-center gap-2"
							>
								{#if isMarkingCompleteChirho}
									<svg class="animate-spin h-4 w-4" viewBox="0 0 24 24">
										<circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
										<path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
									</svg>
									Saving...
								{:else}
									Mark as Complete
								{/if}
							</button>
						{/if}
					</div>

					<!-- Video Chapters -->
					{#if data.lessonChirho.lessonType === 'video' && chaptersChirho().length > 0}
						<div class="mb-6">
							<button
								onclick={() => showChaptersChirho = !showChaptersChirho}
								class="flex items-center gap-2 text-amber-400 hover:text-amber-300 text-sm"
							>
								<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
								</svg>
								{showChaptersChirho ? 'Hide' : 'Show'} Chapters ({chaptersChirho().length})
							</button>

							{#if showChaptersChirho}
								<div class="mt-3 bg-slate-700 rounded-lg p-4">
									<ul class="space-y-2">
										{#each chaptersChirho() as chapterChirho}
											<li class="flex items-center gap-3 text-slate-300 text-sm">
												<span class="text-amber-400 font-mono">{formatTimeChirho(chapterChirho.time)}</span>
												<span>{chapterChirho.title}</span>
											</li>
										{/each}
									</ul>
								</div>
							{/if}
						</div>
					{/if}

					<!-- Reading Content (Markdown) -->
					{#if data.lessonChirho.lessonType === 'reading' && data.lessonChirho.content}
						<div class="prose prose-invert prose-amber max-w-none">
							{@html data.lessonChirho.content.replace(/\n/g, '<br>')}
						</div>
					{/if}

					<!-- Quest Link -->
					{#if data.lessonChirho.lessonType === 'quest' && data.questChirho}
						<div class="bg-slate-700 rounded-xl p-6 text-center">
							<div class="text-4xl mb-4">⚔️</div>
							<h2 class="text-xl font-bold text-white mb-2">Quest Challenge</h2>
							<p class="text-slate-300 mb-6">{data.lessonChirho.content}</p>
							<a
								href="/quests-chirho/{data.questChirho.questId}"
								class="inline-block bg-amber-500 hover:bg-amber-600 text-white font-semibold px-6 py-3 rounded-lg transition-colors no-underline"
							>
								Start Quest
							</a>
						</div>
					{:else if data.lessonChirho.lessonType === 'quest'}
						<div class="bg-slate-700 rounded-xl p-6 text-center">
							<div class="text-4xl mb-4">⚔️</div>
							<h2 class="text-xl font-bold text-white mb-2">Quest Challenge</h2>
							<p class="text-slate-300 mb-4">{data.lessonChirho.content}</p>
							<p class="text-amber-400 text-sm">Quest coming soon...</p>
						</div>
					{/if}

					<!-- Payload/Terminal Link -->
					{#if data.lessonChirho.lessonType === 'payload'}
						<div class="bg-slate-700 rounded-xl p-6 text-center">
							<div class="text-4xl mb-4">💻</div>
							<h2 class="text-xl font-bold text-white mb-2">Hands-On Exercise</h2>
							<p class="text-slate-300 mb-6">{data.lessonChirho.content}</p>
							<button
								class="inline-block bg-emerald-600 hover:bg-emerald-700 text-white font-semibold px-6 py-3 rounded-lg transition-colors"
							>
								Launch Terminal
							</button>
							<p class="text-slate-500 text-sm mt-3">
								Terminal environment coming soon!
							</p>
						</div>
					{/if}

					<!-- Exercise Content -->
					{#if data.lessonChirho.lessonType === 'exercise'}
						<div class="bg-slate-700 rounded-xl p-6">
							<div class="text-4xl mb-4 text-center">✏️</div>
							<h2 class="text-xl font-bold text-white mb-4 text-center">Practice Exercise</h2>
							<div class="prose prose-invert prose-amber max-w-none">
								{@html data.lessonChirho.content?.replace(/\n/g, '<br>') || 'Exercise content coming soon...'}
							</div>
						</div>
					{/if}
				</div>
			</main>

			<!-- Sidebar -->
			<aside class="bg-slate-800 border-l border-slate-700 lg:min-h-screen">
				<div class="p-6">
					<h2 class="text-lg font-semibold text-white mb-4">Lesson Navigation</h2>

					<!-- Navigation Buttons -->
					<div class="space-y-3">
						{#if data.prevLessonChirho}
							<a
								href="/courses-chirho/{data.courseChirho.slug}/lessons/{data.prevLessonChirho.lessonId}"
								class="flex items-center gap-3 p-3 bg-slate-700 hover:bg-slate-600 rounded-lg no-underline transition-colors"
							>
								<svg class="w-5 h-5 text-slate-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
								</svg>
								<div>
									<div class="text-xs text-slate-400">Previous</div>
									<div class="text-sm text-white">{data.prevLessonChirho.title}</div>
								</div>
							</a>
						{/if}

						{#if data.nextLessonChirho}
							<a
								href="/courses-chirho/{data.courseChirho.slug}/lessons/{data.nextLessonChirho.lessonId}"
								class="flex items-center justify-between p-3 bg-amber-600 hover:bg-amber-700 rounded-lg no-underline transition-colors"
							>
								<div>
									<div class="text-xs text-amber-200">Next Up</div>
									<div class="text-sm text-white font-medium">{data.nextLessonChirho.title}</div>
								</div>
								<svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
								</svg>
							</a>
						{:else}
							<a
								href="/courses-chirho/{data.courseChirho.slug}"
								class="flex items-center justify-between p-3 bg-green-600 hover:bg-green-700 rounded-lg no-underline transition-colors"
							>
								<div>
									<div class="text-xs text-green-200">Finished!</div>
									<div class="text-sm text-white font-medium">Back to Course</div>
								</div>
								<svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
								</svg>
							</a>
						{/if}
					</div>

					<!-- Video Info -->
					{#if data.lessonChirho.lessonType === 'video' && data.videoChirho}
						<div class="mt-8 pt-6 border-t border-slate-700">
							<h3 class="text-sm font-medium text-slate-400 mb-3">Video Info</h3>
							<div class="space-y-2 text-sm">
								{#if data.videoChirho.durationSeconds}
									<div class="flex justify-between">
										<span class="text-slate-500">Duration</span>
										<span class="text-slate-300">{formatTimeChirho(data.videoChirho.durationSeconds)}</span>
									</div>
								{/if}
								<div class="flex justify-between">
									<span class="text-slate-500">Platform</span>
									<span class="text-slate-300">YouTube</span>
								</div>
								{#if videoProgressChirho > 0}
									<div class="flex justify-between items-center">
										<span class="text-slate-500">Progress</span>
										<span class="text-amber-400 font-medium">{videoProgressChirho}%</span>
									</div>
									<!-- Progress bar -->
									<div class="h-1.5 bg-slate-700 rounded-full overflow-hidden">
										<div
											class="h-full bg-amber-500 transition-all duration-300"
											style="width: {videoProgressChirho}%"
										></div>
									</div>
								{/if}
							</div>
						</div>
					{/if}

					<!-- Playback Settings -->
					{#if data.lessonChirho.lessonType === 'video'}
						<div class="mt-6 pt-6 border-t border-slate-700">
							<h3 class="text-sm font-medium text-slate-400 mb-3">Playback Tips</h3>
							<ul class="text-sm text-slate-500 space-y-2">
								<li class="flex items-start gap-2">
									<span>⌨️</span>
									<span>Press <kbd class="bg-slate-700 px-1 rounded">K</kbd> to pause/play</span>
								</li>
								<li class="flex items-start gap-2">
									<span>⏩</span>
									<span>Press <kbd class="bg-slate-700 px-1 rounded">L</kbd> to skip forward</span>
								</li>
								<li class="flex items-start gap-2">
									<span>⏪</span>
									<span>Press <kbd class="bg-slate-700 px-1 rounded">J</kbd> to skip back</span>
								</li>
							</ul>
						</div>
					{/if}

					<!-- Help Link -->
					<div class="mt-8 pt-6 border-t border-slate-700">
						<a
							href="/help-chirho"
							class="flex items-center gap-2 text-slate-400 hover:text-white text-sm no-underline"
						>
							<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
							</svg>
							Need help? Contact support
						</a>
					</div>
				</div>
			</aside>
		</div>
	</div>
</div>
