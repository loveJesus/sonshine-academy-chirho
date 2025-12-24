<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();
</script>

<svelte:head>
	<title>Checkout - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[80vh] flex items-center justify-center py-12 px-4">
	<div class="max-w-md w-full text-center">
		{#if !data.stripeConfiguredChirho}
			<span class="text-5xl block mb-4">🔧</span>
			<h1 class="text-2xl font-bold text-slate-900 mb-4">Payment Coming Soon</h1>
			<p class="text-slate-600 mb-6">
				We're still setting up our payment system. In the meantime, you can enjoy
				full access to all courses and quests for free!
			</p>
			<div class="bg-amber-50 border border-amber-200 rounded-xl p-4 mb-6">
				<div class="font-semibold text-amber-800">Selected Plan</div>
				<div class="text-2xl font-bold text-amber-900">{data.tierChirho.name}</div>
				<div class="text-amber-700">${(data.tierChirho.price / 100).toFixed(2)}/month</div>
			</div>
			<a href="/dashboard-chirho" class="btn-primary inline-block no-underline">
				Go to Dashboard
			</a>
		{:else}
			<span class="text-5xl block mb-4 animate-spin">⏳</span>
			<h1 class="text-2xl font-bold text-slate-900 mb-4">Redirecting to Checkout...</h1>
			<p class="text-slate-600">
				You're being redirected to our secure payment page.
			</p>
		{/if}
	</div>
</div>
