<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { browser } from '$app/environment';

	let {
		usernameChirho = 'Friend',
		oncloseChirho = () => {}
	} = $props();

	let currentStepChirho = $state(0);
	let isVisibleChirho = $state(true);

	const stepsChirho = $derived([
		{
			icon: '☀️',
			title: 'Welcome to Sonshine!',
			description: `Greetings, ${usernameChirho}! We're so glad you're here. Sonshine Christian Code Academy is where you'll learn to code while growing in faith.`,
			verse: '"For I know the plans I have for you," declares the LORD, "plans to prosper you and not to harm you, plans to give you hope and a future." — Jeremiah 29:11'
		},
		{
			icon: '📚',
			title: 'Learn Through Courses',
			description: 'Start with our structured courses. Watch video lessons, read explanations, and practice what you learn. Each course builds on the previous one.',
			verse: '"Study to shew thyself approved unto God, a workman that needeth not to be ashamed." — 2 Timothy 2:15'
		},
		{
			icon: '⚔️',
			title: 'Complete Quests',
			description: 'Put your skills to the test with coding quests! Each quest is a programming challenge. Write code, run tests, and earn Quest Coins when you succeed.',
			verse: '"I can do all things through Christ which strengtheneth me." — Philippians 4:13'
		},
		{
			icon: '🪙',
			title: 'Earn Quest Coins',
			description: 'Complete quests to earn Quest Coins! These show your progress and dedication. Complete quests without viewing the solution for bonus coins.',
			verse: '"Whatever you do, work at it with all your heart, as working for the Lord." — Colossians 3:23'
		},
		{
			icon: '🚀',
			title: "You're Ready!",
			description: "That's all you need to know to get started! Begin with the courses, tackle some quests, and remember - every expert was once a beginner.",
			verse: '"Being confident of this very thing, that he which hath begun a good work in you will perform it until the day of Jesus Christ." — Philippians 1:6'
		}
	]);

	function nextStepChirho() {
		if (currentStepChirho < stepsChirho.length - 1) {
			currentStepChirho++;
		} else {
			closeModalChirho();
		}
	}

	function prevStepChirho() {
		if (currentStepChirho > 0) {
			currentStepChirho--;
		}
	}

	function closeModalChirho() {
		isVisibleChirho = false;
		// Mark as seen in localStorage
		if (browser) {
			localStorage.setItem('sonshine_onboarding_seen', 'true');
		}
		oncloseChirho();
	}

	function skipOnboardingChirho() {
		closeModalChirho();
	}

	// Check if user has seen onboarding
	$effect(() => {
		if (browser) {
			const seenChirho = localStorage.getItem('sonshine_onboarding_seen');
			if (seenChirho === 'true') {
				isVisibleChirho = false;
			}
		}
	});

	const currentChirho = $derived(stepsChirho[currentStepChirho]);
</script>

{#if isVisibleChirho}
	<!-- Backdrop -->
	<div
		class="fixed inset-0 bg-black/50 z-50 flex items-center justify-center p-4"
		role="dialog"
		aria-modal="true"
		aria-labelledby="welcome-title"
	>
		<!-- Modal -->
		<div class="bg-white rounded-2xl shadow-2xl max-w-lg w-full overflow-hidden">
			<!-- Progress bar -->
			<div class="h-1 bg-slate-200">
				<div
					class="h-full bg-gradient-to-r from-amber-400 to-amber-600 transition-all duration-300"
					style="width: {((currentStepChirho + 1) / stepsChirho.length) * 100}%"
				></div>
			</div>

			<!-- Content -->
			<div class="p-8 text-center">
				<!-- Icon -->
				<div class="text-6xl mb-4" aria-hidden="true">
					{currentChirho.icon}
				</div>

				<!-- Title -->
				<h2 id="welcome-title" class="text-2xl font-bold text-slate-900 mb-4">
					{currentChirho.title}
				</h2>

				<!-- Description -->
				<p class="text-slate-600 mb-6">
					{currentChirho.description}
				</p>

				<!-- Verse -->
				<p class="text-sm text-amber-700 italic bg-amber-50 rounded-lg p-3 mb-6">
					{currentChirho.verse}
				</p>

				<!-- Step indicator -->
				<div class="flex justify-center gap-2 mb-6" aria-label="Step {currentStepChirho + 1} of {stepsChirho.length}">
					{#each stepsChirho as _, iChirho}
						<button
							class="w-2 h-2 rounded-full transition-colors {iChirho === currentStepChirho ? 'bg-amber-500' : 'bg-slate-300'}"
							onclick={() => { currentStepChirho = iChirho; }}
							aria-label="Go to step {iChirho + 1}"
						></button>
					{/each}
				</div>

				<!-- Navigation buttons -->
				<div class="flex gap-3 justify-center">
					{#if currentStepChirho > 0}
						<button
							onclick={prevStepChirho}
							class="px-6 py-2 text-slate-600 hover:text-slate-900 transition-colors"
						>
							← Back
						</button>
					{:else}
						<button
							onclick={skipOnboardingChirho}
							class="px-6 py-2 text-slate-400 hover:text-slate-600 text-sm transition-colors"
						>
							Skip
						</button>
					{/if}

					<button
						onclick={nextStepChirho}
						class="px-8 py-2 bg-gradient-to-r from-amber-500 to-amber-600 hover:from-amber-600 hover:to-amber-700 text-white font-semibold rounded-lg transition-all shadow-lg shadow-amber-500/30"
					>
						{currentStepChirho === stepsChirho.length - 1 ? "Let's Go! 🎉" : 'Next →'}
					</button>
				</div>
			</div>
		</div>
	</div>
{/if}
