<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';
	import CodeEditorChirho from '$lib/components/CodeEditorChirho.svelte';

	let { data, form } = $props();

	let showCreateChirho = $state(false);
	let selectedWeekChirho = $state('');
	let selectedSessionChirho = $state('');
	let payloadFilesChirho = $state([]);
	let shellScriptChirho = $state('#!/bin/bash\n# Manna payload setup script\n\necho "Setting up your development environment..."\n\n# Your setup commands here');
	let payloadNameChirho = $state('');
	let payloadDescriptionChirho = $state('');
	let autoExecuteChirho = $state(true);

	const weeksChirho = Array.from({ length: 17 }, (_, i) => i + 2); // Weeks 2-18
	const sessionsChirho = [1, 2, 3];

	function handleFileSelectChirho(eventChirho) {
		const filesChirho = Array.from(eventChirho.target.files || []);
		payloadFilesChirho = filesChirho;
	}

	function formatBytesChirho(bytesChirho) {
		if (bytesChirho === 0) return '0 B';
		const kChirho = 1024;
		const sizesChirho = ['B', 'KB', 'MB', 'GB'];
		const iChirho = Math.floor(Math.log(bytesChirho) / Math.log(kChirho));
		return parseFloat((bytesChirho / Math.pow(kChirho, iChirho)).toFixed(2)) + ' ' + sizesChirho[iChirho];
	}

	function getWeekNameChirho(weekChirho) {
		const namesChirho = {
			2: 'Let There Be Light (CSS)',
			3: 'The Word Became Code (JS)',
			4: 'Truth & Logic',
			5: 'Collections & Community',
			6: 'Repetition & Persistence',
			7: 'The DOM',
			8: 'Forms & Input',
			9: 'Layout Mastery',
			10: 'Animation & Motion',
			11: 'Data & APIs',
			12: 'Local Storage',
			13: 'Scripture Memory App',
			14: 'Advanced JavaScript',
			15: 'Modern CSS',
			16: 'Interactive Bible Story',
			17: 'Final Project Start',
			18: 'Final Project & Celebration'
		};
		return namesChirho[weekChirho] || `Week ${weekChirho}`;
	}

	function handleSubmitEnhanceChirho() {
		return async function (eventChirho) {
			await eventChirho.update();
			if (eventChirho.result.type === 'success') {
				showCreateChirho = false;
				payloadNameChirho = '';
				payloadDescriptionChirho = '';
				shellScriptChirho = '#!/bin/bash\n# Manna payload setup script\n\necho "Setting up your development environment..."\n\n# Your setup commands here';
				payloadFilesChirho = [];
				selectedWeekChirho = '';
				selectedSessionChirho = '';
			}
		};
	}
</script>

