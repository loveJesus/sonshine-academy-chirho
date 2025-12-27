<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { navigating } from '$app/state';

	let progressChirho = $state(0);
	let visibleChirho = $state(false);
	let intervalChirho = $state<ReturnType<typeof setInterval> | null>(null);

	$effect(() => {
		if (navigating.to) {
			// Start the progress bar
			visibleChirho = true;
			progressChirho = 10;

			// Simulate progress
			intervalChirho = setInterval(() => {
				if (progressChirho < 90) {
					progressChirho += Math.random() * 10;
				}
			}, 150);
		} else {
			// Navigation complete
			if (visibleChirho) {
				progressChirho = 100;
				if (intervalChirho) clearInterval(intervalChirho);

				// Hide after animation completes
				setTimeout(() => {
					visibleChirho = false;
					progressChirho = 0;
				}, 200);
			}
		}

		return () => {
			if (intervalChirho) {
				clearInterval(intervalChirho);
			}
		};
	});
</script>

{#if visibleChirho}
	<div class="fixed top-0 left-0 right-0 z-[100] h-1 bg-amber-100" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow={Math.round(progressChirho)} aria-label="Page loading">
		<div
			class="h-full bg-gradient-to-r from-amber-400 to-orange-500 transition-all duration-150 ease-out"
			style="width: {progressChirho}%"
		></div>
	</div>
{/if}
