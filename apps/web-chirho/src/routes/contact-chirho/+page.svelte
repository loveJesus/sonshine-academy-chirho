<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { form } = $props();

	let isSubmittingChirho = $state(false);
	let submittedChirho = $state(false);

	function handleSubmitChirho() {
		isSubmittingChirho = true;
		return async function ({ result, update }) {
			isSubmittingChirho = false;
			if (result.type === 'success') {
				submittedChirho = true;
			}
			await update();
		};
	}
</script>

<svelte:head>
	<title>Contact Us - Sonshine Christian Code Academy</title>
	<meta name="description" content="Get in touch with Sonshine Christian Code Academy. We're here to help with questions, support, and feedback." />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Header -->
	<div class="bg-gradient-to-br from-amber-500 to-amber-600 text-white py-16">
		<div class="max-w-4xl mx-auto px-4 text-center">
			<h1 class="text-4xl font-bold mb-4">Contact Us</h1>
			<p class="text-amber-100 text-lg">We'd love to hear from you! Reach out with questions, feedback, or just to say hello.</p>
		</div>
	</div>

	<!-- Content -->
	<div class="max-w-4xl mx-auto px-4 py-12">
		<div class="grid md:grid-cols-3 gap-8">
			<!-- Contact Methods -->
			<div class="md:col-span-1 space-y-6">
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<h2 class="font-semibold text-slate-900 mb-4">Quick Contact</h2>

					<div class="space-y-4">
						<div class="flex items-start gap-3">
							<div class="text-amber-500 text-xl">📧</div>
							<div>
								<h3 class="font-medium text-slate-900 text-sm">General Inquiries</h3>
								<a href="mailto:hello@sonshinecoders.org" class="text-blue-600 text-sm hover:underline">
									hello@sonshinecoders.org
								</a>
							</div>
						</div>

						<div class="flex items-start gap-3">
							<div class="text-amber-500 text-xl">🛠️</div>
							<div>
								<h3 class="font-medium text-slate-900 text-sm">Technical Support</h3>
								<a href="mailto:support@sonshinecoders.org" class="text-blue-600 text-sm hover:underline">
									support@sonshinecoders.org
								</a>
							</div>
						</div>

						<div class="flex items-start gap-3">
							<div class="text-amber-500 text-xl">🔒</div>
							<div>
								<h3 class="font-medium text-slate-900 text-sm">Privacy Concerns</h3>
								<a href="mailto:privacy@sonshinecoders.org" class="text-blue-600 text-sm hover:underline">
									privacy@sonshinecoders.org
								</a>
							</div>
						</div>

						<div class="flex items-start gap-3">
							<div class="text-amber-500 text-xl">💬</div>
							<div>
								<h3 class="font-medium text-slate-900 text-sm">Community</h3>
								<a href="https://discord.gg/sonshinecoders" target="_blank" rel="noopener noreferrer" class="text-blue-600 text-sm hover:underline">
									Join our Discord
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="bg-amber-50 rounded-xl border border-amber-200 p-6">
					<h2 class="font-semibold text-amber-900 mb-2">Response Time</h2>
					<p class="text-amber-800 text-sm">
						We typically respond within 24-48 hours. For urgent matters, please mention "URGENT" in your subject line.
					</p>
				</div>
			</div>

			<!-- Contact Form -->
			<div class="md:col-span-2">
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-8">
					{#if submittedChirho}
						<div class="text-center py-8">
							<div class="text-6xl mb-4">✉️</div>
							<h2 class="text-2xl font-bold text-slate-900 mb-2">Message Sent!</h2>
							<p class="text-slate-600 mb-6">
								Thank you for reaching out. We'll get back to you as soon as possible.
							</p>
							<button
								onclick={() => { submittedChirho = false; }}
								class="text-amber-600 hover:text-amber-700 font-medium"
							>
								Send another message
							</button>
						</div>
					{:else}
						<h2 class="text-xl font-bold text-slate-900 mb-6">Send us a Message</h2>

						{#if form?.errorChirho}
							<div class="mb-6 p-4 bg-red-50 border border-red-200 rounded-lg text-red-700" role="alert">
								{form.errorChirho}
							</div>
						{/if}

						<form method="POST" use:enhance={handleSubmitChirho} class="space-y-6">
							<div class="grid md:grid-cols-2 gap-4">
								<div>
									<label for="name" class="block text-sm font-medium text-slate-700 mb-1">
										Your Name <span class="text-red-500">*</span>
									</label>
									<input
										type="text"
										id="name"
										name="name"
										required
										class="w-full px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
										placeholder="John Doe"
									/>
								</div>

								<div>
									<label for="email" class="block text-sm font-medium text-slate-700 mb-1">
										Email Address <span class="text-red-500">*</span>
									</label>
									<input
										type="email"
										id="email"
										name="email"
										required
										class="w-full px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
										placeholder="john@example.com"
									/>
								</div>
							</div>

							<div>
								<label for="subject" class="block text-sm font-medium text-slate-700 mb-1">
									Subject <span class="text-red-500">*</span>
								</label>
								<select
									id="subject"
									name="subject"
									required
									class="w-full px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
								>
									<option value="">Select a topic...</option>
									<option value="general">General Inquiry</option>
									<option value="support">Technical Support</option>
									<option value="billing">Billing Question</option>
									<option value="scholarship">Scholarship Inquiry</option>
									<option value="organization">Organization/School Partnership</option>
									<option value="feedback">Feedback or Suggestion</option>
									<option value="bug">Report a Bug</option>
									<option value="other">Other</option>
								</select>
							</div>

							<div>
								<label for="message" class="block text-sm font-medium text-slate-700 mb-1">
									Message <span class="text-red-500">*</span>
								</label>
								<textarea
									id="message"
									name="message"
									required
									rows="6"
									class="w-full px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent resize-y"
									placeholder="How can we help you?"
								></textarea>
							</div>

							<div class="flex items-start gap-2">
								<input
									type="checkbox"
									id="newsletter"
									name="newsletter"
									class="mt-1 w-4 h-4 text-amber-500 border-slate-300 rounded focus:ring-amber-500"
								/>
								<label for="newsletter" class="text-sm text-slate-600">
									I'd like to receive occasional updates about new courses and features
								</label>
							</div>

							<button
								type="submit"
								disabled={isSubmittingChirho}
								class="w-full bg-amber-500 hover:bg-amber-600 disabled:bg-amber-300 text-white font-semibold py-3 px-6 rounded-lg transition-colors flex items-center justify-center gap-2"
							>
								{#if isSubmittingChirho}
									<svg class="animate-spin h-5 w-5" viewBox="0 0 24 24">
										<circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
										<path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
									</svg>
									Sending...
								{:else}
									Send Message
								{/if}
							</button>
						</form>
					{/if}
				</div>
			</div>
		</div>

		<!-- FAQ Link -->
		<div class="mt-12 text-center">
			<p class="text-slate-600 mb-4">
				Looking for quick answers? Check out our Help & FAQ section.
			</p>
			<a href="/help-chirho" class="inline-flex items-center gap-2 text-amber-600 hover:text-amber-700 font-medium">
				<span>Visit Help Center</span>
				<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
				</svg>
			</a>
		</div>
	</div>
</div>
