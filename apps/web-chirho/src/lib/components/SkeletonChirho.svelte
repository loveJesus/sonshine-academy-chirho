<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	type VariantType = 'text' | 'title' | 'avatar' | 'card' | 'button' | 'image' | 'custom';
	type WidthType = 'full' | '3/4' | '2/3' | '1/2' | '1/3' | '1/4' | 'auto';

	let {
		variant = 'text' as VariantType,
		width = 'full' as WidthType,
		height = 'auto',
		lines = 1,
		className = ''
	} = $props();

	const variantClassesChirho = {
		text: 'h-4 rounded',
		title: 'h-6 rounded',
		avatar: 'w-12 h-12 rounded-full',
		card: 'h-32 rounded-xl',
		button: 'h-10 w-24 rounded-lg',
		image: 'h-48 rounded-lg',
		custom: ''
	};

	const widthClassesChirho = {
		full: 'w-full',
		'3/4': 'w-3/4',
		'2/3': 'w-2/3',
		'1/2': 'w-1/2',
		'1/3': 'w-1/3',
		'1/4': 'w-1/4',
		auto: ''
	};

	const baseClassChirho = 'bg-slate-200 animate-pulse';
</script>

{#if lines > 1}
	<div class="space-y-2 {className}">
		{#each Array(lines) as _, i}
			<div
				class="{baseClassChirho} {variantClassesChirho[variant]} {i === lines - 1 ? widthClassesChirho['2/3'] : widthClassesChirho[width]}"
				style={height !== 'auto' ? `height: ${height}` : ''}
			></div>
		{/each}
	</div>
{:else}
	<div
		class="{baseClassChirho} {variantClassesChirho[variant]} {widthClassesChirho[width]} {className}"
		style={height !== 'auto' ? `height: ${height}` : ''}
	></div>
{/if}
