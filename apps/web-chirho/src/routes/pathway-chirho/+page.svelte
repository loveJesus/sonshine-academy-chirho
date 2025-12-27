<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import PathwayChirho from '$lib/components/PathwayChirho.svelte';

	const demoCellsChirho: Array<{
		type: 'markdown' | 'code';
		content: string;
		expectedOutput?: string | null;
		hint?: string;
	}> = [
		{
			type: 'markdown',
			content: `# Welcome to JavaScript Basics

In this pathway, you'll learn the fundamentals of JavaScript - the language that brings websites to life!

> "For I know the plans I have for you," declares the Lord, "plans to prosper you and not to harm you, plans to give you hope and a future." — Jeremiah 29:11

Let's begin our coding journey!`
		},
		{
			type: 'markdown',
			content: `## 1. Variables: Storing Truth

Variables are like containers that hold information. In JavaScript, we can create variables using \`let\`, \`const\`, or \`var\`.

- **\`let\`** - for values that might change
- **\`const\`** - for values that stay the same (like God's love!)
- **\`var\`** - the old way (still works, but prefer \`let\` and \`const\`)`
		},
		{
			type: 'code',
			content: `// Try running this cell!
const message = "God is love";
console.log(message);`,
			expectedOutput: 'God is love',
			hint: 'Click the green play button to run this code!'
		},
		{
			type: 'markdown',
			content: `## 2. Your Turn!

Now it's your turn to practice. Create a variable called \`myName\` and log a greeting to the console.

**Expected output:** \`Hello, [Your Name]!\``
		},
		{
			type: 'code',
			content: `// Create a variable with your name
let myName = "Friend";

// Log a greeting
console.log("Hello, " + myName + "!");`,
			expectedOutput: null,
			hint: 'Change "Friend" to your actual name!'
		},
		{
			type: 'markdown',
			content: `## 3. Numbers and Math

JavaScript can do math! Let's explore some basic operations.

| Operator | Description | Example |
|----------|-------------|---------|
| \`+\` | Addition | \`5 + 3 = 8\` |
| \`-\` | Subtraction | \`10 - 4 = 6\` |
| \`*\` | Multiplication | \`6 * 7 = 42\` |
| \`/\` | Division | \`20 / 4 = 5\` |`
		},
		{
			type: 'code',
			content: `// Calculate the number of disciples
const disciplesCount = 12;
const apostlesPaul = 1;

console.log("Disciples:", disciplesCount);
console.log("Total witnesses:", disciplesCount + apostlesPaul);`,
			expectedOutput: 'Disciples: 12\nTotal witnesses: 13'
		},
		{
			type: 'markdown',
			content: `## 4. Functions: Calling on the Lord

Functions are reusable blocks of code. Just like we can call on God anytime, we can call functions whenever we need them!`
		},
		{
			type: 'code',
			content: `// Define a function
function greet(name) {
    return "Peace be with you, " + name + "!";
}

// Call the function
const greeting = greet("beloved");
console.log(greeting);`,
			expectedOutput: 'Peace be with you, beloved!',
			hint: 'A function takes input (parameters) and returns output!'
		},
		{
			type: 'markdown',
			content: `## 5. Challenge: Create Your Own Function

Now create a function called \`bless\` that takes a name and returns a blessing!

**Example:** \`bless("Sarah")\` should output \`"May God bless you, Sarah!"\``
		},
		{
			type: 'code',
			content: `// Your turn! Create the bless function
function bless(name) {
    // Replace this line with your code
    return "May God bless you, " + name + "!";
}

// Test it
console.log(bless("Sarah"));`,
			expectedOutput: 'May God bless you, Sarah!',
			hint: 'Use the + operator to combine strings!'
		},
		{
			type: 'markdown',
			content: `## Congratulations!

You've completed the JavaScript Basics pathway! You learned:

1. ✅ **Variables** - storing data with \`let\` and \`const\`
2. ✅ **Console.log** - outputting messages
3. ✅ **Math** - performing calculations
4. ✅ **Functions** - creating reusable code

> "I can do all things through Christ who strengthens me." — Philippians 4:13

Keep coding for His glory!`
		}
	];

	let isCompleteChirho = $state(false);

	function handleChangeChirho(cellsChirho: typeof demoCellsChirho): void {
		console.log('Cells changed:', cellsChirho);
	}

	function handleCompleteChirho(): void {
		isCompleteChirho = true;
		console.log('All cells completed!');
	}
</script>

<svelte:head>
	<title>Pathway - Interactive Learning - Sonshine Christian Code Academy</title>
	<meta name="description" content="Learn JavaScript interactively with our Jupyter-style coding pathway. Run code, see results, and grow your skills!" />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block">📓</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Interactive Pathways</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Learn by doing with our Jupyter-style interactive notebooks.
			Write code, run it, and see results instantly!
		</p>
	</div>
