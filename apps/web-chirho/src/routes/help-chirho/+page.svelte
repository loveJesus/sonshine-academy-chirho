<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	const faqsChirho = [
		{
			category: 'Getting Started',
			questions: [
				{
					q: 'How do I create an account?',
					a: 'Click the "Sign Up" button in the top right corner. You can register with your email and password, or sign in with your Google account for faster access.'
				},
				{
					q: 'Is the platform free to use?',
					a: 'Yes! We offer a Scholarship tier that provides full access at no cost. For those who can afford to support our mission, we have paid tiers starting at $5/month that help cover infrastructure costs and fund scholarships for others.'
				},
				{
					q: 'What ages is this platform for?',
					a: 'Our primary audience is middle school (11-14) and high school (14-18) students, but all ages are welcome! Parents often learn alongside their children.'
				}
			]
		},
		{
			category: 'Courses & Quests',
			questions: [
				{
					q: 'What is a Quest?',
					a: 'Quests are coding challenges that test your knowledge. Write code to solve the problem, run the tests, and earn Quest Coins when you pass! Try to solve them without viewing the solution for bonus coins.'
				},
				{
					q: 'How do I earn Quest Coins?',
					a: 'Complete quests to earn Quest Coins. Each quest has a base reward, plus a bonus if you solve it without viewing the solution. You can also earn coins through mentoring and other activities.'
				},
				{
					q: 'What can I do with Quest Coins?',
					a: 'Quest Coins can be used for profile customization, badges, and eventually physical rewards like Christian apparel. They also contribute to your leaderboard ranking and can help you unlock mentor status.'
				},
				{
					q: 'How do courses work?',
					a: 'Courses are organized into weekly modules, each containing multiple sessions. Sessions include video lessons, reading materials, coding exercises, and quests. Complete them in order for the best learning experience.'
				}
			]
		},
		{
			category: 'Technical Support',
			questions: [
				{
					q: 'The code editor is not working. What should I do?',
					a: 'Try refreshing the page. If the problem persists, make sure JavaScript is enabled in your browser. We recommend using Chrome, Firefox, or Edge for the best experience.'
				},
				{
					q: 'My test results show errors I do not understand.',
					a: 'Read the error message carefully—it usually tells you what went wrong. Check your syntax, variable names, and function returns. If you are still stuck, try viewing the visible tests to understand what is expected.'
				},
				{
					q: 'How do I use the terminal environment?',
					a: 'The terminal environment (coming soon) will give you a real Linux command line to practice shell commands and deploy projects. You will receive a personal terminal instance when you start a payload exercise.'
				}
			]
		},
		{
			category: 'Account & Billing',
			questions: [
				{
					q: 'How do I change my email or password?',
					a: 'Go to Settings (click your profile icon, then Settings) to update your email. Password reset is available on the login page via "Forgot Password".'
				},
				{
					q: 'How do I cancel my subscription?',
					a: 'You can manage your subscription through the Stripe customer portal. Go to Settings and click on your subscription status, or contact us for help.'
				},
				{
					q: 'Can I get a refund?',
					a: 'Since our tiers are designed to support a scholarship-based model, we generally do not offer refunds. However, if you are experiencing financial hardship, please contact us to discuss options.'
				}
			]
		}
	];

	let expandedQuestionsChirho = $state(new Set());

	function toggleQuestionChirho(keyChirho) {
		if (expandedQuestionsChirho.has(keyChirho)) {
			expandedQuestionsChirho.delete(keyChirho);
			expandedQuestionsChirho = new Set(expandedQuestionsChirho);
		} else {
			expandedQuestionsChirho.add(keyChirho);
			expandedQuestionsChirho = new Set(expandedQuestionsChirho);
		}
	}
</script>

