<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';

	let { data, form } = $props();

	let isExportingChirho = $state(false);
	let isDeletingChirho = $state(false);
	let showDeleteConfirmChirho = $state(false);
	let deleteConfirmTextChirho = $state('');

	function handleExportChirho() {
		isExportingChirho = true;
		return async function ({ result, update }) {
			isExportingChirho = false;
			await update();
		};
	}

	function handleDeleteChirho() {
		isDeletingChirho = true;
		return async function ({ result, update }) {
			isDeletingChirho = false;
			if (result.type === 'redirect') {
				goto(result.location);
			}
			await update();
		};
	}
</script>

<svelte:head>
	<title>Your Data - Sonshine Christian Code Academy</title>
	<meta name="description" content="Manage your personal data at Sonshine Christian Code Academy. Export your data or delete your account." />
</svelte:head>

<div class="min-h-screen bg-slate-50">
	<!-- Header -->
	<div class="bg-gradient-to-br from-slate-900 to-slate-800 text-white py-12">
		<div class="max-w-4xl mx-auto px-4">
			<nav class="text-sm text-slate-400 mb-4">
				<a href="/settings-chirho" class="hover:text-white no-underline">Settings</a>
				<span class="mx-2">/</span>
				<span class="text-white">Your Data</span>
			</nav>
			<h1 class="text-3xl font-bold mb-2">Your Data</h1>
			<p class="text-slate-300">Manage your personal data and privacy preferences</p>
		</div>
	</div>

	<!-- Content -->
	<div class="max-w-4xl mx-auto px-4 py-8">
		{#if !data.userChirho}
			<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-8 text-center">
				<div class="text-4xl mb-4">🔒</div>
				<h2 class="text-xl font-bold text-slate-900 mb-2">Login Required</h2>
				<p class="text-slate-600 mb-6">Please log in to manage your data.</p>
				<a href="/auth-chirho/login?redirect=/settings-chirho/data-chirho" class="btn-primary no-underline">
					Log In
				</a>
			</div>
		{:else}
			<div class="space-y-8">
				<!-- Data Overview -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<h2 class="text-xl font-bold text-slate-900 mb-4">Your Data Overview</h2>
					<p class="text-slate-600 mb-4">
						We collect and store data to provide you with the best learning experience. Here's what we have:
					</p>

					<div class="grid md:grid-cols-2 gap-4">
						<div class="bg-slate-50 rounded-lg p-4">
							<h3 class="font-semibold text-slate-900 text-sm mb-2">Account Information</h3>
							<ul class="text-sm text-slate-600 space-y-1">
								<li>• Email: {data.userChirho.email}</li>
								<li>• Username: {data.userChirho.username}</li>
								<li>• Display Name: {data.userChirho.displayName || 'Not set'}</li>
								<li>• Account Created: {new Date(data.userChirho.createdAt).toLocaleDateString()}</li>
							</ul>
						</div>

						<div class="bg-slate-50 rounded-lg p-4">
							<h3 class="font-semibold text-slate-900 text-sm mb-2">Learning Data</h3>
							<ul class="text-sm text-slate-600 space-y-1">
								<li>• Quest Coins: {data.userChirho.questCoinsBalance || 0}</li>
								<li>• Courses Enrolled: {data.statsChirho?.coursesEnrolled || 0}</li>
								<li>• Quests Completed: {data.statsChirho?.questsCompleted || 0}</li>
								<li>• Lessons Completed: {data.statsChirho?.lessonsCompleted || 0}</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- Export Data -->
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 p-6">
					<div class="flex items-start gap-4">
						<div class="text-3xl">📦</div>
						<div class="flex-1">
							<h2 class="text-xl font-bold text-slate-900 mb-2">Export Your Data</h2>
							<p class="text-slate-600 mb-4">
								Download a copy of all your personal data in JSON format. This includes your account information, learning progress, quest completions, and feedback submissions.
							</p>

							{#if form?.exportErrorChirho}
								<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
									{form.exportErrorChirho}
								</div>
							{/if}

							<form method="POST" action="?/exportData" use:enhance={handleExportChirho}>
								<button
									type="submit"
									disabled={isExportingChirho}
									class="bg-blue-600 hover:bg-blue-700 disabled:bg-blue-300 text-white font-medium px-6 py-2 rounded-lg transition-colors flex items-center gap-2"
								>
									{#if isExportingChirho}
										<svg class="animate-spin h-4 w-4" viewBox="0 0 24 24">
											<circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
											<path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
										</svg>
										Preparing Export...
									{:else}
										<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
											<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
										</svg>
										Download My Data
									{/if}
								</button>
							</form>
						</div>
					</div>
				</div>

				<!-- Delete Account -->
				<div class="bg-white rounded-xl shadow-sm border border-red-200 p-6">
					<div class="flex items-start gap-4">
						<div class="text-3xl">⚠️</div>
						<div class="flex-1">
							<h2 class="text-xl font-bold text-red-700 mb-2">Delete Your Account</h2>
							<p class="text-slate-600 mb-4">
								Permanently delete your account and all associated data. This action cannot be undone.
							</p>

							<div class="bg-red-50 border border-red-200 rounded-lg p-4 mb-4">
								<h3 class="font-semibold text-red-800 text-sm mb-2">What will be deleted:</h3>
								<ul class="text-sm text-red-700 space-y-1">
									<li>• Your account and profile information</li>
									<li>• All learning progress and course enrollments</li>
									<li>• Quest completions and Quest Coins</li>
									<li>• Feedback submissions</li>
									<li>• Any associated OAuth connections</li>
								</ul>
							</div>

							{#if form?.deleteErrorChirho}
								<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm" role="alert">
									{form.deleteErrorChirho}
								</div>
							{/if}

							{#if !showDeleteConfirmChirho}
								<button
									onclick={() => { showDeleteConfirmChirho = true; }}
									class="bg-red-100 hover:bg-red-200 text-red-700 font-medium px-6 py-2 rounded-lg transition-colors"
								>
									I Want to Delete My Account
								</button>
							{:else}
								<div class="bg-red-100 border border-red-300 rounded-lg p-4">
									<p class="text-red-800 font-medium mb-3">
										To confirm deletion, type "DELETE" below:
									</p>
									<form method="POST" action="?/deleteAccount" use:enhance={handleDeleteChirho}>
										<input
											type="text"
											bind:value={deleteConfirmTextChirho}
											name="confirmText"
											placeholder="Type DELETE to confirm"
											class="w-full px-4 py-2 border border-red-300 rounded-lg mb-3 focus:ring-2 focus:ring-red-500 focus:border-transparent"
											autocomplete="off"
										/>
										<div class="flex gap-3">
											<button
												type="button"
												onclick={() => { showDeleteConfirmChirho = false; deleteConfirmTextChirho = ''; }}
												class="px-4 py-2 text-slate-600 hover:text-slate-800"
											>
												Cancel
											</button>
											<button
												type="submit"
												disabled={isDeletingChirho || deleteConfirmTextChirho !== 'DELETE'}
												class="bg-red-600 hover:bg-red-700 disabled:bg-red-300 disabled:cursor-not-allowed text-white font-medium px-6 py-2 rounded-lg transition-colors flex items-center gap-2"
											>
												{#if isDeletingChirho}
													<svg class="animate-spin h-4 w-4" viewBox="0 0 24 24">
														<circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
														<path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
													</svg>
													Deleting...
												{:else}
													Permanently Delete Account
												{/if}
											</button>
										</div>
									</form>
								</div>
							{/if}
						</div>
					</div>
				</div>

				<!-- Privacy Info -->
				<div class="bg-amber-50 border border-amber-200 rounded-xl p-6 text-center">
					<p class="text-amber-800 text-sm italic mb-2">
						"The integrity of the upright guides them." — Proverbs 11:3
					</p>
					<p class="text-amber-700 text-sm">
						For more information about how we handle your data, please read our
						<a href="/privacy-chirho" class="underline hover:no-underline">Privacy Policy</a>.
					</p>
				</div>
			</div>
		{/if}
	</div>
</div>
