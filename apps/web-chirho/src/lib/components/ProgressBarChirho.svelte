<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	interface Props {
		progressChirho: number;
		labelChirho?: string;
		showPercentChirho?: boolean;
		sizeChirho?: 'sm' | 'md' | 'lg';
		colorChirho?: 'green' | 'blue' | 'amber' | 'purple';
	}

	let {
		progressChirho = 0,
		labelChirho = '',
		showPercentChirho = true,
		sizeChirho = 'md',
		colorChirho = 'green'
	}: Props = $props();

	const heightClassChirho = $derived({
		sm: 'h-2',
		md: 'h-3',
		lg: 'h-4'
	}[sizeChirho]);

	const colorClassChirho = $derived({
		green: 'bg-green-500',
		blue: 'bg-blue-500',
		amber: 'bg-amber-500',
		purple: 'bg-purple-500'
	}[colorChirho]);

	const clampedProgressChirho = $derived(Math.min(100, Math.max(0, progressChirho)));
</script>

<div class="w-full">
	{#if labelChirho || showPercentChirho}
		<div class="flex justify-between text-sm mb-1">
			{#if labelChirho}
				<span class="text-slate-600">{labelChirho}</span>
			{/if}
			{#if showPercentChirho}
				<span class="font-medium text-slate-700">{Math.round(clampedProgressChirho)}%</span>
			{/if}
		</div>
	{/if}
	<div class="w-full bg-slate-200 rounded-full {heightClassChirho} overflow-hidden">
		<div
			class="{colorClassChirho} {heightClassChirho} rounded-full transition-all duration-500 ease-out"
			style="width: {clampedProgressChirho}%"
			role="progressbar"
			aria-valuenow={clampedProgressChirho}
			aria-valuemin={0}
			aria-valuemax={100}
			aria-label={labelChirho || 'Progress'}
		></div>
	</div>
</div>
