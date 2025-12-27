<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { browser } from '$app/environment';

	let { data } = $props();

	function formatDateChirho(dateChirho) {
		if (!dateChirho) return '';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'long',
			day: 'numeric'
		});
	}

	function printCertificateChirho() {
		if (browser) {
			window.print();
		}
	}

	function shareCertificateChirho() {
		if (browser && navigator.share) {
			navigator.share({
				title: `Certificate - ${data.certificateChirho.course_title_chirho}`,
				text: `I earned a certificate in ${data.certificateChirho.course_title_chirho} from Sonshine Christian Code Academy!`,
				url: window.location.href
			});
		} else if (browser) {
			navigator.clipboard.writeText(window.location.href);
			alert('Link copied to clipboard!');
		}
	}

	const verifyUrlChirho = $derived(`/certificates-chirho/verify-chirho/${data.certificateChirho.verification_code_chirho}`);
</script>

<svelte:head>
	<title>Certificate - {data.certificateChirho.course_title_chirho} - Sonshine Christian Code Academy</title>
	<meta name="description" content="Certificate of Completion for {data.certificateChirho.recipient_name_chirho} in {data.certificateChirho.course_title_chirho}" />
	<style>
		@media print {
			body * {
				visibility: hidden;
			}
			#certificate-chirho, #certificate-chirho * {
				visibility: visible;
			}
			#certificate-chirho {
				position: absolute;
				left: 0;
				top: 0;
				width: 100%;
			}
			.no-print {
				display: none !important;
			}
		}
	</style>
</svelte:head>

<div class="min-h-screen bg-slate-100">
	<!-- Controls (hidden when printing) -->
	<div class="no-print bg-white border-b border-slate-200 py-4">
		<div class="max-w-4xl mx-auto px-4 flex items-center justify-between">
			<a href="/certificates-chirho" class="text-slate-600 hover:text-slate-900 flex items-center gap-2 no-underline">
				<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
				</svg>
				Back to Certificates
			</a>
			<div class="flex items-center gap-3">
				<button
					onclick={shareCertificateChirho}
					class="flex items-center gap-2 px-4 py-2 text-slate-700 hover:text-slate-900 border border-slate-300 rounded-lg transition-colors"
				>
					<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.368 2.684 3 3 0 00-5.368-2.684z" />
					</svg>
					Share
				</button>
				<button
					onclick={printCertificateChirho}
					class="flex items-center gap-2 px-4 py-2 bg-slate-900 hover:bg-slate-800 text-white rounded-lg transition-colors"
				>
					<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 17h2a2 2 0 002-2v-4a2 2 0 00-2-2H5a2 2 0 00-2 2v4a2 2 0 002 2h2m2 4h6a2 2 0 002-2v-4a2 2 0 00-2-2H9a2 2 0 00-2 2v4a2 2 0 002 2zm8-12V5a2 2 0 00-2-2H9a2 2 0 00-2 2v4h10z" />
					</svg>
					Print / Download PDF
				</button>
			</div>
		</div>
	</div>

	<!-- Certificate -->
	<div class="max-w-4xl mx-auto px-4 py-8">
		<div id="certificate-chirho" class="bg-white rounded-xl shadow-lg overflow-hidden">
			<!-- Decorative Border -->
			<div class="border-8 border-double border-amber-200 m-4 rounded-lg">
				<div class="p-8 md:p-12 text-center">
					<!-- Header Decoration -->
					<div class="flex justify-center mb-6">
						<div class="w-24 h-1 bg-gradient-to-r from-transparent via-amber-400 to-transparent"></div>
					</div>

					<!-- Logo/Icon -->
					<div class="text-6xl mb-4" aria-hidden="true">☀️</div>

					<!-- Academy Name -->
					<h1 class="text-2xl md:text-3xl font-serif text-slate-800 mb-2">
						Sonshine Christian Code Academy
					</h1>

					<!-- Certificate Title -->
					<div class="my-8">
						<h2 class="text-xl text-amber-700 uppercase tracking-widest mb-4">Certificate of Completion</h2>
						<div class="w-32 h-0.5 bg-amber-400 mx-auto"></div>
					</div>

					<!-- Presentation Text -->
					<p class="text-slate-600 mb-4">This is to certify that</p>

					<!-- Recipient Name -->
					<h3 class="text-3xl md:text-4xl font-serif font-bold text-slate-900 mb-4 border-b-2 border-amber-300 inline-block pb-2 px-8">
						{data.certificateChirho.recipient_name_chirho}
					</h3>

					<!-- Course Completion Text -->
					<p class="text-slate-600 mb-2">has successfully completed the course</p>

					<!-- Course Title -->
					<div class="my-6">
						<span class="text-4xl" aria-hidden="true">{data.certificateChirho.courseIcon || '📚'}</span>
						<h4 class="text-2xl md:text-3xl font-bold text-slate-900 mt-2">
							{data.certificateChirho.course_title_chirho}
						</h4>
						{#if data.certificateChirho.courseLevel}
							<p class="text-sm text-slate-500 mt-1">{data.certificateChirho.courseLevel} Level</p>
						{/if}
					</div>

					<!-- Stats -->
					{#if data.certificateChirho.quests_completed_chirho > 0}
						<div class="flex justify-center gap-8 my-6 text-slate-600">
							<div>
								<span class="block text-2xl font-bold text-amber-600">{data.certificateChirho.quests_completed_chirho}</span>
								<span class="text-sm">Quests Completed</span>
							</div>
							<div>
								<span class="block text-2xl font-bold text-amber-600">{data.certificateChirho.coins_earned_chirho || 0}</span>
								<span class="text-sm">Quest Coins Earned</span>
							</div>
						</div>
					{/if}

					<!-- Date -->
					<p class="text-slate-600 mt-8 mb-4">
						Awarded on <strong>{formatDateChirho(data.certificateChirho.issue_date_chirho)}</strong>
					</p>

					<!-- Scripture -->
					<div class="my-8 max-w-md mx-auto">
						<p class="text-sm italic text-amber-700">
							"Study to shew thyself approved unto God, a workman that needeth not to be ashamed, rightly dividing the word of truth."
						</p>
						<p class="text-xs text-amber-600 mt-1">— 2 Timothy 2:15 (KJV)</p>
					</div>

					<!-- Verification -->
					<div class="mt-8 pt-6 border-t border-slate-200">
						<p class="text-xs text-slate-400 mb-1">Verification Code</p>
						<p class="font-mono text-sm text-slate-600">{data.certificateChirho.verification_code_chirho}</p>
						<p class="text-xs text-slate-400 mt-2">
							Verify at: sonshinecodingschool.org{verifyUrlChirho}
						</p>
					</div>

					<!-- Footer Decoration -->
					<div class="flex justify-center mt-6">
						<div class="w-24 h-1 bg-gradient-to-r from-transparent via-amber-400 to-transparent"></div>
					</div>
				</div>
			</div>
		</div>

		<!-- Verification Link (hidden when printing) -->
		<div class="no-print mt-6 text-center">
			<p class="text-slate-600 mb-2">Share verification link:</p>
			<div class="bg-slate-100 rounded-lg p-3 flex items-center justify-center gap-2">
				<code class="text-sm text-slate-700">{verifyUrlChirho}</code>
				<button
					onclick={() => { navigator.clipboard.writeText(window.location.origin + verifyUrlChirho); alert('Copied!'); }}
					class="text-amber-600 hover:text-amber-700"
					title="Copy link"
				>
					<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
					</svg>
				</button>
			</div>
		</div>
	</div>
</div>
