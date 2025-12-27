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
	<title>My Certificates - Sonshine Christian Code Academy</title>
	<meta name="description" content="View and download your course completion certificates from Sonshine Christian Code Academy." />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Header -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-12">
		<div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
			<h1 class="text-3xl md:text-4xl font-bold mb-2">My Certificates</h1>
			<p class="text-slate-300">Your course completion achievements</p>
		</div>
	</header>

	<main class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
		<!-- Eligible for Certificate -->
		{#if data.completedCoursesChirho && data.completedCoursesChirho.length > 0}
			<section class="mb-12">
				<h2 class="text-xl font-bold text-slate-900 mb-4">Ready to Claim</h2>
				<p class="text-slate-600 mb-6">You've completed these courses! Generate your certificate to celebrate your achievement.</p>

				<div class="grid md:grid-cols-2 gap-6">
					{#each data.completedCoursesChirho as courseChirho}
						<div class="bg-white rounded-xl shadow-sm border border-green-200 p-6">
							<div class="flex items-start gap-4">
								<span class="text-4xl" aria-hidden="true">{courseChirho.icon_chirho || '📚'}</span>
								<div class="flex-1">
									<h3 class="font-bold text-slate-900">{courseChirho.title_chirho}</h3>
									<p class="text-sm text-slate-500 mt-1">
										Completed on {formatDateChirho(courseChirho.completed_at_chirho)}
									</p>
									<a
										href="/certificates-chirho/generate-chirho?course={courseChirho.course_id_chirho}"
										class="inline-flex items-center gap-2 mt-4 bg-green-600 hover:bg-green-700 text-white font-medium px-4 py-2 rounded-lg transition-colors no-underline"
									>
										<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
											<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
										</svg>
										Generate Certificate
									</a>
								</div>
							</div>
						</div>
					{/each}
				</div>
			</section>
		{/if}

		<!-- Existing Certificates -->
		<section>
			<h2 class="text-xl font-bold text-slate-900 mb-4">Your Certificates</h2>

			{#if data.certificatesChirho && data.certificatesChirho.length > 0}
				<div class="grid md:grid-cols-2 gap-6">
					{#each data.certificatesChirho as certChirho}
						<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
							<!-- Certificate Preview -->
							<div class="bg-gradient-to-br from-amber-50 to-orange-50 p-6 border-b border-amber-100">
								<div class="text-center">
									<div class="text-4xl mb-2" aria-hidden="true">{certChirho.courseIcon || '🎓'}</div>
									<h3 class="font-bold text-slate-900 text-lg">{certChirho.course_title_chirho}</h3>
									<p class="text-sm text-amber-700 mt-1">Certificate of Completion</p>
								</div>
							</div>

							<!-- Certificate Details -->
							<div class="p-4">
								<div class="flex items-center justify-between text-sm text-slate-600 mb-3">
									<span>Issued: {formatDateChirho(certChirho.issue_date_chirho)}</span>
									<span class="font-mono text-xs text-slate-400">#{certChirho.verification_code_chirho}</span>
								</div>

								<div class="flex gap-2">
									<a
										href="/certificates-chirho/{certChirho.certificate_id_chirho}"
										class="flex-1 text-center bg-slate-900 hover:bg-slate-800 text-white font-medium px-4 py-2 rounded-lg transition-colors no-underline text-sm"
									>
										View Certificate
									</a>
									<a
										href="/certificates-chirho/verify-chirho/{certChirho.verification_code_chirho}"
										class="flex items-center justify-center px-3 py-2 text-slate-600 hover:text-slate-900 border border-slate-200 rounded-lg transition-colors no-underline"
										title="Verification Link"
									>
										<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
											<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1" />
										</svg>
									</a>
								</div>
							</div>
						</div>
					{/each}
				</div>
			{:else if !data.completedCoursesChirho || data.completedCoursesChirho.length === 0}
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-12 text-center">
					<div class="text-6xl mb-4" aria-hidden="true">🎓</div>
					<h3 class="text-xl font-bold text-slate-900 mb-2">No Certificates Yet</h3>
					<p class="text-slate-600 mb-6 max-w-md mx-auto">
						Complete a course to earn your certificate of completion. Each certificate includes a unique verification code that you can share with employers or educators.
					</p>
					<a
						href="/courses-chirho"
						class="inline-flex items-center gap-2 bg-amber-500 hover:bg-amber-600 text-white font-medium px-6 py-3 rounded-lg transition-colors no-underline"
					>
						Browse Courses
						<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
						</svg>
					</a>
				</div>
			{:else}
				<div class="bg-slate-100 rounded-xl p-8 text-center">
					<p class="text-slate-600">
						You have courses ready to claim above! Generate your certificates to celebrate your achievements.
					</p>
				</div>
			{/if}
		</section>

		<!-- Info Section -->
		<section class="mt-12 bg-amber-50 border border-amber-200 rounded-xl p-6">
			<h3 class="font-bold text-amber-900 mb-2">About Your Certificates</h3>
			<ul class="text-sm text-amber-800 space-y-2">
				<li class="flex items-start gap-2">
					<span class="mt-1">✓</span>
					<span>Each certificate has a unique verification code that can be validated by employers or schools.</span>
				</li>
				<li class="flex items-start gap-2">
					<span class="mt-1">✓</span>
					<span>Certificates can be downloaded as PDF or shared via a public verification link.</span>
				</li>
				<li class="flex items-start gap-2">
					<span class="mt-1">✓</span>
					<span>Your achievements are permanently recorded and can be accessed anytime.</span>
				</li>
			</ul>
		</section>

		<!-- Scripture -->
		<div class="mt-12 text-center">
			<p class="text-slate-500 italic text-sm">
				"Study to shew thyself approved unto God, a workman that needeth not to be ashamed."
				<br />— 2 Timothy 2:15 (KJV)
			</p>
		</div>
	</main>
</div>
