<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { page } from '$app/state';

	interface ErrorInfoChirho {
		title: string;
		description: string;
		icon: string;
		suggestion: string;
	}

	const statusChirho = $derived(page.status);
	const messageChirho = $derived(page.error?.message || 'Something went wrong');

	function getErrorInfoChirho(status: number): ErrorInfoChirho {
		switch (status) {
			case 404:
				return {
					title: 'Page Not Found',
					description: "The page you're looking for doesn't exist or has been moved.",
					icon: '🔍',
					suggestion: 'Try checking the URL or head back to explore our courses.'
				};
			case 403:
				return {
					title: 'Access Denied',
					description: "You don't have permission to view this page.",
					icon: '🔒',
					suggestion: 'Please sign in or contact us if you believe this is an error.'
				};
			case 500:
				return {
					title: 'Server Error',
					description: 'Something went wrong on our end.',
					icon: '⚠️',
					suggestion: "We're working on it! Please try again in a moment."
				};
			default:
				return {
					title: 'Oops!',
					description: messageChirho,
					icon: '😕',
					suggestion: "Something unexpected happened. Let's get you back on track."
				};
		}
	}

	const errorInfoChirho = $derived(getErrorInfoChirho(statusChirho));
</script>

<svelte:head>
	<title>{errorInfoChirho.title} - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[70vh] flex items-center justify-center px-4 py-16">
	<div class="text-center max-w-lg">
		<!-- Error Icon -->
		<div class="text-8xl mb-6">{errorInfoChirho.icon}</div>

		<!-- Error Code -->
		<div class="text-6xl font-bold text-amber-500 mb-4">{statusChirho}</div>

		<!-- Error Title -->
		<h1 class="text-3xl font-bold text-slate-900 mb-4">{errorInfoChirho.title}</h1>

		<!-- Error Description -->
		<p class="text-lg text-slate-600 mb-6">{errorInfoChirho.description}</p>

		<!-- Suggestion -->
		<p class="text-slate-500 mb-8">{errorInfoChirho.suggestion}</p>

		<!-- Action Buttons -->
		<div class="flex flex-col sm:flex-row gap-4 justify-center">
			<a
				href="/"
				class="inline-flex items-center justify-center gap-2 bg-amber-500 text-white font-semibold px-6 py-3 rounded-lg hover:bg-amber-600 transition-colors no-underline"
			>
				<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
				</svg>
				Go Home
			</a>
			<a
				href="/courses-chirho"
				class="inline-flex items-center justify-center gap-2 border-2 border-slate-300 text-slate-700 font-semibold px-6 py-3 rounded-lg hover:border-slate-400 hover:bg-slate-50 transition-colors no-underline"
			>
				<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
				</svg>
				Browse Courses
			</a>
		</div>

		<!-- Scripture Quote -->
		<div class="mt-12 p-6 bg-amber-50 rounded-xl border border-amber-100">
			<p class="text-amber-800 italic">
				"Trust in the LORD with all thine heart; and lean not unto thine own understanding."
			</p>
			<p class="text-amber-600 text-sm mt-2">— Proverbs 3:5 (KJV)</p>
		</div>

		<!-- Help Link -->
		<p class="mt-8 text-sm text-slate-500">
			Need help? <a href="/help-chirho" class="text-amber-600 hover:text-amber-700">Visit our Help Center</a>
			or <a href="https://discord.gg/sonshinecoders" target="_blank" rel="noopener noreferrer" class="text-amber-600 hover:text-amber-700">join our Discord</a>.
		</p>
	</div>
</div>
