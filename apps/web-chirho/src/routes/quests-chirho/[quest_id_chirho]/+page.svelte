<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { invalidateAll } from '$app/navigation';
	import MarkdownTextChirho from '$lib/components/MarkdownTextChirho.svelte';
	import CodeEditorChirho from '$lib/components/CodeEditorChirho.svelte';

	let { data } = $props();

	// Track current quest to reset state when navigating between quests
	let currentQuestIdChirho = $state('');
	let codeChirho = $state('');
	let isRunningChirho = $state(false);
	let testResultsChirho = $state([]);
	let showSolutionChirho = $state(false);
	let viewedSolutionChirho = $state(false);
	let allTestsPassedChirho = $state(false);
	let errorMessageChirho = $state('');
	let submissionResultChirho = $state(null);
	let isSubmittingChirho = $state(false);

	// Reset state when quest changes (handles navigation)
	$effect(() => {
		if (data.questChirho.questId !== currentQuestIdChirho) {
			currentQuestIdChirho = data.questChirho.questId;
			codeChirho = data.questChirho.starterCode || '';
			testResultsChirho = [];
			showSolutionChirho = false;
			viewedSolutionChirho = false;
			allTestsPassedChirho = false;
			errorMessageChirho = '';
			submissionResultChirho = null;
			isSubmittingChirho = false;
		}
	});

	function getDifficultyColorChirho(difficulty) {
		switch (difficulty) {
			case 'beginner':
				return 'bg-green-100 text-green-800';
			case 'intermediate':
				return 'bg-yellow-100 text-yellow-800';
			case 'advanced':
				return 'bg-red-100 text-red-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}

	function resetCodeChirho() {
		codeChirho = data.questChirho.starterCode || '';
		testResultsChirho = [];
		errorMessageChirho = '';
		allTestsPassedChirho = false;
	}

	async function toggleSolutionChirho() {
		showSolutionChirho = !showSolutionChirho;
		if (showSolutionChirho && !viewedSolutionChirho) {
			viewedSolutionChirho = true;
			// Record solution view on server
			try {
				await fetch('/api/quest-submit-chirho', {
					method: 'PUT',
					headers: { 'Content-Type': 'application/json' },
					body: JSON.stringify({ questId: data.questChirho.questId })
				});
			} catch (errChirho) {
				console.error('Failed to record solution view:', errChirho);
			}
		}
	}

	async function runTestsChirho() {
		isRunningChirho = true;
		errorMessageChirho = '';
		testResultsChirho = [];

		try {
			// Create a sandboxed environment for running tests
			const resultsChirho = [];
			let allPassedChirho = true;

			// Execute user code first
			let userFunctionChirho;
			try {
				// Create a function from the user's code
				const wrappedCodeChirho = `
					${codeChirho}
					return { ${extractFunctionNamesChirho(codeChirho).join(', ')} };
				`;
				userFunctionChirho = new Function(wrappedCodeChirho)();
			} catch (syntaxErrorChirho) {
				errorMessageChirho = `Syntax Error: ${syntaxErrorChirho.message}`;
				isRunningChirho = false;
				return;
			}

			// Run each test
			for (const testChirho of data.testsChirho) {
				try {
					// Create a simple assert object
					const assertChirho = {
						strictEqual: function(actual, expected) {
							if (actual !== expected) {
								throw new Error(`Expected ${JSON.stringify(expected)} but got ${JSON.stringify(actual)}`);
							}
						},
						deepStrictEqual: function(actual, expected) {
							if (JSON.stringify(actual) !== JSON.stringify(expected)) {
								throw new Error(`Expected ${JSON.stringify(expected)} but got ${JSON.stringify(actual)}`);
							}
						},
						ok: function(value, message) {
							if (!value) {
								throw new Error(message || 'Assertion failed');
							}
						},
						throws: function(fn, expectedError) {
							let threwChirho = false;
							try {
								fn();
							} catch (e) {
								threwChirho = true;
							}
							if (!threwChirho) {
								throw new Error('Expected function to throw');
							}
						}
					};

					// Inject user functions into test scope
					const testFnChirho = new Function(
						'assert',
						...Object.keys(userFunctionChirho),
						testChirho.testCode
					);

					// Handle async tests
					const resultChirho = testFnChirho(assertChirho, ...Object.values(userFunctionChirho));

					if (resultChirho instanceof Promise) {
						await resultChirho;
					}

					resultsChirho.push({
						testId: testChirho.testId,
						testName: testChirho.testName,
						passed: true,
						isVisible: testChirho.isVisible,
						error: null
					});
				} catch (testErrorChirho) {
					allPassedChirho = false;
					resultsChirho.push({
						testId: testChirho.testId,
						testName: testChirho.testName,
						passed: false,
						isVisible: testChirho.isVisible,
						error: testErrorChirho.message
					});
				}
			}

			testResultsChirho = resultsChirho;
			allTestsPassedChirho = allPassedChirho;

			if (allPassedChirho) {
				// Submit completion to server and award coins
				isSubmittingChirho = true;
				try {
					const responseChirho = await fetch('/api/quest-submit-chirho', {
						method: 'POST',
						headers: { 'Content-Type': 'application/json' },
						body: JSON.stringify({
							questId: data.questChirho.questId,
							submittedCode: codeChirho,
							testResults: resultsChirho.map(function(r) { return { testId: r.testId, passed: r.passed }; }),
							viewedSolution: viewedSolutionChirho
						})
					});
					const resultDataChirho = await responseChirho.json();
					if (responseChirho.ok) {
						submissionResultChirho = resultDataChirho;
						// Refresh layout data to update coin balance in header
						if (!resultDataChirho.alreadyCompleted) {
							invalidateAll();
						}
					} else {
						console.error('Submission error:', resultDataChirho.error);
					}
				} catch (submitErrChirho) {
					console.error('Failed to submit quest:', submitErrChirho);
				}
				isSubmittingChirho = false;
			}
		} catch (globalErrorChirho) {
			errorMessageChirho = `Error: ${globalErrorChirho.message}`;
		}

		isRunningChirho = false;
	}

	function extractFunctionNamesChirho(codeChirho) {
		// Simple regex to find function names
		const matchesChirho = codeChirho.matchAll(/function\s+([a-zA-Z_$][a-zA-Z0-9_$]*)\s*\(/g);
		const namesChirho = [];
		for (const matchChirho of matchesChirho) {
			namesChirho.push(matchChirho[1]);
		}
		// Also match arrow functions assigned to const/let
		const arrowMatchesChirho = codeChirho.matchAll(/(?:const|let|var)\s+([a-zA-Z_$][a-zA-Z0-9_$]*)\s*=\s*(?:\([^)]*\)|[a-zA-Z_$][a-zA-Z0-9_$]*)\s*=>/g);
		for (const matchChirho of arrowMatchesChirho) {
			namesChirho.push(matchChirho[1]);
		}
		return namesChirho;
	}

	function handleKeydownChirho(eventChirho) {
		// Handle Tab key for indentation
		if (eventChirho.key === 'Tab') {
			eventChirho.preventDefault();
			const targetChirho = eventChirho.target;
			const startChirho = targetChirho.selectionStart;
			const endChirho = targetChirho.selectionEnd;
			codeChirho = codeChirho.substring(0, startChirho) + '  ' + codeChirho.substring(endChirho);
			// Set cursor position after the tab
			setTimeout(function() {
				targetChirho.selectionStart = targetChirho.selectionEnd = startChirho + 2;
			}, 0);
		}
		// Ctrl/Cmd + Enter to run tests
		if ((eventChirho.ctrlKey || eventChirho.metaKey) && eventChirho.key === 'Enter') {
			eventChirho.preventDefault();
			runTestsChirho();
		}
	}
</script>

<svelte:head>
	<title>{data.questChirho.title} - Quest - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Quest Header -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-8">
		<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="flex items-center justify-between mb-4">
				<a href="/quests-chirho" class="text-slate-400 hover:text-white flex items-center gap-2 no-underline">
					<span>←</span> Back to Quests
				</a>
				<div class="flex items-center gap-2">
					<span class="text-xs px-2 py-1 rounded-full {getDifficultyColorChirho(data.questChirho.difficultyLevel)}">
						{data.questChirho.difficultyLevel}
					</span>
					<div class="flex items-center gap-1 text-amber-400 font-semibold">
						<span>🪙</span>
						<span>{data.questChirho.coinReward}</span>
					</div>
				</div>
			</div>
			<h1 class="text-3xl md:text-4xl font-bold mb-2">{data.questChirho.title}</h1>
			{#if data.questChirho.headerVerse}
				<p class="text-slate-300 italic">{data.questChirho.headerVerse}</p>
			{/if}
		</div>
	</header>

	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
		<div class="grid lg:grid-cols-2 gap-8">
			<!-- Left Column: Instructions -->
			<div class="space-y-6">
				<!-- Description -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<h2 class="text-lg font-semibold text-slate-900 mb-3">Description</h2>
					<MarkdownTextChirho text={data.questChirho.description} class="text-slate-600" />
				</div>

				<!-- Instructions -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<h2 class="text-lg font-semibold text-slate-900 mb-3">Instructions</h2>
					<MarkdownTextChirho text={data.questChirho.instructions} class="text-slate-600" />
				</div>

				<!-- Visible Tests -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<h2 class="text-lg font-semibold text-slate-900 mb-3">
						Tests
						{#if data.hiddenTestCountChirho > 0}
							<span class="text-sm font-normal text-slate-500">
								(+{data.hiddenTestCountChirho} hidden)
							</span>
						{/if}
					</h2>
					<div class="space-y-2">
						{#each data.visibleTestsChirho as testChirho}
							<div class="p-3 bg-slate-50 rounded-lg">
								<div class="font-medium text-slate-800">{testChirho.testName}</div>
								<pre class="mt-2 text-xs text-slate-600 bg-slate-100 p-2 rounded overflow-x-auto"><code>{testChirho.testCode}</code></pre>
							</div>
						{/each}
					</div>
				</div>

				<!-- Solution (collapsible) -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
					<button
						onclick={toggleSolutionChirho}
						class="w-full p-4 text-left flex items-center justify-between hover:bg-slate-50 transition-colors"
					>
						<span class="font-semibold text-slate-900">
							{showSolutionChirho ? '🙈 Hide Solution' : '👀 Show Solution'}
						</span>
						<span class="text-slate-400">
							{showSolutionChirho ? '−' : '+'}
						</span>
					</button>
					{#if showSolutionChirho}
						<div class="p-4 pt-0 border-t border-slate-200">
							<p class="text-sm text-amber-600 mb-2">
								⚠️ Viewing the solution reduces your coin reward
							</p>
							<pre class="bg-slate-900 text-green-400 p-4 rounded-lg overflow-x-auto text-sm"><code>{data.questChirho.solutionCode}</code></pre>
						</div>
					{/if}
				</div>
			</div>

			<!-- Right Column: Code Editor -->
			<div class="space-y-6">
				<!-- Code Editor -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
					<div class="bg-slate-800 text-white px-4 py-2 flex items-center justify-between">
						<span class="font-mono text-sm">code.js</span>
						<div class="flex items-center gap-2">
							<button
								onclick={resetCodeChirho}
								class="text-xs px-2 py-1 bg-slate-700 hover:bg-slate-600 rounded"
							>
								Reset
							</button>
						</div>
					</div>
					<div onkeydown={handleKeydownChirho}>
						<CodeEditorChirho
							code={codeChirho}
							onchange={(newCodeChirho) => { codeChirho = newCodeChirho; }}
							height="320px"
						/>
					</div>
				</div>

				<!-- Run Button -->
				<button
					onclick={runTestsChirho}
					disabled={isRunningChirho}
					class="w-full py-3 px-6 bg-green-600 hover:bg-green-700 disabled:bg-slate-400 text-white font-semibold rounded-xl transition-colors flex items-center justify-center gap-2"
				>
					{#if isRunningChirho}
						<span class="animate-spin">⏳</span> Running Tests...
					{:else}
						<span>▶️</span> Run Tests
						<span class="text-sm text-green-200">(Ctrl+Enter)</span>
					{/if}
				</button>

				<!-- Error Message -->
				{#if errorMessageChirho}
					<div class="bg-red-50 border border-red-200 rounded-xl p-4" role="alert">
						<div class="font-semibold text-red-800 mb-1">Error</div>
						<pre class="text-red-700 text-sm whitespace-pre-wrap">{errorMessageChirho}</pre>
					</div>
				{/if}

				<!-- Test Results -->
				{#if testResultsChirho.length > 0}
					<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
						<h3 class="text-lg font-semibold text-slate-900 mb-4">
							{#if allTestsPassedChirho}
								<span class="text-green-600">✅ All Tests Passed!</span>
							{:else}
								<span class="text-red-600">❌ Some Tests Failed</span>
							{/if}
						</h3>
						<div class="space-y-2">
							{#each testResultsChirho as resultChirho}
								<div class="flex items-start gap-3 p-3 rounded-lg {resultChirho.passed ? 'bg-green-50' : 'bg-red-50'}">
									<span class="text-lg">{resultChirho.passed ? '✅' : '❌'}</span>
									<div class="flex-1">
										<div class="font-medium {resultChirho.passed ? 'text-green-800' : 'text-red-800'}">
											{resultChirho.testName}
											{#if !resultChirho.isVisible}
												<span class="text-xs text-slate-500">(hidden test)</span>
											{/if}
										</div>
										{#if resultChirho.error}
											<pre class="mt-1 text-sm text-red-600 whitespace-pre-wrap">{resultChirho.error}</pre>
										{/if}
									</div>
								</div>
							{/each}
						</div>

						{#if allTestsPassedChirho}
							<div class="mt-6 p-4 bg-gradient-to-r from-amber-500 to-orange-500 rounded-xl text-white text-center">
								{#if isSubmittingChirho}
									<div class="text-lg">Saving your progress...</div>
								{:else if submissionResultChirho}
									{#if submissionResultChirho.alreadyCompleted}
										<div class="text-2xl mb-2">✅ Quest Already Completed!</div>
										<div class="text-lg">
											You have already earned coins for this quest.
										</div>
									{:else}
										<div class="text-2xl mb-2">🎉 Congratulations!</div>
										<div class="text-lg">
											You earned <span class="font-bold">🪙 {submissionResultChirho.coinsAwarded}</span> Quest Coins!
											{#if submissionResultChirho.bonusCoins > 0}
												<span class="text-sm">(+{submissionResultChirho.bonusCoins} bonus!)</span>
											{/if}
										</div>
									{/if}
								{:else}
									<div class="text-2xl mb-2">🎉 All Tests Passed!</div>
									<div class="text-lg">
										{#if data.userChirho}
											<span class="font-bold">🪙 {viewedSolutionChirho ? data.questChirho.coinReward : data.questChirho.coinReward + data.questChirho.bonusCoinNoSolutionView}</span> Quest Coins
											{#if !viewedSolutionChirho}
												<span class="text-sm">(+{data.questChirho.bonusCoinNoSolutionView} bonus!)</span>
											{/if}
										{:else}
											<a href="/auth-chirho/login" class="underline">Sign in</a> to earn Quest Coins!
										{/if}
									</div>
								{/if}
							</div>
						{/if}
					</div>
				{/if}

				<!-- Navigation -->
				<div class="flex justify-between gap-4">
					{#if data.prevQuestChirho}
						<a
							href="/quests-chirho/{data.prevQuestChirho.questId}"
							class="flex-1 py-3 px-4 bg-slate-200 hover:bg-slate-300 text-slate-800 rounded-xl text-center no-underline transition-colors"
						>
							← Previous Quest
						</a>
					{:else}
						<div class="flex-1"></div>
					{/if}
					{#if data.nextQuestChirho}
						<a
							href="/quests-chirho/{data.nextQuestChirho.questId}"
							class="flex-1 py-3 px-4 bg-slate-900 hover:bg-slate-800 text-white rounded-xl text-center no-underline transition-colors"
						>
							Next Quest →
						</a>
					{:else}
						<a
							href="/quests-chirho"
							class="flex-1 py-3 px-4 bg-slate-900 hover:bg-slate-800 text-white rounded-xl text-center no-underline transition-colors"
						>
							Back to Quests
						</a>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>