<svelte:head>
	<title>Manna (Payloads) - Admin - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<div class="flex items-center justify-between mb-6">
		<div>
			<h1 class="text-2xl font-bold text-slate-900">Manna (Payloads)</h1>
			<p class="text-sm text-slate-600 mt-1">
				"Man shall not live by bread alone" - Matthew 4:4
			</p>
		</div>
		<button type="button" class="btn-primary" onclick={() => (showCreateChirho = !showCreateChirho)}>
			+ Create Manna
		</button>
	</div>

	{#if form?.successChirho}
		<div class="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-800 text-sm">
			{#if form.actionChirho === 'createPayloadChirho'}
				Manna "{form.nameChirho}" created and uploaded to R2!
			{:else if form.actionChirho === 'deletePayloadChirho'}
				Manna deleted successfully.
			{:else}
				Action completed successfully.
			{/if}
		</div>
	{/if}

	{#if form?.errorChirho}
		<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">
			{form.errorChirho}
		</div>
	{/if}

	<!-- Stats -->
	<div class="grid grid-cols-4 gap-4 mb-6">
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-slate-900">{data.statsChirho?.totalChirho || 0}</div>
			<div class="text-sm text-slate-600">Total Payloads</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-amber-600">{data.statsChirho?.activeChirho || 0}</div>
			<div class="text-sm text-slate-600">Active</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-blue-600">{data.statsChirho?.weeksWithPayloadsChirho || 0}</div>
			<div class="text-sm text-slate-600">Weeks Covered</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-green-600">{data.statsChirho?.totalSizeMBChirho || '0'} MB</div>
			<div class="text-sm text-slate-600">Total Size</div>
		</div>
	</div>

	<!-- Create Manna Form -->
	{#if showCreateChirho}
		<div class="bg-white rounded-lg shadow-sm p-6 mb-6">
			<h2 class="font-semibold text-slate-900 mb-4 flex items-center gap-2">
				<span>🍞</span> Create New Manna Payload
			</h2>

			<form
				method="POST"
				action="?/createPayloadChirho"
				enctype="multipart/form-data"
				use:enhance={handleSubmitEnhanceChirho}
			>
				<div class="grid md:grid-cols-2 gap-4 mb-4">
					<div>
						<label for="weekChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Week
						</label>
						<select
							id="weekChirho"
							name="weekChirho"
							class="w-full rounded-lg border-slate-300"
							bind:value={selectedWeekChirho}
							required
						>
							<option value="">Select week...</option>
							{#each weeksChirho as weekChirho}
								<option value={weekChirho}>
									Week {weekChirho}: {getWeekNameChirho(weekChirho)}
								</option>
							{/each}
						</select>
					</div>

					<div>
						<label for="sessionChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Session
						</label>
						<select
							id="sessionChirho"
							name="sessionChirho"
							class="w-full rounded-lg border-slate-300"
							bind:value={selectedSessionChirho}
							required
						>
							<option value="">Select session...</option>
							{#each sessionsChirho as sessionChirho}
								<option value={sessionChirho}>Session {sessionChirho}</option>
							{/each}
						</select>
					</div>
				</div>

				<div class="mb-4">
					<label for="payloadNameChirho" class="block text-sm font-medium text-slate-700 mb-1">
						Payload Name
					</label>
					<input
						type="text"
						id="payloadNameChirho"
						name="payloadNameChirho"
						class="w-full rounded-lg border-slate-300"
						placeholder="e.g., CSS Color Changer"
						bind:value={payloadNameChirho}
						required
					/>
				</div>

				<div class="mb-4">
					<label for="payloadDescriptionChirho" class="block text-sm font-medium text-slate-700 mb-1">
						Description
					</label>
					<textarea
						id="payloadDescriptionChirho"
						name="payloadDescriptionChirho"
						rows="2"
						class="w-full rounded-lg border-slate-300"
						placeholder="Brief description of what this payload sets up..."
						bind:value={payloadDescriptionChirho}
					></textarea>
				</div>

				<div class="mb-4">
					<label class="block text-sm font-medium text-slate-700 mb-1">
						Shell Script (payload.sh)
					</label>
					<p class="text-xs text-slate-500 mb-2">
						This script will {autoExecuteChirho ? 'auto-execute' : 'be available for download'} when students access this Manna.
					</p>
					<input type="hidden" name="shellScriptChirho" value={shellScriptChirho} />
					<CodeEditorChirho
						code={shellScriptChirho}
						onchange={(newCodeChirho) => { shellScriptChirho = newCodeChirho; }}
						height="200px"
						language="shell"
					/>
				</div>

				<div class="mb-4">
					<label class="block text-sm font-medium text-slate-700 mb-1">
						Files to Include
					</label>
					<div class="border-2 border-dashed border-slate-300 rounded-lg p-6 text-center">
						<input
							type="file"
							name="payloadFilesChirho"
							multiple
							class="hidden"
							id="fileInputChirho"
							onchange={handleFileSelectChirho}
						/>
						<label for="fileInputChirho" class="cursor-pointer">
							<span class="text-4xl block mb-2">📁</span>
							<span class="text-slate-600">Click to select files or drag & drop</span>
							<span class="text-xs text-slate-400 block mt-1">
								HTML, CSS, JS, images, etc.
							</span>
						</label>
					</div>

					{#if payloadFilesChirho.length > 0}
						<div class="mt-3 space-y-2">
							{#each payloadFilesChirho as fileChirho}
								<div class="flex items-center justify-between bg-slate-50 rounded-lg px-3 py-2">
									<div class="flex items-center gap-2">
										<span class="text-slate-400">📄</span>
										<span class="text-sm text-slate-700">{fileChirho.name}</span>
									</div>
									<span class="text-xs text-slate-500">{formatBytesChirho(fileChirho.size)}</span>
								</div>
							{/each}
						</div>
					{/if}
				</div>

				<div class="mb-4">
					<label class="flex items-center gap-2">
						<input
							type="checkbox"
							name="autoExecuteChirho"
							bind:checked={autoExecuteChirho}
							class="rounded border-slate-300 text-amber-500"
						/>
						<span class="text-sm text-slate-700">
							Auto-execute shell script (recommended for setup tasks)
						</span>
					</label>
				</div>

				<div class="flex gap-2">
					<button type="submit" class="btn-primary">
						Upload to R2 & Create Manna
					</button>
					<button type="button" class="btn-secondary" onclick={() => (showCreateChirho = false)}>
						Cancel
					</button>
				</div>
			</form>
		</div>
	{/if}

	<!-- R2 Structure Info -->
	<div class="bg-amber-50 border border-amber-200 rounded-lg p-4 mb-6">
		<h3 class="font-semibold text-amber-900 mb-2 flex items-center gap-2">
			<span>ℹ️</span> R2 Bucket Structure
		</h3>
		<pre class="text-xs text-amber-800 bg-amber-100 rounded p-3 overflow-x-auto">sonshine-payloads-chirho/
├── week-02/
│   ├── session-1/
│   │   ├── payload.sh
│   │   └── files/
│   │       └── index.html
│   ├── session-2/
│   └── session-3/
├── week-03/
...
└── week-18/</pre>
	</div>

	<!-- Payloads by Week -->
	<div class="bg-white rounded-lg shadow-sm overflow-hidden">
		<div class="px-4 py-3 bg-slate-50 border-b">
			<h3 class="font-semibold text-slate-900">Payloads by Week</h3>
		</div>

		{#if !data.payloadsChirho || data.payloadsChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				<span class="text-4xl block mb-2">🍞</span>
				<p>No Manna payloads yet.</p>
				<p class="text-sm">Click "Create Manna" to upload your first payload.</p>
			</div>
		{:else}
			<div class="divide-y">
				{#each weeksChirho as weekChirho}
					{@const weekPayloadsChirho = (data.payloadsChirho || []).filter(p => p.weekNumber === weekChirho)}
					{#if weekPayloadsChirho.length > 0}
						<div class="p-4">
							<div class="flex items-center justify-between mb-3">
								<h4 class="font-medium text-slate-900">
									Week {weekChirho}: {getWeekNameChirho(weekChirho)}
								</h4>
								<span class="text-xs text-slate-500">
									{weekPayloadsChirho.length} payload{weekPayloadsChirho.length !== 1 ? 's' : ''}
								</span>
							</div>
							<div class="grid md:grid-cols-3 gap-3">
								{#each weekPayloadsChirho as payloadChirho}
									<div class="bg-slate-50 rounded-lg p-3 border border-slate-200">
										<div class="flex items-start justify-between">
											<div>
												<div class="font-medium text-slate-900 text-sm">
													{payloadChirho.name || `Session ${payloadChirho.sessionNumber}`}
												</div>
												<div class="text-xs text-slate-500 mt-0.5">
													Session {payloadChirho.sessionNumber}
												</div>
											</div>
											<span class="text-xs px-2 py-0.5 rounded-full {payloadChirho.isActive ? 'bg-green-100 text-green-700' : 'bg-slate-100 text-slate-600'}">
												{payloadChirho.isActive ? 'Active' : 'Draft'}
											</span>
										</div>
										{#if payloadChirho.description}
											<p class="text-xs text-slate-600 mt-2 line-clamp-2">
												{payloadChirho.description}
											</p>
										{/if}
										<div class="flex items-center justify-between mt-3">
											<div class="text-xs text-slate-400">
												{payloadChirho.fileCount || 0} files • {payloadChirho.autoExecute ? '▶ Auto' : '📥 Manual'}
											</div>
											<div class="flex gap-2">
												<a
													href="/admin-chirho/payloads-chirho/{payloadChirho.payloadId}"
													class="text-xs text-blue-600 hover:text-blue-800"
												>
													Edit
												</a>
												<form method="POST" action="?/deletePayloadChirho" use:enhance class="inline">
													<input type="hidden" name="payloadIdChirho" value={payloadChirho.payloadId} />
													<button
														type="submit"
														class="text-xs text-red-600 hover:text-red-800"
														onclick={(eChirho) => {
															if (!confirm('Delete this Manna payload?')) {
																eChirho.preventDefault();
															}
														}}
													>
														Delete
													</button>
												</form>
											</div>
										</div>
									</div>
								{/each}
							</div>
						</div>
					{/if}
				{/each}
			</div>
		{/if}
	</div>
</div>
