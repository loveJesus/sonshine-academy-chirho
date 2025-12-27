<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	type SizeType = 'sm' | 'md' | 'lg' | 'xl';

	let {
		size = 'md' as SizeType,
		label = 'Loading...',
		fullPage = false
	} = $props();

	const sizesChirho: Record<SizeType, string> = {
		sm: 'w-4 h-4 border-2',
		md: 'w-8 h-8 border-3',
		lg: 'w-12 h-12 border-4',
		xl: 'w-16 h-16 border-4'
	};

	const textSizesChirho: Record<SizeType, string> = {
		sm: 'text-xs',
		md: 'text-sm',
		lg: 'text-base',
		xl: 'text-lg'
	};
</script>

{#if fullPage}
	<div class="fixed inset-0 bg-white/80 backdrop-blur-sm flex items-center justify-center z-50" role="status" aria-live="polite">
		<div class="text-center">
			<div
				class="{sizesChirho[size]} border-amber-200 border-t-amber-500 rounded-full animate-spin mx-auto"
				aria-hidden="true"
			></div>
			{#if label}
				<p class="mt-4 {textSizesChirho[size]} text-slate-600">{label}</p>
			{/if}
		</div>
		<span class="sr-only">{label}</span>
	</div>
{:else}
	<div class="flex items-center justify-center gap-3" role="status" aria-live="polite">
		<div
			class="{sizesChirho[size]} border-amber-200 border-t-amber-500 rounded-full animate-spin"
			aria-hidden="true"
		></div>
		{#if label}
			<span class="{textSizesChirho[size]} text-slate-600">{label}</span>
		{/if}
		<span class="sr-only">{label}</span>
	</div>
{/if}
