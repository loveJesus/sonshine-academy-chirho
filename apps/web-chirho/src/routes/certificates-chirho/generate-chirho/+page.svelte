<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let isGeneratingChirho = $state(false);
	// Initialize from props, but allow user editing
	const initialNameChirho = data.userChirho?.displayName || data.userChirho?.username || '';
	let recipientNameChirho = $state(initialNameChirho);

	function handleSubmitChirho() {
		isGeneratingChirho = true;
		return async function ({ update }) {
			await update();
			isGeneratingChirho = false;
		};
	}
</script>

<svelte:head>
	<title>Generate Certificate - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-screen bg-slate-50 py-12">
	<div class="max-w-xl mx-auto px-4">
		<!-- Header -->
		<div class="text-center mb-8">
			<a href="/certificates-chirho" class="text-slate-600 hover:text-slate-900 text-sm no-underline">
				← Back to Certificates
			</a>
			<h1 class="text-2xl font-bold text-slate-900 mt-4">Generate Your Certificate</h1>
		</div>

		{#if data.errorChirho}
			<!-- Error State -->
			<div class="bg-white rounded-xl shadow-lg p-8 text-center">
				<div class="text-4xl mb-4">😔</div>
				<h2 class="text-xl font-bold text-slate-900 mb-2">Unable to Generate Certificate</h2>
				<p class="text-slate-600 mb-6">{data.errorChirho}</p>
				<a
					href="/certificates-chirho"
					class="inline-block bg-slate-900 hover:bg-slate-800 text-white font-medium px-6 py-3 rounded-lg transition-colors no-underline"
				>
					Back to Certificates
				</a>
			</div>
		{:else if data.enrollmentChirho}
			<!-- Generate Form -->
			<div class="bg-white rounded-xl shadow-lg overflow-hidden">
				<!-- Course Info -->
				<div class="bg-gradient-to-br from-amber-50 to-orange-50 p-6 text-center border-b border-amber-100">
					<span class="text-5xl" aria-hidden="true">{data.enrollmentChirho.icon_chirho || '📚'}</span>
					<h2 class="text-xl font-bold text-slate-900 mt-3">{data.enrollmentChirho.title_chirho}</h2>
					{#if data.enrollmentChirho.level_chirho}
						<p class="text-sm text-amber-700 mt-1">{data.enrollmentChirho.level_chirho} Level</p>
					{/if}
					<div class="mt-4 inline-flex items-center gap-2 bg-green-100 text-green-800 px-3 py-1 rounded-full text-sm">
						<svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
							<path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
						</svg>
						Course Completed
					</div>
				</div>

				<!-- Stats -->
				{#if data.questStatsChirho}
					<div class="grid grid-cols-2 gap-4 p-4 bg-slate-50 border-b border-slate-100">
						<div class="text-center">
							<span class="block text-2xl font-bold text-amber-600">
								{data.questStatsChirho.completedQuests || 0}
							</span>
							<span class="text-sm text-slate-600">Quests Completed</span>
						</div>
						<div class="text-center">
							<span class="block text-2xl font-bold text-amber-600">
								{data.questStatsChirho.totalCoins || 0}
							</span>
							<span class="text-sm text-slate-600">Quest Coins Earned</span>
						</div>
					</div>
				{/if}

				<!-- Form -->
				<form method="POST" use:enhance={handleSubmitChirho} class="p-6">
					<input type="hidden" name="courseId" value={data.enrollmentChirho.course_id_chirho} />

					{#if form?.errorChirho}
						<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
							{form.errorChirho}
						</div>
					{/if}

					<div class="mb-6">
						<label for="recipientName" class="block text-sm font-medium text-slate-700 mb-2">
							Name on Certificate
						</label>
						<input
							type="text"
							id="recipientName"
							name="recipientName"
							bind:value={recipientNameChirho}
							required
							minlength="2"
							maxlength="100"
							placeholder="Enter your full name"
							class="w-full px-4 py-3 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-amber-500 text-lg"
						/>
						<p class="text-sm text-slate-500 mt-1">
							This name will appear on your certificate exactly as typed.
						</p>
					</div>

					<!-- Preview -->
					<div class="mb-6 p-4 bg-slate-50 rounded-lg border border-slate-200">
						<p class="text-sm text-slate-600 mb-2">Certificate Preview:</p>
						<p class="text-center">
							<span class="text-slate-600">This certifies that</span>
							<br />
							<strong class="text-lg text-slate-900">{recipientNameChirho || 'Your Name'}</strong>
							<br />
							<span class="text-slate-600">has completed</span>
							<br />
							<strong class="text-slate-900">{data.enrollmentChirho.title_chirho}</strong>
						</p>
					</div>

					<button
						type="submit"
						disabled={isGeneratingChirho || !recipientNameChirho.trim()}
						class="w-full bg-amber-500 hover:bg-amber-600 disabled:bg-slate-300 disabled:cursor-not-allowed text-white font-bold py-3 rounded-lg transition-colors flex items-center justify-center gap-2"
					>
						{#if isGeneratingChirho}
							<svg class="animate-spin w-5 h-5" viewBox="0 0 24 24">
								<circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none" />
								<path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
							</svg>
							Generating Certificate...
						{:else}
							<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
							</svg>
							Generate My Certificate
						{/if}
					</button>
				</form>
			</div>

			<!-- Info -->
			<div class="mt-6 text-center text-sm text-slate-500">
				<p>Your certificate will include a unique verification code that can be validated by employers or schools.</p>
			</div>
		{/if}
	</div>
</div>
