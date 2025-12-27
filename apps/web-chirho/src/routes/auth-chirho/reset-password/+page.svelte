<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { form, data } = $props();
	let isSubmittingChirho = $state(false);
	let showPasswordChirho = $state(false);
	let showConfirmPasswordChirho = $state(false);
</script>

<svelte:head>
	<title>Reset Password - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[80vh] flex items-center justify-center py-12 px-4">
	<div class="max-w-md w-full">
		<div class="text-center mb-8">
			<span class="text-5xl" aria-hidden="true">🔐</span>
			<h1 class="mt-4 text-3xl font-bold text-slate-900">Set New Password</h1>
			{#if data.validTokenChirho}
				<p class="mt-2 text-slate-600">
					Choose a strong password for your account.
				</p>
			{/if}
		</div>

		<div class="card">
			{#if form?.successChirho}
				<!-- Password reset successful -->
				<div class="p-4 bg-green-50 border border-green-200 rounded-lg text-green-700" role="status">
					<div class="flex items-start gap-3">
						<span class="text-2xl" aria-hidden="true">✓</span>
						<div>
							<p class="font-medium">Password Updated!</p>
							<p class="text-sm mt-1">Your password has been successfully reset. You can now sign in with your new password.</p>
						</div>
					</div>
				</div>

				<div class="mt-6 text-center">
					<a href="/auth-chirho/login" class="btn-primary inline-block">
						Sign In
					</a>
				</div>
			{:else if !data.validTokenChirho}
				<!-- Invalid or expired token -->
				<div class="p-4 bg-amber-50 border border-amber-200 rounded-lg text-amber-700" role="alert">
					<div class="flex items-start gap-3">
						<span class="text-2xl" aria-hidden="true">!</span>
						<div>
							<p class="font-medium">Link Invalid or Expired</p>
							<p class="text-sm mt-1">{data.errorChirho}</p>
						</div>
					</div>
				</div>

				<div class="mt-6 text-center">
					<a href="/auth-chirho/forgot-password" class="btn-primary inline-block">
						Request New Link
					</a>
				</div>
			{:else}
				<!-- Password reset form -->
				{#if form?.errorChirho}
					<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
						{form.errorChirho}
						{#if form?.expiredChirho}
							<a href="/auth-chirho/forgot-password" class="underline ml-1">Request a new link</a>
						{/if}
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
					<input type="hidden" name="token" value={data.tokenChirho} />

					<div>
						<label for="password" class="block text-sm font-medium text-slate-700 mb-1">
							New Password
						</label>
						<div class="relative">
							<input
								type={showPasswordChirho ? 'text' : 'password'}
								id="password"
								name="password"
								required
								minlength="8"
								autocomplete="new-password"
								class="w-full pr-10"
								placeholder="At least 8 characters"
								disabled={isSubmittingChirho}
							/>
							<button
								type="button"
								onclick={() => showPasswordChirho = !showPasswordChirho}
								class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600"
								aria-label={showPasswordChirho ? 'Hide password' : 'Show password'}
							>
								{showPasswordChirho ? '🙈' : '👁️'}
							</button>
						</div>
						<p class="mt-1 text-xs text-slate-500">Must be at least 8 characters</p>
					</div>

					<div>
						<label for="confirmPassword" class="block text-sm font-medium text-slate-700 mb-1">
							Confirm New Password
						</label>
						<div class="relative">
							<input
								type={showConfirmPasswordChirho ? 'text' : 'password'}
								id="confirmPassword"
								name="confirmPassword"
								required
								minlength="8"
								autocomplete="new-password"
								class="w-full pr-10"
								placeholder="Confirm your new password"
								disabled={isSubmittingChirho}
							/>
							<button
								type="button"
								onclick={() => showConfirmPasswordChirho = !showConfirmPasswordChirho}
								class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600"
								aria-label={showConfirmPasswordChirho ? 'Hide password' : 'Show password'}
							>
								{showConfirmPasswordChirho ? '🙈' : '👁️'}
							</button>
						</div>
					</div>

					<button
						type="submit"
						class="btn-primary w-full"
						disabled={isSubmittingChirho}
					>
						{#if isSubmittingChirho}
							Updating Password...
						{:else}
							Reset Password
						{/if}
					</button>
				</form>

				<div class="mt-6 text-center text-sm text-slate-600">
					<a href="/auth-chirho/login" class="text-blue-600 hover:text-blue-800">
						Return to login
					</a>
				</div>
			{/if}
		</div>

		<p class="mt-8 text-center text-sm text-slate-500 italic">
			"He restoreth my soul: he leadeth me in the paths of righteousness for his name's sake."
			<br />— Psalm 23:3 (KJV)
		</p>
	</div>
</div>
