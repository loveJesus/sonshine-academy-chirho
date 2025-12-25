<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';
	import { page } from '$app/state';

	let { form } = $props();

	// Get OAuth error from URL if present
	const oauthErrorChirho = $derived(page.url.searchParams.get('error'));

	function getErrorMessageChirho(errorCode) {
		const errorsChirho = {
			oauth_not_configured: 'Google sign-in is not configured. Please use email login.',
			invalid_state: 'Session expired. Please try again.',
			email_not_verified: 'Your Google email is not verified.',
			oauth_failed: 'Google sign-in failed. Please try again.',
			missing_params: 'Invalid response from Google. Please try again.'
		};
		return errorsChirho[errorCode] || 'An error occurred. Please try again.';
	}
</script>

<svelte:head>
	<title>Login - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[80vh] flex items-center justify-center py-12 px-4">
	<div class="max-w-md w-full">
		<div class="text-center mb-8">
			<span class="text-5xl" aria-hidden="true">☀️</span>
			<h1 class="mt-4 text-3xl font-bold text-slate-900">Welcome Back</h1>
			<p class="mt-2 text-slate-600">Sign in to continue your learning journey</p>
		</div>

		<div class="card">
			{#if form?.error}
				<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
					{form.error}
				</div>
			{/if}

			{#if oauthErrorChirho}
				<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
					{getErrorMessageChirho(oauthErrorChirho)}
				</div>
			{/if}

			<!-- Google Sign In -->
			<a
				href="/auth-chirho/google-chirho"
				class="flex items-center justify-center gap-3 w-full py-3 px-4 border border-slate-300 rounded-lg bg-white hover:bg-slate-50 transition-colors no-underline text-slate-700 font-medium"
			>
				<svg class="w-5 h-5" viewBox="0 0 24 24" aria-hidden="true">
					<path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
					<path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
					<path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
					<path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
				</svg>
				Continue with Google
			</a>

			<div class="relative my-6">
				<div class="absolute inset-0 flex items-center">
					<div class="w-full border-t border-slate-200"></div>
				</div>
				<div class="relative flex justify-center text-sm">
					<span class="px-4 bg-white text-slate-500">or sign in with email</span>
				</div>
			</div>

			<form method="POST" use:enhance class="space-y-4">
				<div>
					<label for="username" class="block text-sm font-medium text-slate-700 mb-1">
						Username or Email
					</label>
					<input
						type="text"
						id="username"
						name="username"
						required
						class="w-full"
						placeholder="Enter your username or email"
						value={form?.username ?? ''}
					/>
				</div>

				<div>
					<label for="password" class="block text-sm font-medium text-slate-700 mb-1">
						Password
					</label>
					<input
						type="password"
						id="password"
						name="password"
						required
						class="w-full"
						placeholder="Enter your password"
					/>
				</div>

				<button type="submit" class="btn-primary w-full">
					Sign In
				</button>
			</form>

			<div class="mt-6 text-center text-sm text-slate-600">
				Don't have an account?
				<a href="/auth-chirho/register" class="text-blue-600 hover:text-blue-800">
					Create one free
				</a>
			</div>
		</div>

		<p class="mt-8 text-center text-sm text-slate-500 italic">
			"Come unto me, all ye that labour and are heavy laden, and I will give you rest."
			<br />— Matthew 11:28 (KJV)
		</p>
	</div>
</div>
