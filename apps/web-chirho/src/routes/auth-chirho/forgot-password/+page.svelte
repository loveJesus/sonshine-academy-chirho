<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';

	let { form, data } = $props();
	let isSubmittingChirho = $state(false);

	// Redirect if logged in
	$effect(() => {
		if (data.redirectChirho) {
			goto(data.redirectChirho);
		}
	});
</script>

<svelte:head>
	<title>Forgot Password - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[80vh] flex items-center justify-center py-12 px-4">
	<div class="max-w-md w-full">
		<div class="text-center mb-8">
			<span class="text-5xl" aria-hidden="true">🔑</span>
			<h1 class="mt-4 text-3xl font-bold text-slate-900">Reset Your Password</h1>
			<p class="mt-2 text-slate-600">
				Enter your email address and we'll send you instructions to reset your password.
			</p>
		</div>

		<div class="card">
			{#if form?.successChirho}
				<div class="p-4 bg-green-50 border border-green-200 rounded-lg text-green-700" role="status">
					<div class="flex items-start gap-3">
						<span class="text-2xl" aria-hidden="true">✓</span>
						<div>
							<p class="font-medium">Check your email</p>
							<p class="text-sm mt-1">{form.messageChirho}</p>
						</div>
					</div>
				</div>

				<div class="mt-6 text-center">
					<a href="/auth-chirho/login" class="text-blue-600 hover:text-blue-800">
						Return to login
					</a>
				</div>
			{:else}
				{#if form?.errorChirho}
					<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
						{form.errorChirho}
					</div>
				{/if}

				<form
					method="POST"
					use:enhance={() => {
						isSubmittingChirho = true;
						return async ({ update }) => {
							await update();
							isSubmittingChirho = false;
						};
					}}
					class="space-y-4"
				>
					<div>
						<label for="email" class="block text-sm font-medium text-slate-700 mb-1">
							Email Address
						</label>
						<input
							type="email"
							id="email"
							name="email"
							required
							autocomplete="email"
							class="w-full"
							placeholder="Enter your email address"
							value={form?.email ?? ''}
							disabled={isSubmittingChirho}
						/>
					</div>

					<button
						type="submit"
						class="btn-primary w-full"
						disabled={isSubmittingChirho}
					>
						{#if isSubmittingChirho}
							Sending...
						{:else}
							Send Reset Instructions
						{/if}
					</button>
				</form>

				<div class="mt-6 text-center text-sm text-slate-600">
					Remember your password?
					<a href="/auth-chirho/login" class="text-blue-600 hover:text-blue-800">
						Sign in
					</a>
				</div>
			{/if}
		</div>

		<p class="mt-8 text-center text-sm text-slate-500 italic">
			"The Lord is my strength and my shield; my heart trusted in him, and I am helped."
			<br />— Psalm 28:7 (KJV)
		</p>
	</div>
</div>
