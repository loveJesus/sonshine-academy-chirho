<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();

	function formatDateChirho(dateChirho) {
		if (!dateChirho) return '';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'long',
			day: 'numeric'
		});
	}
</script>

<svelte:head>
	{#if data.certificateChirho}
		<title>Verified Certificate - {data.certificateChirho.recipient_name_chirho} - Sonshine Christian Code Academy</title>
		<meta name="description" content="Verified certificate for {data.certificateChirho.recipient_name_chirho} who completed {data.certificateChirho.course_title_chirho}" />
	{:else}
		<title>Certificate Verification - Sonshine Christian Code Academy</title>
	{/if}
</svelte:head>

<div class="min-h-screen bg-slate-50 py-12">
	<div class="max-w-2xl mx-auto px-4">
		<!-- Header -->
		<div class="text-center mb-8">
			<div class="text-5xl mb-4">☀️</div>
			<h1 class="text-2xl font-bold text-slate-900">Certificate Verification</h1>
			<p class="text-slate-600 mt-2">Sonshine Christian Code Academy</p>
		</div>

		{#if data.errorChirho}
			<!-- Error State -->
			<div class="bg-white rounded-xl shadow-lg p-8 text-center">
				<div class="w-20 h-20 mx-auto mb-6 rounded-full bg-red-100 flex items-center justify-center">
					<svg class="w-10 h-10 text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
					</svg>
				</div>
				<h2 class="text-xl font-bold text-slate-900 mb-2">Certificate Not Found</h2>
				<p class="text-slate-600 mb-6">
					The verification code you provided could not be matched to any certificate in our system.
					Please check the code and try again.
				</p>
				<a
					href="/"
					class="inline-block bg-slate-900 hover:bg-slate-800 text-white font-medium px-6 py-3 rounded-lg transition-colors no-underline"
				>
					Return to Homepage
				</a>
			</div>
		{:else if data.certificateChirho}
			<!-- Valid Certificate -->
			<div class="bg-white rounded-xl shadow-lg overflow-hidden">
				<!-- Success Header -->
				<div class="bg-gradient-to-r from-green-500 to-emerald-500 text-white p-6 text-center">
					<div class="w-16 h-16 mx-auto mb-4 rounded-full bg-white/20 flex items-center justify-center">
						<svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
						</svg>
					</div>
					<h2 class="text-xl font-bold">Certificate Verified</h2>
					<p class="text-green-100 mt-1">This is an authentic certificate</p>
				</div>

				<!-- Certificate Details -->
				<div class="p-6">
					<div class="text-center mb-6">
						<span class="text-5xl" aria-hidden="true">{data.certificateChirho.courseIcon || '📚'}</span>
					</div>

					<div class="space-y-4">
						<div class="border-b border-slate-100 pb-4">
							<p class="text-sm text-slate-500 mb-1">Recipient</p>
							<p class="text-xl font-bold text-slate-900">{data.certificateChirho.recipient_name_chirho}</p>
						</div>

						<div class="border-b border-slate-100 pb-4">
							<p class="text-sm text-slate-500 mb-1">Course Completed</p>
							<p class="text-lg font-semibold text-slate-900">{data.certificateChirho.course_title_chirho}</p>
							{#if data.certificateChirho.courseLevel}
								<p class="text-sm text-slate-600">{data.certificateChirho.courseLevel} Level</p>
							{/if}
						</div>

						<div class="border-b border-slate-100 pb-4">
							<p class="text-sm text-slate-500 mb-1">Issue Date</p>
							<p class="text-slate-900">{formatDateChirho(data.certificateChirho.issue_date_chirho)}</p>
						</div>

						{#if data.certificateChirho.quests_completed_chirho > 0}
							<div class="grid grid-cols-2 gap-4 pb-4">
								<div class="bg-amber-50 rounded-lg p-4 text-center">
									<span class="block text-2xl font-bold text-amber-600">{data.certificateChirho.quests_completed_chirho}</span>
									<span class="text-sm text-amber-800">Quests Completed</span>
								</div>
								<div class="bg-amber-50 rounded-lg p-4 text-center">
									<span class="block text-2xl font-bold text-amber-600">{data.certificateChirho.coins_earned_chirho || 0}</span>
									<span class="text-sm text-amber-800">Quest Coins</span>
								</div>
							</div>
						{/if}

						<div class="pt-2">
							<p class="text-sm text-slate-500 mb-1">Verification Code</p>
							<p class="font-mono text-slate-700 bg-slate-100 px-3 py-2 rounded">
								{data.certificateChirho.verification_code_chirho}
							</p>
						</div>
					</div>
				</div>

				<!-- Footer -->
				<div class="bg-slate-50 p-4 text-center border-t border-slate-100">
					<p class="text-sm text-slate-600">
						This certificate was issued by Sonshine Christian Code Academy
					</p>
					<a
						href="/"
						class="text-amber-600 hover:text-amber-700 text-sm font-medium no-underline"
					>
						Learn more about our courses →
					</a>
				</div>
			</div>
		{/if}

		<!-- Manual Verification Form -->
		<div class="mt-8 bg-white rounded-xl shadow-sm p-6">
			<h3 class="font-semibold text-slate-900 mb-4">Verify Another Certificate</h3>
			<form action="/certificates-chirho/verify-chirho" method="GET" class="flex gap-2">
				<input
					type="text"
					name="code"
					placeholder="Enter verification code"
					class="flex-1 px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-amber-500"
					required
				/>
				<button
					type="submit"
					class="bg-amber-500 hover:bg-amber-600 text-white font-medium px-6 py-2 rounded-lg transition-colors"
				>
					Verify
				</button>
			</form>
		</div>
	</div>
</div>
