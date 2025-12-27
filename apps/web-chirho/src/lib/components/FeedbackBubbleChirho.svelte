<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { page } from '$app/state';
	import { enhance } from '$app/forms';

	let isOpenChirho = $state(false);
	let feedbackTypeChirho = $state('suggestion');
	let feedbackTextChirho = $state('');
	let isSubmittingChirho = $state(false);
	let showSuccessChirho = $state(false);

	const currentUrlChirho = $derived(page.url.pathname);

	const feedbackTypesChirho = [
		{ value: 'bug', label: 'Bug Report', icon: '🐛', color: 'red' as const },
		{ value: 'suggestion', label: 'Suggestion', icon: '💡', color: 'amber' as const },
		{ value: 'question', label: 'Question', icon: '❓', color: 'blue' as const },
		{ value: 'praise', label: 'Praise', icon: '🙏', color: 'green' as const }
	];

	function toggleBubbleChirho() {
		isOpenChirho = !isOpenChirho;
		if (!isOpenChirho) {
			feedbackTextChirho = '';
			showSuccessChirho = false;
		}
	}

	function handleSubmitChirho() {
		return async function (eventChirho: { update: () => Promise<void>; result: { type: string } }) {
			isSubmittingChirho = true;
			await eventChirho.update();
			isSubmittingChirho = false;

			if (eventChirho.result.type === 'success') {
				showSuccessChirho = true;
				feedbackTextChirho = '';
				setTimeout(function () {
					isOpenChirho = false;
					showSuccessChirho = false;
				}, 2000);
			}
		};
	}

	function getTypeColorChirho(colorChirho: 'red' | 'amber' | 'blue' | 'green'): string {
		const colorsChirho = {
			red: 'bg-red-100 text-red-700 border-red-200',
			amber: 'bg-amber-100 text-amber-700 border-amber-200',
			blue: 'bg-blue-100 text-blue-700 border-blue-200',
			green: 'bg-green-100 text-green-700 border-green-200'
		};
		return colorsChirho[colorChirho] || colorsChirho.blue;
	}

	function selectTypeChirho(value: string) {
		feedbackTypeChirho = value;
	}
</script>

<!-- Floating Feedback Button -->
<div class="fixed bottom-6 right-6 z-50">
	{#if isOpenChirho}
		<!-- Feedback Panel -->
		<div class="bg-white rounded-2xl shadow-2xl w-80 mb-4 overflow-hidden border border-slate-200 animate-in slide-in-from-bottom-4">
			<!-- Header -->
			<div class="bg-gradient-to-r from-amber-500 to-orange-500 text-white px-4 py-3 flex items-center justify-between">
				<div class="flex items-center gap-2">
					<span class="text-lg">💬</span>
					<span class="font-semibold">Send Feedback</span>
				</div>
				<button
					type="button"
					onclick={toggleBubbleChirho}
					class="text-white/80 hover:text-white transition"
					aria-label="Close feedback panel"
				>
					<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
					</svg>
				</button>
			</div>

			{#if showSuccessChirho}
				<!-- Success Message -->
				<div class="p-6 text-center">
					<div class="text-4xl mb-3">✅</div>
					<h3 class="font-semibold text-slate-900 mb-1">Thank you!</h3>
					<p class="text-sm text-slate-600">Your feedback has been submitted.</p>
				</div>
			{:else}
				<!-- Feedback Form -->
				<form method="POST" action="/api/feedback-chirho" use:enhance={handleSubmitChirho} class="p-4 space-y-4">
					<input type="hidden" name="pageUrlChirho" value={currentUrlChirho} />
					<input type="hidden" name="userAgentChirho" value={typeof navigator !== 'undefined' ? navigator.userAgent : ''} />

					<!-- Feedback Type Selection -->
					<fieldset class="border-0 p-0 m-0">
						<legend class="block text-sm font-medium text-slate-700 mb-2">What type of feedback?</legend>
						<div class="grid grid-cols-2 gap-2" role="radiogroup" aria-label="Feedback type">
							{#each feedbackTypesChirho as typeChirho}
								<button
									type="button"
									onclick={() => selectTypeChirho(typeChirho.value)}
									role="radio"
									aria-checked={feedbackTypeChirho === typeChirho.value}
									class="p-2 rounded-lg border-2 text-sm font-medium transition-all {feedbackTypeChirho === typeChirho.value ? getTypeColorChirho(typeChirho.color) + ' border-current' : 'bg-slate-50 text-slate-600 border-transparent hover:border-slate-200'}"
								>
									<span class="mr-1" aria-hidden="true">{typeChirho.icon}</span>
									{typeChirho.label}
								</button>
							{/each}
						</div>
						<input type="hidden" name="feedbackTypeChirho" value={feedbackTypeChirho} />
					</fieldset>

					<!-- Feedback Text -->
					<div>
						<label for="feedbackTextChirho" class="block text-sm font-medium text-slate-700 mb-2">
							{#if feedbackTypeChirho === 'bug'}
								Describe the bug
							{:else if feedbackTypeChirho === 'suggestion'}
								What's your idea?
							{:else if feedbackTypeChirho === 'question'}
								What would you like to know?
							{:else}
								What did you love?
							{/if}
						</label>
						<textarea
							id="feedbackTextChirho"
							name="feedbackTextChirho"
							bind:value={feedbackTextChirho}
							required
							rows="3"
							class="w-full text-sm rounded-lg border-slate-300 focus:border-amber-500 focus:ring-amber-500"
							placeholder={feedbackTypeChirho === 'bug' ? 'What happened? What did you expect?' : 'Share your thoughts...'}
						></textarea>
					</div>

					<!-- Context Info -->
					<div class="text-xs text-slate-500 bg-slate-50 rounded-lg p-2">
						<span class="font-medium">Page:</span> {currentUrlChirho}
					</div>

					<!-- Submit Button -->
					<button
						type="submit"
						disabled={isSubmittingChirho || !feedbackTextChirho.trim()}
						class="w-full py-2 px-4 bg-gradient-to-r from-amber-500 to-orange-500 text-white font-semibold rounded-lg hover:from-amber-600 hover:to-orange-600 disabled:opacity-50 disabled:cursor-not-allowed transition-all"
					>
						{#if isSubmittingChirho}
							<span class="flex items-center justify-center gap-2">
								<svg class="animate-spin h-4 w-4" fill="none" viewBox="0 0 24 24">
									<circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
									<path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
								</svg>
								Sending...
							</span>
						{:else}
							Send Feedback
						{/if}
					</button>
				</form>
			{/if}
		</div>
	{/if}

	<!-- Toggle Button -->
	<button
		type="button"
		onclick={toggleBubbleChirho}
		class="w-14 h-14 rounded-full bg-gradient-to-r from-amber-500 to-orange-500 text-white shadow-lg hover:shadow-xl hover:scale-105 transition-all flex items-center justify-center"
		aria-label={isOpenChirho ? 'Close feedback' : 'Send feedback'}
	>
		{#if isOpenChirho}
			<svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
			</svg>
		{:else}
			<svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
			</svg>
		{/if}
	</button>
</div>

<style>
	@keyframes slide-in-from-bottom-4 {
		from {
			opacity: 0;
			transform: translateY(1rem);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	.animate-in {
		animation: slide-in-from-bottom-4 0.2s ease-out;
	}
</style>
