<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	// This page exists only to handle form submissions from the feedback bubble.
	// It should never be directly navigated to.
	import { goto } from '$app/navigation';
	import { onMount } from 'svelte';

	onMount(() => {
		// Redirect to home if someone navigates here directly
		goto('/');
	});
</script>

<div class="min-h-screen flex items-center justify-center">
	<p class="text-slate-500">Redirecting...</p>
</div>
