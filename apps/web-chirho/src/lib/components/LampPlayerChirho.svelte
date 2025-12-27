<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { onMount } from 'svelte';

	let {
		videoIdChirho = '',
		titleChirho = '',
		descriptionChirho = '',
		chaptersChirho = [],
		onprogressChirho = () => {},
		oncompleteChirho = () => {},
		initialProgressChirho = 0
	} = $props();

	let playerContainerChirho;
	let playerChirho;
	let isPlayingChirho = $state(false);
	let currentTimeChirho = $state(0);
	let durationChirho = $state(0);
	let progressPercentChirho = $state(initialProgressChirho);
	let isCompletedChirho = $state(initialProgressChirho >= 90);
	let showChaptersChirho = $state(false);
	let currentChapterChirho = $state(null);

	// YouTube IFrame API
	let ytApiReadyChirho = $state(false);

	onMount(() => {
		// Load YouTube IFrame API if not already loaded
		if (!window.YT) {
			const tagChirho = document.createElement('script');
			tagChirho.src = 'https://www.youtube.com/iframe_api';
			const firstScriptTagChirho = document.getElementsByTagName('script')[0];
			firstScriptTagChirho.parentNode.insertBefore(tagChirho, firstScriptTagChirho);

			window.onYouTubeIframeAPIReady = () => {
				ytApiReadyChirho = true;
				initPlayerChirho();
			};
		} else {
			ytApiReadyChirho = true;
			initPlayerChirho();
		}

		return () => {
			if (playerChirho) {
				playerChirho.destroy();
			}
		};
	});

	function initPlayerChirho() {
		if (!ytApiReadyChirho || !playerContainerChirho) return;

		playerChirho = new window.YT.Player(playerContainerChirho, {
			videoId: videoIdChirho,
			playerVars: {
				autoplay: 0,
				modestbranding: 1,
				rel: 0,
				showinfo: 0
			},
			events: {
				onReady: onPlayerReadyChirho,
				onStateChange: onPlayerStateChangeChirho
			}
		});
	}

	function onPlayerReadyChirho(eventChirho) {
		durationChirho = eventChirho.target.getDuration();
		// Start progress tracking
		setInterval(updateProgressChirho, 1000);
	}

	function onPlayerStateChangeChirho(eventChirho) {
		isPlayingChirho = eventChirho.data === window.YT.PlayerState.PLAYING;

		if (eventChirho.data === window.YT.PlayerState.ENDED) {
			if (!isCompletedChirho) {
				isCompletedChirho = true;
				oncompleteChirho();
			}
		}
	}

	function updateProgressChirho() {
		if (!playerChirho || !playerChirho.getCurrentTime) return;

		currentTimeChirho = playerChirho.getCurrentTime();
		if (durationChirho > 0) {
			progressPercentChirho = (currentTimeChirho / durationChirho) * 100;

			// Report progress
			onprogressChirho({
				currentTime: currentTimeChirho,
				duration: durationChirho,
				percent: progressPercentChirho
			});

			// Mark as completed at 90%
			if (progressPercentChirho >= 90 && !isCompletedChirho) {
				isCompletedChirho = true;
				oncompleteChirho();
			}

			// Update current chapter
			if (chaptersChirho.length > 0) {
				for (let iChirho = chaptersChirho.length - 1; iChirho >= 0; iChirho--) {
					if (currentTimeChirho >= chaptersChirho[iChirho].startTime) {
						currentChapterChirho = chaptersChirho[iChirho];
						break;
					}
				}
			}
		}
	}

	function seekToChirho(timeChirho) {
		if (playerChirho && playerChirho.seekTo) {
			playerChirho.seekTo(timeChirho, true);
		}
	}

	function formatTimeChirho(secondsChirho) {
		const minsChirho = Math.floor(secondsChirho / 60);
		const secsChirho = Math.floor(secondsChirho % 60);
		return `${minsChirho}:${secsChirho.toString().padStart(2, '0')}`;
	}

	function togglePlayChirho() {
		if (!playerChirho) return;
		if (isPlayingChirho) {
			playerChirho.pauseVideo();
		} else {
			playerChirho.playVideo();
		}
	}
</script>

