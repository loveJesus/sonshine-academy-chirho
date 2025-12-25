<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let isSavingProfileChirho = $state(false);
	let isSavingEmailChirho = $state(false);
	let selectedColorChirho = $state('#3B82F6');

	// Sync color with user data (tracks changes)
	const userColorChirho = $derived(data.userChirho.backgroundColor || '#3B82F6');
	$effect(() => {
		selectedColorChirho = userColorChirho;
	});

	function getInitialsChirho(nameChirho) {
		if (!nameChirho) return '?';
		const wordsChirho = nameChirho.split(' ');
		if (wordsChirho.length >= 2) {
			return wordsChirho[0][0] + wordsChirho[1][0];
		}
		return nameChirho.substring(0, 2).toUpperCase();
	}
</script>

<svelte:head>
	<title>Settings - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Header -->
	<header class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-12">
		<div class="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
			<h1 class="text-3xl font-bold">Settings</h1>
			<p class="text-slate-300 mt-2">Manage your account and preferences</p>
		</div>
	</header>

	<main class="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
		<!-- Success/Error Messages -->
		{#if form?.success}
			<div class="mb-6 bg-green-50 border border-green-200 rounded-lg p-4" role="alert">
				<p class="text-green-800">{form.message}</p>
			</div>
		{/if}
		{#if form?.error}
			<div class="mb-6 bg-red-50 border border-red-200 rounded-lg p-4" role="alert">
				<p class="text-red-800">{form.error}</p>
			</div>
		{/if}

		<!-- Profile Section -->
		<section class="bg-white rounded-xl shadow-sm border border-slate-200 mb-6">
			<div class="px-6 py-4 border-b border-slate-200">
				<h2 class="text-lg font-semibold text-slate-900">Profile</h2>
				<p class="text-sm text-slate-500">Your public profile information</p>
			</div>

			<form
				method="POST"
				action="?/updateProfile"
				use:enhance={() => {
					isSavingProfileChirho = true;
					return async ({ update }) => {
						await update();
						isSavingProfileChirho = false;
					};
				}}
				class="p-6 space-y-6"
			>
				<!-- Avatar Preview -->
				<div class="flex items-center gap-6">
					<div
						class="w-20 h-20 rounded-full flex items-center justify-center text-2xl font-bold text-white"
						style="background-color: {selectedColorChirho}"
					>
						{getInitialsChirho(data.userChirho.displayName || data.userChirho.username)}
					</div>
					<div>
						<p class="font-medium text-slate-900">@{data.userChirho.username}</p>
						<p class="text-sm text-slate-500">Member since {new Date(data.userChirho.createdAt).toLocaleDateString()}</p>
					</div>
				</div>

				<!-- Display Name -->
				<div>
					<label for="displayName" class="block text-sm font-medium text-slate-700 mb-1">
						Display Name
					</label>
					<input
						type="text"
						id="displayName"
						name="displayName"
						value={data.userChirho.displayName || ''}
						maxlength="50"
						placeholder="How should we call you?"
						class="w-full px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-amber-500"
					/>
					<p class="text-xs text-slate-500 mt-1">This is shown on the leaderboard and in comments</p>
				</div>

				<!-- Background Color -->
				<div>
					<span id="profile-color-label-chirho" class="block text-sm font-medium text-slate-700 mb-2">
						Profile Color
					</span>
					<div class="flex flex-wrap gap-2" role="radiogroup" aria-labelledby="profile-color-label-chirho">
						{#each data.backgroundColorsChirho as colorChirho}
							<label class="cursor-pointer">
								<input
									type="radio"
									name="backgroundColor"
									value={colorChirho.value}
									checked={selectedColorChirho === colorChirho.value}
									onchange={() => selectedColorChirho = colorChirho.value}
									class="sr-only"
								/>
								<span
									class="block w-10 h-10 rounded-full border-2 transition-all {selectedColorChirho === colorChirho.value ? 'border-slate-900 ring-2 ring-amber-400' : 'border-transparent hover:border-slate-300'}"
									style="background-color: {colorChirho.value}"
									title={colorChirho.name}
								></span>
							</label>
						{/each}
					</div>
				</div>

				<!-- GitHub Username -->
				<div>
					<label for="githubUsername" class="block text-sm font-medium text-slate-700 mb-1">
						GitHub Username
					</label>
					<div class="flex items-center">
						<span class="text-slate-500 mr-2">github.com/</span>
						<input
							type="text"
							id="githubUsername"
							name="githubUsername"
							value={data.userChirho.githubUsername || ''}
							placeholder="your-username"
							class="flex-1 px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-amber-500"
						/>
					</div>
					<p class="text-xs text-slate-500 mt-1">Link your GitHub for project showcases</p>
				</div>

				<!-- Save Button -->
				<div class="pt-4">
					<button
						type="submit"
						disabled={isSavingProfileChirho}
						class="bg-amber-500 hover:bg-amber-600 disabled:bg-slate-400 text-white font-semibold px-6 py-2 rounded-lg transition-colors"
					>
						{isSavingProfileChirho ? 'Saving...' : 'Save Profile'}
					</button>
				</div>
			</form>
		</section>

		<!-- Account Section -->
		<section class="bg-white rounded-xl shadow-sm border border-slate-200 mb-6">
			<div class="px-6 py-4 border-b border-slate-200">
				<h2 class="text-lg font-semibold text-slate-900">Account</h2>
				<p class="text-sm text-slate-500">Manage your account settings</p>
			</div>

			<form
				method="POST"
				action="?/updateEmail"
				use:enhance={() => {
					isSavingEmailChirho = true;
					return async ({ update }) => {
						await update();
						isSavingEmailChirho = false;
					};
				}}
				class="p-6 space-y-6"
			>
				<!-- Email -->
				<div>
					<label for="email" class="block text-sm font-medium text-slate-700 mb-1">
						Email Address
					</label>
					<input
						type="email"
						id="email"
						name="email"
						value={data.userChirho.email}
						class="w-full px-4 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-amber-500"
					/>
					<div class="flex items-center gap-2 mt-1">
						{#if data.userChirho.emailVerified}
							<span class="text-xs text-green-600 flex items-center gap-1">
								<svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
									<path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
								</svg>
								Verified
							</span>
						{:else}
							<span class="text-xs text-amber-600 flex items-center gap-1">
								<svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
									<path fill-rule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z" clip-rule="evenodd" />
								</svg>
								Not verified
							</span>
						{/if}
					</div>
				</div>

				<!-- Save Button -->
				<div>
					<button
						type="submit"
						disabled={isSavingEmailChirho}
						class="bg-slate-900 hover:bg-slate-800 disabled:bg-slate-400 text-white font-semibold px-6 py-2 rounded-lg transition-colors"
					>
						{isSavingEmailChirho ? 'Saving...' : 'Update Email'}
					</button>
				</div>
			</form>
		</section>

		<!-- Connected Accounts -->
		<section class="bg-white rounded-xl shadow-sm border border-slate-200 mb-6">
			<div class="px-6 py-4 border-b border-slate-200">
				<h2 class="text-lg font-semibold text-slate-900">Connected Accounts</h2>
				<p class="text-sm text-slate-500">Link external accounts for easy login</p>
			</div>

			<div class="p-6 space-y-4">
				<!-- Google -->
				<div class="flex items-center justify-between p-4 bg-slate-50 rounded-lg">
					<div class="flex items-center gap-3">
						<svg class="w-6 h-6" viewBox="0 0 24 24">
							<path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
							<path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
							<path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
							<path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
						</svg>
						<div>
							<p class="font-medium text-slate-900">Google</p>
							{#if data.linkedAccountsChirho.some(a => a.provider === 'google')}
								<p class="text-xs text-green-600">Connected</p>
							{:else}
								<p class="text-xs text-slate-500">Not connected</p>
							{/if}
						</div>
					</div>
					{#if data.linkedAccountsChirho.some(a => a.provider === 'google')}
						<span class="text-green-600">
							<svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
								<path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
							</svg>
						</span>
					{:else}
						<a
							href="/auth-chirho/google-chirho"
							class="bg-white border border-slate-300 hover:bg-slate-50 text-slate-700 px-4 py-2 rounded-lg text-sm font-medium transition-colors no-underline"
						>
							Connect
						</a>
					{/if}
				</div>

				<!-- GitHub (coming soon) -->
				<div class="flex items-center justify-between p-4 bg-slate-50 rounded-lg opacity-60">
					<div class="flex items-center gap-3">
						<svg class="w-6 h-6" viewBox="0 0 24 24" fill="currentColor">
							<path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
						</svg>
						<div>
							<p class="font-medium text-slate-900">GitHub</p>
							<p class="text-xs text-slate-500">Coming soon</p>
						</div>
					</div>
					<span class="text-xs text-slate-400">Coming soon</span>
				</div>
			</div>
		</section>

		<!-- Quest Coins Summary -->
		<section class="bg-white rounded-xl shadow-sm border border-slate-200 mb-6">
			<div class="px-6 py-4 border-b border-slate-200">
				<h2 class="text-lg font-semibold text-slate-900">Quest Coins</h2>
				<p class="text-sm text-slate-500">Your Quest Coin balance and stats</p>
			</div>

			<div class="p-6">
				<div class="flex items-center justify-between mb-6">
					<div>
						<p class="text-sm text-slate-500">Current Balance</p>
						<p class="text-3xl font-bold text-amber-600 flex items-center gap-2">
							<span>🪙</span>
							{data.userChirho.questCoinsBalance || 0}
						</p>
					</div>
					<a
						href="/quest-coins-chirho"
						class="text-amber-600 hover:text-amber-700 text-sm font-medium no-underline"
					>
						View Transaction History →
					</a>
				</div>

				<div class="grid grid-cols-2 gap-4">
					<a
						href="/quests-chirho"
						class="p-4 bg-gradient-to-br from-green-500 to-emerald-500 rounded-lg text-white text-center no-underline hover:opacity-90 transition-opacity"
					>
						<div class="text-2xl mb-1">⚔️</div>
						<div class="font-semibold">Earn More</div>
						<div class="text-xs text-white/80">Complete Quests</div>
					</a>
					<a
						href="/leaderboard-chirho"
						class="p-4 bg-gradient-to-br from-purple-500 to-indigo-500 rounded-lg text-white text-center no-underline hover:opacity-90 transition-opacity"
					>
						<div class="text-2xl mb-1">🏆</div>
						<div class="font-semibold">Leaderboard</div>
						<div class="text-xs text-white/80">See Rankings</div>
					</a>
				</div>
			</div>
		</section>

		<!-- Danger Zone -->
		<section class="bg-white rounded-xl shadow-sm border border-red-200 mb-6">
			<div class="px-6 py-4 border-b border-red-200 bg-red-50">
				<h2 class="text-lg font-semibold text-red-900">Danger Zone</h2>
				<p class="text-sm text-red-700">Irreversible actions</p>
			</div>

			<div class="p-6">
				<p class="text-slate-600 mb-4">
					Need to delete your account? Contact us at
					<a href="mailto:support@sonshinecodingschool.org" class="text-amber-600 hover:underline">
						support@sonshinecodingschool.org
					</a>
				</p>
			</div>
		</section>
	</main>
</div>