</section>

<!-- Pathway Info -->
<section class="py-8 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex flex-wrap items-center justify-center gap-8">
			<div class="flex items-center gap-3">
				<span class="text-3xl">📝</span>
				<div>
					<div class="font-semibold">Read & Learn</div>
					<div class="text-sm text-white/80">Markdown explanations</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">▶</span>
				<div>
					<div class="font-semibold">Run & Experiment</div>
					<div class="text-sm text-white/80">Execute code cells</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">✓</span>
				<div>
					<div class="font-semibold">Complete & Progress</div>
					<div class="text-sm text-white/80">Track your learning</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Demo Pathway -->
<section class="py-12 bg-slate-100">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="mb-6 flex items-center justify-between">
			<div>
				<h2 class="text-2xl font-bold text-slate-900 mb-2">JavaScript Basics</h2>
				<p class="text-slate-600">
					An interactive introduction to JavaScript programming.
				</p>
			</div>
			{#if isCompleteChirho}
				<div class="flex items-center gap-2 bg-green-100 text-green-800 px-4 py-2 rounded-full">
					<span>✓</span>
					<span class="font-semibold">Completed!</span>
				</div>
			{/if}
		</div>

		<PathwayChirho
			cellsChirho={demoCellsChirho}
			onchangeChirho={handleChangeChirho}
			oncompleteChirho={handleCompleteChirho}
		/>

		<!-- Instructions -->
		<div class="mt-6 p-4 bg-white rounded-lg border border-slate-200">
			<h3 class="font-semibold text-slate-900 mb-2">How to Use Pathways:</h3>
			<ul class="text-sm text-slate-600 space-y-1">
				<li>• <strong>Read</strong> the markdown cells for explanations and context</li>
				<li>• <strong>Edit</strong> the code cells to experiment with JavaScript</li>
				<li>• <strong>Run</strong> cells with the ▶ button or "Run All" to execute</li>
				<li>• <strong>Reset</strong> cells with ↺ if you want to start over</li>
				<li>• <strong>Hints</strong> are available with the 💡 button when you're stuck</li>
				<li>• <strong>Complete</strong> all code cells to finish the pathway!</li>
			</ul>
		</div>
	</div>
</section>

<!-- How It Works -->
<section class="py-12 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-2xl font-bold text-slate-900 mb-6 text-center">What Makes Pathways Special?</h2>
		<div class="grid md:grid-cols-2 gap-6">
			<div class="p-6 bg-amber-50 rounded-xl">
				<span class="text-3xl block mb-3">🧠</span>
				<h3 class="font-bold text-slate-900 mb-2">Context Preserved</h3>
				<p class="text-sm text-slate-600">
					Variables and functions from earlier cells are available in later cells.
					Build up your code step by step!
				</p>
			</div>
			<div class="p-6 bg-amber-50 rounded-xl">
				<span class="text-3xl block mb-3">🎯</span>
				<h3 class="font-bold text-slate-900 mb-2">Guided Learning</h3>
				<p class="text-sm text-slate-600">
					Some cells check your output against expected results.
					Get immediate feedback on your code!
				</p>
			</div>
			<div class="p-6 bg-amber-50 rounded-xl">
				<span class="text-3xl block mb-3">📖</span>
				<h3 class="font-bold text-slate-900 mb-2">Rich Explanations</h3>
				<p class="text-sm text-slate-600">
					Markdown cells include formatted text, code examples, tables,
					and Scripture references.
				</p>
			</div>
			<div class="p-6 bg-amber-50 rounded-xl">
				<span class="text-3xl block mb-3">🔄</span>
				<h3 class="font-bold text-slate-900 mb-2">Safe Experimentation</h3>
				<p class="text-sm text-slate-600">
					Reset any cell to start fresh. Your browser runs the code
					safely without affecting anything else.
				</p>
			</div>
		</div>
	</div>
</section>

<!-- CTA -->
<section class="py-16 bg-slate-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">More Ways to Learn</h2>
		<p class="text-lg text-slate-600 mb-8">
			Pathways are just one way we teach coding. Explore our other learning tools!
		</p>
		<div class="flex flex-wrap justify-center gap-4">
			<a href="/quests-chirho" class="btn-primary text-lg px-8 py-3 no-underline">
				Practice with Quests
			</a>
			<a href="/workshop-chirho" class="btn-secondary text-lg px-8 py-3 no-underline">
				Build in Workshop
			</a>
			<a href="/lamp-chirho" class="btn-secondary text-lg px-8 py-3 no-underline">
				Watch Video Lessons
			</a>
		</div>
	</div>
</section>