<div class="lamp-player-chirho">
	<!-- Video Header -->
	<div class="player-header-chirho">
		<div class="flex items-center gap-3">
			<span class="text-2xl">🔦</span>
			<div>
				<h3 class="font-bold text-slate-900 text-lg">{titleChirho}</h3>
				{#if descriptionChirho}
					<p class="text-sm text-slate-600">{descriptionChirho}</p>
				{/if}
			</div>
		</div>
		{#if isCompletedChirho}
			<span class="completed-badge-chirho">
				<span>✓</span> Completed
			</span>
		{/if}
	</div>

	<!-- Video Player -->
	<div class="video-container-chirho">
		<div bind:this={playerContainerChirho} class="youtube-player-chirho"></div>
	</div>

	<!-- Progress Bar -->
	<div class="progress-section-chirho">
		<div class="progress-bar-chirho">
			<div
				class="progress-fill-chirho"
				style="width: {progressPercentChirho}%"
			></div>
		</div>
		<div class="progress-info-chirho">
			<span>{formatTimeChirho(currentTimeChirho)} / {formatTimeChirho(durationChirho)}</span>
			<span class="text-slate-400">{Math.round(progressPercentChirho)}% watched</span>
		</div>
	</div>

	<!-- Chapters -->
	{#if chaptersChirho.length > 0}
		<div class="chapters-section-chirho">
			<button
				type="button"
				class="chapters-toggle-chirho"
				onclick={() => showChaptersChirho = !showChaptersChirho}
			>
				<span>📑</span>
				<span>Chapters ({chaptersChirho.length})</span>
				<svg
					class="w-4 h-4 transition-transform {showChaptersChirho ? 'rotate-180' : ''}"
					fill="none"
					stroke="currentColor"
					viewBox="0 0 24 24"
				>
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
				</svg>
			</button>

			{#if showChaptersChirho}
				<div class="chapters-list-chirho">
					{#each chaptersChirho as chapterChirho, idx}
						<button
							type="button"
							class="chapter-item-chirho"
							class:active-chirho={currentChapterChirho === chapterChirho}
							onclick={() => seekToChirho(chapterChirho.startTime)}
						>
							<span class="chapter-number-chirho">{idx + 1}</span>
							<div class="chapter-info-chirho">
								<span class="chapter-title-chirho">{chapterChirho.title}</span>
								<span class="chapter-time-chirho">{formatTimeChirho(chapterChirho.startTime)}</span>
							</div>
							{#if currentChapterChirho === chapterChirho}
								<span class="now-playing-chirho">Now</span>
							{/if}
						</button>
					{/each}
				</div>
			{/if}
		</div>
	{/if}

	<!-- Scripture -->
	<div class="scripture-footer-chirho">
		<p class="text-sm italic text-slate-500">
			"Your word is a lamp for my feet, a light on my path."
			<span class="font-semibold">— Psalm 119:105</span>
		</p>
	</div>
</div>

<style>
	.lamp-player-chirho {
		background: white;
		border-radius: 12px;
		overflow: hidden;
		box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
		border: 1px solid #e2e8f0;
	}

	.player-header-chirho {
		display: flex;
		justify-content: space-between;
		align-items: flex-start;
		padding: 1rem 1.5rem;
		background: linear-gradient(to right, #fef3c7, #fde68a);
		border-bottom: 1px solid #fcd34d;
	}

	.completed-badge-chirho {
		display: flex;
		align-items: center;
		gap: 0.25rem;
		background: #059669;
		color: white;
		font-size: 0.75rem;
		font-weight: 600;
		padding: 0.375rem 0.75rem;
		border-radius: 9999px;
	}

	.video-container-chirho {
		position: relative;
		padding-bottom: 56.25%;
		background: #000;
	}

	.youtube-player-chirho {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}

	:global(.lamp-player-chirho .youtube-player-chirho iframe) {
		width: 100%;
		height: 100%;
	}

	.progress-section-chirho {
		padding: 1rem 1.5rem;
		background: #f8fafc;
		border-bottom: 1px solid #e2e8f0;
	}

	.progress-bar-chirho {
		height: 6px;
		background: #e2e8f0;
		border-radius: 3px;
		overflow: hidden;
		margin-bottom: 0.5rem;
	}

	.progress-fill-chirho {
		height: 100%;
		background: linear-gradient(to right, #f59e0b, #d97706);
		border-radius: 3px;
		transition: width 0.3s ease;
	}

	.progress-info-chirho {
		display: flex;
		justify-content: space-between;
		font-size: 0.75rem;
		color: #64748b;
	}

	.chapters-section-chirho {
		border-bottom: 1px solid #e2e8f0;
	}

	.chapters-toggle-chirho {
		width: 100%;
		display: flex;
		align-items: center;
		gap: 0.5rem;
		padding: 0.75rem 1.5rem;
		background: transparent;
		border: none;
		color: #475569;
		font-size: 0.875rem;
		font-weight: 500;
		cursor: pointer;
		transition: background 0.15s;
	}

	.chapters-toggle-chirho:hover {
		background: #f8fafc;
	}

	.chapters-list-chirho {
		padding: 0 0.75rem 0.75rem;
	}

	.chapter-item-chirho {
		width: 100%;
		display: flex;
		align-items: center;
		gap: 0.75rem;
		padding: 0.625rem 0.75rem;
		background: transparent;
		border: none;
		border-radius: 8px;
		text-align: left;
		cursor: pointer;
		transition: background 0.15s;
	}

	.chapter-item-chirho:hover {
		background: #f1f5f9;
	}

	.chapter-item-chirho.active-chirho {
		background: #fef3c7;
	}

	.chapter-number-chirho {
		width: 1.5rem;
		height: 1.5rem;
		display: flex;
		align-items: center;
		justify-content: center;
		background: #e2e8f0;
		border-radius: 4px;
		font-size: 0.75rem;
		font-weight: 600;
		color: #64748b;
	}

	.chapter-item-chirho.active-chirho .chapter-number-chirho {
		background: #f59e0b;
		color: white;
	}

	.chapter-info-chirho {
		flex: 1;
		display: flex;
		flex-direction: column;
	}

	.chapter-title-chirho {
		font-size: 0.875rem;
		color: #1e293b;
	}

	.chapter-time-chirho {
		font-size: 0.75rem;
		color: #94a3b8;
	}

	.now-playing-chirho {
		font-size: 0.625rem;
		font-weight: 600;
		color: #f59e0b;
		text-transform: uppercase;
		letter-spacing: 0.05em;
	}

	.scripture-footer-chirho {
		padding: 1rem 1.5rem;
		text-align: center;
		background: #fffbeb;
	}
</style>
