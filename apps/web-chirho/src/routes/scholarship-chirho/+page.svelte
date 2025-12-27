<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let reasonChirho = $state('');
	let isSubmittingChirho = $state(false);
	let charCountChirho = $derived(reasonChirho.length);
</script>

<svelte:head>
	<title>Scholarship Application - Sonshine Christian Code Academy</title>
	<meta name="description" content="Apply for a scholarship to access all courses at no cost. We believe financial constraints should never prevent anyone from learning to code." />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block" aria-hidden="true">🎓</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Scholarship Program</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			We believe that financial constraints should never prevent anyone from learning to code.
			Our scholarship program provides full access at no cost.
		</p>
	</div>
</section>

<!-- Main Content -->
<section class="py-16 bg-slate-50">
	<div class="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">

		<!-- Already Has Scholarship -->
		{#if data.alreadyHasScholarshipChirho}
			<div class="bg-green-50 border border-green-200 rounded-2xl p-8 text-center">
				<span class="text-5xl mb-4 block">✨</span>
				<h2 class="text-2xl font-bold text-green-900 mb-4">You Have an Active Scholarship!</h2>
				<p class="text-green-700 mb-6">
					You already have full access to all courses and quests through your scholarship.
					May God bless your learning journey!
				</p>
				<a
					href="/courses-chirho"
					class="inline-block bg-green-600 hover:bg-green-700 text-white px-6 py-3 rounded-xl font-semibold transition-colors no-underline"
				>
					Start Learning
				</a>
			</div>

		<!-- Has Pending Application -->
		{:else if data.existingApplicationChirho}
			<div class="bg-white rounded-2xl shadow-sm border border-slate-200 p-8">
				<div class="text-center mb-8">
					{#if data.existingApplicationChirho.status === 'pending'}
						<span class="text-5xl mb-4 block">⏳</span>
						<h2 class="text-2xl font-bold text-slate-900 mb-4">Application Under Review</h2>
						<p class="text-slate-600">
							Your scholarship application has been received and is being reviewed.
							We typically respond within 2-3 business days.
						</p>
					{:else if data.existingApplicationChirho.status === 'active'}
						<span class="text-5xl mb-4 block">🎉</span>
						<h2 class="text-2xl font-bold text-green-700 mb-4">Scholarship Approved!</h2>
						<p class="text-slate-600 mb-6">
							Your scholarship has been approved! You now have full access to all courses.
						</p>
						<a
							href="/courses-chirho"
							class="inline-block bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-xl font-semibold transition-colors no-underline"
						>
							Start Learning
						</a>
					{:else if data.existingApplicationChirho.status === 'revoked'}
						<span class="text-5xl mb-4 block">😔</span>
						<h2 class="text-2xl font-bold text-slate-900 mb-4">Application Status</h2>
						<p class="text-slate-600">
							Your scholarship application was not approved at this time. If you have questions,
							please reach out to us.
						</p>
					{/if}
				</div>

				<div class="bg-slate-50 rounded-xl p-6">
					<h3 class="font-semibold text-slate-900 mb-2">Your Application</h3>
					<p class="text-slate-600 text-sm whitespace-pre-wrap">{data.existingApplicationChirho.reason}</p>
				</div>
			</div>

		<!-- Application Form -->
		{:else}
			<!-- Info Cards -->
			<div class="grid md:grid-cols-3 gap-4 mb-8">
				<div class="bg-white rounded-xl p-6 shadow-sm border border-slate-200">
					<span class="text-3xl mb-3 block">📚</span>
					<h3 class="font-semibold text-slate-900 mb-2">Full Access</h3>
					<p class="text-sm text-slate-600">Access all courses, quests, and learning materials</p>
				</div>
				<div class="bg-white rounded-xl p-6 shadow-sm border border-slate-200">
					<span class="text-3xl mb-3 block">🏆</span>
					<h3 class="font-semibold text-slate-900 mb-2">Quest Coins</h3>
					<p class="text-sm text-slate-600">Earn rewards as you complete coding challenges</p>
				</div>
				<div class="bg-white rounded-xl p-6 shadow-sm border border-slate-200">
					<span class="text-3xl mb-3 block">💬</span>
					<h3 class="font-semibold text-slate-900 mb-2">Community</h3>
					<p class="text-sm text-slate-600">Join our Discord community for support</p>
				</div>
			</div>

			<!-- Application Form -->
			<div class="bg-white rounded-2xl shadow-sm border border-slate-200 p-8">
				<h2 class="text-2xl font-bold text-slate-900 mb-2">Apply for a Scholarship</h2>
				<p class="text-slate-600 mb-6">
					Please share briefly why you're requesting a scholarship. This helps us understand
					your situation and prioritize those most in need.
				</p>

				<!-- Messages -->
				{#if form?.success}
					<div class="bg-green-50 border border-green-200 rounded-lg p-4 text-green-800 mb-6">
						<span class="font-semibold">Application Submitted!</span>
						<p class="text-sm mt-1">We'll review your application and get back to you soon. Thank you for your patience.</p>
					</div>
				{/if}
				{#if form?.error}
					<div class="bg-red-50 border border-red-200 rounded-lg p-4 text-red-800 mb-6">
						{form.error}
					</div>
				{/if}

				<form
					method="POST"
					action="?/apply"
					use:enhance={() => {
						isSubmittingChirho = true;
						return async ({ update }) => {
							await update();
							isSubmittingChirho = false;
						};
					}}
					class="space-y-6"
				>
					<div>
						<label for="reason" class="block text-sm font-medium text-slate-700 mb-2">
							Why are you requesting a scholarship? <span class="text-red-500">*</span>
						</label>
						<textarea
							id="reason"
							name="reason"
							rows="5"
							bind:value={reasonChirho}
							required
							minlength="20"
							maxlength="2000"
							class="w-full border border-slate-300 rounded-lg px-4 py-3 focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
							placeholder="Please share your situation briefly. For example: 'I am a homeschool student and my family is going through financial hardship...' or 'I am a missionary kid living overseas and...'

We respect your privacy and keep all applications confidential."
						></textarea>
						<div class="mt-1 text-sm text-slate-500 flex justify-between">
							<span>Minimum 20 characters</span>
							<span class:text-red-500={charCountChirho > 2000}>{charCountChirho}/2000</span>
						</div>
					</div>

					<div class="bg-amber-50 border border-amber-200 rounded-lg p-4">
						<p class="text-amber-800 text-sm">
							<span class="font-semibold">Note:</span> Scholarship applications are reviewed manually.
							We typically respond within 2-3 business days. All information is kept confidential.
						</p>
					</div>

					<button
						type="submit"
						disabled={isSubmittingChirho || charCountChirho < 20}
						class="w-full bg-blue-600 hover:bg-blue-700 disabled:bg-slate-400 disabled:cursor-not-allowed text-white py-3 px-6 rounded-xl font-semibold transition-colors"
					>
						{isSubmittingChirho ? 'Submitting...' : 'Submit Application'}
					</button>
				</form>
			</div>

			<!-- Scripture Quote -->
			<div class="mt-8 text-center">
				<blockquote class="text-slate-600 italic">
					"And my God will supply every need of yours according to his riches in glory in Christ Jesus."
				</blockquote>
				<cite class="text-sm text-slate-500 mt-2 block">— Philippians 4:19 (ESV)</cite>
			</div>
		{/if}
	</div>
</section>

<!-- FAQ Section -->
<section class="py-16 bg-white">
	<div class="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-2xl font-bold text-center text-slate-900 mb-8">Scholarship FAQ</h2>

		<div class="space-y-4">
			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">Who can apply?</h3>
				<p class="text-slate-600 text-sm">
					Anyone who faces financial constraints that prevent them from paying for a subscription.
					We especially welcome students, missionaries, and those in developing countries.
				</p>
			</div>

			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">How long does approval take?</h3>
				<p class="text-slate-600 text-sm">
					We review applications within 2-3 business days. You'll receive an email notification
					when your application has been reviewed.
				</p>
			</div>

			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">Is my information kept private?</h3>
				<p class="text-slate-600 text-sm">
					Yes, absolutely. All scholarship applications are confidential and only reviewed by
					our administrative team. We will never share your information.
				</p>
			</div>

			<div class="bg-slate-50 rounded-xl p-6">
				<h3 class="font-semibold text-slate-900 mb-2">Can I upgrade later?</h3>
				<p class="text-slate-600 text-sm">
					Yes! If your situation changes and you'd like to support the mission, you can
					upgrade to a paid tier at any time. Many scholarship recipients later become
					supporters who help fund scholarships for others.
				</p>
			</div>
		</div>
	</div>
</section>
