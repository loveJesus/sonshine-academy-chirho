<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { form } = $props();
</script>

<svelte:head>
	<title>Create Account - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[80vh] flex items-center justify-center py-12 px-4">
	<div class="max-w-md w-full">
		<div class="text-center mb-8">
			<span class="text-5xl" aria-hidden="true">☀️</span>
			<h1 class="mt-4 text-3xl font-bold text-slate-900">Join Sonshine Christian Code Academy</h1>
			<p class="mt-2 text-slate-600">Create your free account and start learning</p>
		</div>

		<div class="card">
			{#if form?.error}
				<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
					{form.error}
				</div>
			{/if}

			<!-- Google Sign Up -->
			<a
				href="/auth-chirho/google"
				class="flex items-center justify-center gap-3 w-full py-3 px-4 border border-slate-300 rounded-lg bg-white hover:bg-slate-50 transition-colors no-underline text-slate-700 font-medium"
			>
				<svg class="w-5 h-5" viewBox="0 0 24 24" aria-hidden="true">
					<path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
					<path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
					<path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
					<path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
				</svg>
				Sign up with Google
			</a>

			<div class="relative my-6">
				<div class="absolute inset-0 flex items-center">
					<div class="w-full border-t border-slate-200"></div>
				</div>
				<div class="relative flex justify-center text-sm">
					<span class="px-4 bg-white text-slate-500">or create with email</span>
				</div>
			</div>

			<form method="POST" use:enhance class="space-y-4">
				<div>
					<label for="username" class="block text-sm font-medium text-slate-700 mb-1">
						Username
					</label>
					<input
						type="text"
						id="username"
						name="username"
						required
						minlength="3"
						maxlength="30"
						pattern="[a-zA-Z0-9_-]+"
						class="w-full"
						placeholder="Choose a username"
						value={form?.username ?? ''}
					/>
					<p class="mt-1 text-xs text-slate-500">Letters, numbers, underscores, and dashes only</p>
				</div>

				<div>
					<label for="email" class="block text-sm font-medium text-slate-700 mb-1">
						Email
					</label>
					<input
						type="email"
						id="email"
						name="email"
						required
						class="w-full"
						placeholder="your@email.com"
						value={form?.email ?? ''}
					/>
				</div>

				<div>
					<label for="displayName" class="block text-sm font-medium text-slate-700 mb-1">
						Display Name (optional)
					</label>
					<input
						type="text"
						id="displayName"
						name="displayName"
						maxlength="50"
						class="w-full"
						placeholder="How should we call you?"
						value={form?.displayName ?? ''}
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
						minlength="8"
						class="w-full"
						placeholder="At least 8 characters"
					/>
				</div>

				<div>
					<label for="confirmPassword" class="block text-sm font-medium text-slate-700 mb-1">
						Confirm Password
					</label>
					<input
						type="password"
						id="confirmPassword"
						name="confirmPassword"
						required
						class="w-full"
						placeholder="Type your password again"
					/>
				</div>

				<div>
					<label for="inviteCode" class="block text-sm font-medium text-slate-700 mb-1">
						Organization Invite Code (optional)
					</label>
					<input
						type="text"
						id="inviteCode"
						name="inviteCode"
						class="w-full"
						placeholder="e.g., GRACE-2025-ABC123"
						value={form?.inviteCode ?? ''}
					/>
					<p class="mt-1 text-xs text-slate-500">If your church or school gave you a code, enter it here</p>
				</div>

				<button type="submit" class="btn-primary w-full">
					Create Account
				</button>
			</form>

			<div class="mt-6 text-center text-sm text-slate-600">
				Already have an account?
				<a href="/auth-chirho/login" class="text-blue-600 hover:text-blue-800">
					Sign in
				</a>
			</div>
		</div>

		<p class="mt-8 text-center text-sm text-slate-500 italic">
			"Train up a child in the way he should go: and when he is old, he will not depart from it."
			<br />— Proverbs 22:6
		</p>
	</div>
</div>
