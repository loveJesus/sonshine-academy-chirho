<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { page } from '$app/state';
	import WorkshopChirho from '$lib/components/WorkshopChirho.svelte';
	import WorkshopCollabChirho from '$lib/components/WorkshopCollabChirho.svelte';

	// Collaboration state
	let collaborativeModeChirho = $state(false);
	const sessionIdChirho = $derived(
		page.url.searchParams.get('session') || 'demo-' + Math.random().toString(36).substring(2, 8)
	);
	const userIdChirho: string = 'user-' + Math.random().toString(36).substring(2, 8);

	const exampleHtmlChirho = `<div class="card">
  <h1>Welcome to the Workshop!</h1>
  <p>This is your creative coding space.</p>
  <button id="greetBtn">Click Me</button>
  <p id="output"></p>
</div>`;

	const exampleCssChirho = `.card {
  max-width: 400px;
  margin: 0 auto;
  padding: 2rem;
  background: linear-gradient(135deg, #fef3c7 0%, #fde68a 100%);
  border-radius: 12px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  text-align: center;
}

h1 {
  color: #92400e;
  margin-bottom: 0.5rem;
}

p {
  color: #78350f;
}

button {
  background: #f59e0b;
  color: white;
  border: none;
  padding: 0.75rem 1.5rem;
  border-radius: 8px;
  font-size: 1rem;
  cursor: pointer;
  transition: transform 0.15s, box-shadow 0.15s;
}

button:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(245, 158, 11, 0.4);
}

#output {
  margin-top: 1rem;
  font-weight: bold;
  min-height: 1.5rem;
}`;

	const exampleJsChirho = `const button = document.getElementById('greetBtn');
const output = document.getElementById('output');

const greetings = [
  "The Lord bless you and keep you!",
  "This is the day the Lord has made!",
  "With God all things are possible!",
  "Be strong and courageous!",
  "The joy of the Lord is your strength!"
];

let clickCount = 0;

console.log('Workshop loaded! Click the button to see greetings.');

button.addEventListener('click', () => {
  clickCount++;
  const greeting = greetings[clickCount % greetings.length];
  output.textContent = greeting;
  output.style.color = '#059669';
  console.log('Click #' + clickCount + ':', greeting);
});`;

	function handleChangeChirho(codeChirho: any): void {
		console.log('Code changed:', codeChirho);
	}
</script>

<svelte:head>
	<title>Workshop - Sonshine Christian Code Academy</title>
	<meta name="description" content="Build creative coding projects with HTML, CSS, and JavaScript in our interactive workshop." />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block">🛠️</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Creative Workshop</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Build something amazing with HTML, CSS, and JavaScript.
			See your code come to life in real-time!
		</p>
	</div>
</section>

<!-- Workshop Info -->
<section class="py-8 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex flex-wrap items-center justify-center gap-8">
			<div class="flex items-center gap-3">
				<span class="text-3xl">{'<>'}</span>
				<div>
					<div class="font-semibold">Write HTML</div>
					<div class="text-sm text-white/80">Structure your content</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">#</span>
				<div>
					<div class="font-semibold">Style with CSS</div>
					<div class="text-sm text-white/80">Make it beautiful</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl font-mono">js</span>
				<div>
					<div class="font-semibold">Add JavaScript</div>
					<div class="text-sm text-white/80">Bring it to life</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Workshop Editor -->
<section class="py-12 bg-slate-100">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="mb-6">
			<div class="flex flex-wrap items-start justify-between gap-4">
				<div>
					<h2 class="text-2xl font-bold text-slate-900 mb-2">Try It Out</h2>
					<p class="text-slate-600">
						Edit the code below and click the Preview tab to see your changes.
						This example creates an interactive greeting card!
					</p>
				</div>
				<!-- Collaboration Toggle -->
				<div class="bg-white rounded-lg shadow-sm p-3">
					<label class="flex items-center gap-2 cursor-pointer">
						<input
							type="checkbox"
							bind:checked={collaborativeModeChirho}
							class="w-5 h-5 rounded border-slate-300 text-amber-500 focus:ring-amber-500"
						/>
						<span class="text-sm font-medium text-slate-700">Real-time Collaboration</span>
					</label>
					{#if collaborativeModeChirho}
						<div class="mt-2 text-xs text-slate-500">
							Session: <code class="bg-slate-100 px-1 rounded">{sessionIdChirho}</code>
							<button
								type="button"
								onclick={() => navigator.clipboard.writeText(window.location.origin + '/workshop-chirho?session=' + sessionIdChirho)}
								class="ml-2 text-blue-600 hover:text-blue-800"
							>
								Copy Link
							</button>
						</div>
					{/if}
				</div>
			</div>
		</div>

		{#if collaborativeModeChirho}
			<WorkshopCollabChirho
				sessionIdChirho={sessionIdChirho}
				userIdChirho={userIdChirho}
				displayNameChirho="Student"
				initialHtmlChirho={exampleHtmlChirho}
				initialCssChirho={exampleCssChirho}
				initialJsChirho={exampleJsChirho}
				onchange={handleChangeChirho}
				height="450px"
				collaborativeChirho={true}
			/>
		{:else}
			<WorkshopChirho
				initialHtmlChirho={exampleHtmlChirho}
				initialCssChirho={exampleCssChirho}
				initialJsChirho={exampleJsChirho}
				onchange={handleChangeChirho}
				height="450px"
			/>
		{/if}

		<div class="mt-6 p-4 bg-white rounded-lg border border-slate-200">
			<h3 class="font-semibold text-slate-900 mb-2">Tips for this Workshop:</h3>
			<ul class="text-sm text-slate-600 space-y-1">
				<li>• <strong>HTML tab:</strong> Edit the structure and content</li>
				<li>• <strong>CSS tab:</strong> Change colors, sizes, and layout</li>
				<li>• <strong>JavaScript tab:</strong> Add interactivity and logic</li>
				<li>• <strong>Preview tab:</strong> See your creation in action!</li>
				<li>• <strong>Console tab:</strong> View console.log() output and errors</li>
			</ul>
		</div>
	</div>
</section>

<!-- Scripture -->
<section class="py-12 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<blockquote class="text-xl italic text-slate-600 mb-4">
			"Whatever you do, work at it with all your heart, as working for the Lord, not for human masters."
		</blockquote>
		<cite class="text-amber-600 font-semibold">— Colossians 3:23</cite>
	</div>
</section>

<!-- CTA -->
<section class="py-16 bg-slate-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">Ready for More?</h2>
		<p class="text-lg text-slate-600 mb-8">
			Workshops are hands-on creative projects where you build real things.
			Start with our guided Scrolls to learn the fundamentals first!
		</p>
		<div class="flex flex-wrap justify-center gap-4">
			<a href="/quests-chirho" class="btn-primary text-lg px-8 py-3 no-underline">
				Browse Scrolls
			</a>
			<a href="/courses-chirho" class="btn-secondary text-lg px-8 py-3 no-underline">
				View Courses
			</a>
		</div>
	</div>
</section>
