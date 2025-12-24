<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();

	const tiersChirho = [
		{
			id: 'scholarship',
			name: 'Scholarship',
			price: '$0',
			period: '/month',
			description: 'Full access for those who cannot afford to pay',
			features: [
				'Full course access',
				'All 131 quests',
				'Quest Coins rewards',
				'Community Discord'
			],
			cta: 'Apply for Scholarship',
			ctaLink: '/scholarship-chirho',
			highlight: false,
			color: 'slate'
		},
		{
			id: 'supporter',
			name: 'Supporter',
			price: '$5',
			period: '/month',
			description: 'Covers our server infrastructure costs',
			features: [
				'Full course access',
				'All 131 quests',
				'Quest Coins rewards',
				'Community Discord',
				'Supporter badge'
			],
			cta: 'Get Started',
			ctaLink: '/checkout-chirho?tier=supporter',
			highlight: false,
			color: 'blue'
		},
		{
			id: 'champion',
			name: 'Champion',
			price: '$10',
			period: '/month',
			description: 'Supports the mission and funds scholarships',
			features: [
				'Full course access',
				'All 131 quests',
				'Quest Coins rewards',
				'Community Discord',
				'Champion badge',
				'Priority support'
			],
			cta: 'Become a Champion',
			ctaLink: '/checkout-chirho?tier=champion',
			highlight: true,
			color: 'amber'
		},
		{
			id: 'hero',
			name: 'Hero',
			price: '$25',
			period: '/month',
			description: 'Sponsors 5 students & supports missions',
			features: [
				'Full course access',
				'All 131 quests',
				'Quest Coins rewards',
				'Community Discord',
				'Hero badge',
				'Priority support',
				'Monthly impact reports',
				'Name on sponsors page'
			],
			cta: 'Become a Hero',
			ctaLink: '/checkout-chirho?tier=hero',
			highlight: false,
			color: 'purple'
		}
	];
</script>

<svelte:head>
	<title>Pricing - Sonshine Christian Code Academy</title>
	<meta name="description" content="Choose your plan. All tiers include full access to courses and quests. Pay what you can, or apply for a scholarship." />
</svelte:head>

<!-- Hero -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block" aria-hidden="true">💝</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Choose Your Path</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Every tier includes full access. Pay what you can, or apply for a scholarship.
			Your support helps us teach coding to students around the world.
		</p>
	</div>
</section>

<!-- Pricing Cards -->
<section class="py-16 bg-slate-50">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
			{#each tiersChirho as tierChirho}
				<div class="relative bg-white rounded-2xl shadow-sm border-2 {tierChirho.highlight ? 'border-amber-400' : 'border-slate-200'} overflow-hidden flex flex-col">
					{#if tierChirho.highlight}
						<div class="bg-amber-400 text-amber-900 text-center py-1 text-sm font-semibold">
							Most Popular
						</div>
					{/if}

					<div class="p-6 flex-1 flex flex-col">
						<div class="text-center mb-6">
							<h3 class="text-xl font-bold text-slate-900">{tierChirho.name}</h3>
							<div class="mt-2">
								<span class="text-4xl font-bold text-slate-900">{tierChirho.price}</span>
								<span class="text-slate-500">{tierChirho.period}</span>
							</div>
							<p class="mt-2 text-sm text-slate-600">{tierChirho.description}</p>
						</div>

						<ul class="space-y-3 flex-1">
							{#each tierChirho.features as featureChirho}
								<li class="flex items-start gap-2">
									<span class="text-green-500 flex-shrink-0">✓</span>
									<span class="text-slate-600 text-sm">{featureChirho}</span>
								</li>
							{/each}
						</ul>

						<a
							href={tierChirho.ctaLink}
							class="mt-6 block w-full py-3 px-4 text-center font-semibold rounded-xl transition-colors no-underline
								{tierChirho.highlight
									? 'bg-amber-500 hover:bg-amber-600 text-white'
									: tierChirho.id === 'scholarship'
										? 'bg-slate-200 hover:bg-slate-300 text-slate-800'
										: 'bg-slate-900 hover:bg-slate-800 text-white'}"
						>
							{tierChirho.cta}
						</a>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- FAQ Section -->
<section class="py-16 bg-white">
	<div class="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-3xl font-bold text-center text-slate-900 mb-12">Frequently Asked Questions</h2>

		<div class="space-y-6">
			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">What's included in the free tier?</h3>
				<p class="text-slate-600">
					The Scholarship tier includes full access to all courses, quests, and the community.
					It's designed for families who cannot afford to pay. We believe financial status
					should never be a barrier to learning.
				</p>
			</div>

			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">Can I change my plan later?</h3>
				<p class="text-slate-600">
					Yes! You can upgrade, downgrade, or cancel your subscription at any time.
					Changes take effect at the start of your next billing cycle.
				</p>
			</div>

			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">Where does the money go?</h3>
				<p class="text-slate-600">
					Your contributions cover server infrastructure, fund scholarships for students
					who can't afford to pay, and support our mission to teach coding with Biblical values.
				</p>
			</div>

			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">Is this tax-deductible?</h3>
				<p class="text-slate-600">
					We are not currently a registered 501(c)(3), so contributions are not tax-deductible.
					However, you're supporting a mission that glorifies God through technology education.
				</p>
			</div>
		</div>
	</div>
</section>

<!-- CTA -->
<section class="py-16 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold mb-4">Ready to Start Learning?</h2>
		<p class="text-lg text-white/90 mb-8">
			Join hundreds of students learning to code with Biblical principles.
		</p>
		<a href="/auth-chirho/register" class="inline-block py-3 px-8 bg-white text-amber-600 font-semibold rounded-xl hover:bg-slate-100 transition-colors no-underline">
			Create Free Account
		</a>
	</div>
</section>