<svelte:head>
	<title>Help & Support - Sonshine Christian Code Academy</title>
	<meta name="description" content="Get help with Sonshine Christian Code Academy. Find answers to frequently asked questions and contact our support team." />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Hero Section -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
		<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
			<h1 class="text-4xl md:text-5xl font-bold mb-4">How Can We Help?</h1>
			<p class="text-xl text-slate-300 max-w-2xl mx-auto">
				Find answers to common questions or reach out to our team for support.
			</p>
		</div>
	</header>

	<main class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
		<!-- Quick Links -->
		<section class="grid sm:grid-cols-3 gap-4 mb-12">
			<a
				href="https://discord.gg/sonshinecoders"
				target="_blank"
				rel="noopener noreferrer"
				class="bg-white rounded-xl shadow-sm border border-slate-200 p-6 text-center hover:shadow-md transition-shadow no-underline"
			>
				<div class="text-3xl mb-3">💬</div>
				<h3 class="font-semibold text-slate-900 mb-1">Discord Community</h3>
				<p class="text-sm text-slate-500">Chat with other students</p>
			</a>

			<a
				href="mailto:support@sonshinecodingschool.org"
				class="bg-white rounded-xl shadow-sm border border-slate-200 p-6 text-center hover:shadow-md transition-shadow no-underline"
			>
				<div class="text-3xl mb-3">📧</div>
				<h3 class="font-semibold text-slate-900 mb-1">Email Support</h3>
				<p class="text-sm text-slate-500">Get help from our team</p>
			</a>

			<a
				href="/about-chirho"
				class="bg-white rounded-xl shadow-sm border border-slate-200 p-6 text-center hover:shadow-md transition-shadow no-underline"
			>
				<div class="text-3xl mb-3">📖</div>
				<h3 class="font-semibold text-slate-900 mb-1">About Us</h3>
				<p class="text-sm text-slate-500">Learn about our mission</p>
			</a>
		</section>

		<!-- FAQ Section -->
		<section class="mb-12">
			<h2 class="text-2xl font-bold text-slate-900 mb-6">Frequently Asked Questions</h2>

			<div class="space-y-8">
				{#each faqsChirho as categoryChirho}
					<div>
						<h3 class="text-lg font-semibold text-slate-900 mb-4 flex items-center gap-2">
							{#if categoryChirho.category === 'Getting Started'}
								<span>🚀</span>
							{:else if categoryChirho.category === 'Courses & Quests'}
								<span>⚔️</span>
							{:else if categoryChirho.category === 'Technical Support'}
								<span>🔧</span>
							{:else}
								<span>💳</span>
							{/if}
							{categoryChirho.category}
						</h3>

						<div class="space-y-2">
							{#each categoryChirho.questions as qChirho, iChirho}
								{@const keyChirho = `${categoryChirho.category}-${iChirho}`}
								<div class="bg-white rounded-lg shadow-sm border border-slate-200 overflow-hidden">
									<button
										onclick={() => toggleQuestionChirho(keyChirho)}
										class="w-full px-5 py-4 text-left flex items-center justify-between hover:bg-slate-50 transition-colors"
										aria-expanded={expandedQuestionsChirho.has(keyChirho)}
									>
										<span class="font-medium text-slate-900">{qChirho.q}</span>
										<svg
											class="w-5 h-5 text-slate-400 transition-transform {expandedQuestionsChirho.has(keyChirho) ? 'rotate-180' : ''}"
											fill="none"
											stroke="currentColor"
											viewBox="0 0 24 24"
										>
											<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
										</svg>
									</button>

									{#if expandedQuestionsChirho.has(keyChirho)}
										<div class="px-5 pb-4 text-slate-600">
											{qChirho.a}
										</div>
									{/if}
								</div>
							{/each}
						</div>
					</div>
				{/each}
			</div>
		</section>

		<!-- Contact Form Section -->
		<section class="bg-white rounded-xl shadow-sm border border-slate-200 p-8">
			<h2 class="text-xl font-bold text-slate-900 mb-2">Still Need Help?</h2>
			<p class="text-slate-600 mb-6">
				Can not find what you are looking for? Send us a message and we will get back to you as soon as possible.
			</p>

			<div class="grid sm:grid-cols-2 gap-6">
				<div>
					<h3 class="font-semibold text-slate-900 mb-3">Contact Information</h3>
					<ul class="space-y-3 text-slate-600">
						<li class="flex items-center gap-3">
							<span class="text-xl">📧</span>
							<a href="mailto:support@sonshinecodingschool.org" class="text-amber-600 hover:underline">
								support@sonshinecodingschool.org
							</a>
						</li>
						<li class="flex items-center gap-3">
							<span class="text-xl">💬</span>
							<a href="https://discord.gg/sonshinecoders" target="_blank" rel="noopener noreferrer" class="text-amber-600 hover:underline">
								Discord Community
							</a>
						</li>
						<li class="flex items-center gap-3">
							<span class="text-xl">🌐</span>
							<a href="https://sonshinewarriors.org" target="_blank" rel="noopener noreferrer" class="text-amber-600 hover:underline">
								Sonshine Warriors
							</a>
						</li>
					</ul>
				</div>

				<div>
					<h3 class="font-semibold text-slate-900 mb-3">Response Times</h3>
					<p class="text-slate-600 mb-4">
						We typically respond within 24-48 hours on business days. For urgent technical issues, please use the Discord community for faster help from fellow students and mentors.
					</p>
					<p class="text-sm text-slate-500 italic">
						"Bear ye one another's burdens, and so fulfil the law of Christ." — Galatians 6:2
					</p>
				</div>
			</div>
		</section>

		<!-- Feedback CTA -->
		<section class="mt-12 bg-gradient-to-r from-amber-500 to-orange-500 rounded-xl p-8 text-white text-center">
			<h2 class="text-2xl font-bold mb-3">Have Feedback?</h2>
			<p class="text-white/90 mb-6 max-w-xl mx-auto">
				We are constantly improving! Use the feedback button (bottom right of any page) to share bugs, suggestions, or praise.
			</p>
			<p class="text-sm text-white/70">
				Your input helps us build a better learning experience for everyone.
			</p>
		</section>
	</main>
</div>
