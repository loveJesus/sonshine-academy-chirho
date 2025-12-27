<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let showCreateFormChirho = $state(false);
	let editingOrgChirho = $state(null);

	/** @param {string} typeChirho */
	function getTypeIconChirho(typeChirho) {
		switch (typeChirho) {
			case 'church':
				return '⛪';
			case 'school':
				return '🏫';
			case 'homeschool':
				return '🏠';
			default:
				return '🏢';
		}
	}

	/** @param {string} typeChirho */
	function getTypeLabelChirho(typeChirho) {
		switch (typeChirho) {
			case 'church':
				return 'Church';
			case 'school':
				return 'School';
			case 'homeschool':
				return 'Homeschool Co-op';
			default:
				return 'Other';
		}
	}

	/** @param {Date | string | null} dateChirho */
	function formatDateChirho(dateChirho) {
		if (!dateChirho) return 'Unknown';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'short',
			day: 'numeric'
		});
	}
</script>

<div class="space-y-6">
	<!-- Header -->
	<div class="flex items-center justify-between">
		<div>
			<h1 class="text-2xl font-bold text-slate-900">Organizations</h1>
			<p class="text-slate-600">Manage churches, schools, and homeschool groups</p>
		</div>
		<button
			onclick={() => showCreateFormChirho = !showCreateFormChirho}
			class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg font-medium"
		>
			{showCreateFormChirho ? 'Cancel' : '+ Add Organization'}
		</button>
	</div>

	<!-- Messages -->
	{#if form?.success}
		<div class="bg-green-50 border border-green-200 rounded-lg p-4 text-green-800">
			Operation completed successfully!
		</div>
	{/if}
	{#if form?.error}
		<div class="bg-red-50 border border-red-200 rounded-lg p-4 text-red-800">
			{form.error}
		</div>
	{/if}

	<!-- Create Form -->
	{#if showCreateFormChirho}
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-6">
			<h2 class="text-lg font-semibold text-slate-900 mb-4">Add New Organization</h2>
			<form
				method="POST"
				action="?/create"
				use:enhance={() => {
					return async ({ update, result }) => {
						await update();
						if (result.type === 'success') {
							showCreateFormChirho = false;
						}
					};
				}}
				class="space-y-4"
			>
				<div class="grid md:grid-cols-2 gap-4">
					<div>
						<label for="name" class="block text-sm font-medium text-slate-700 mb-1">
							Organization Name *
						</label>
						<input
							type="text"
							id="name"
							name="name"
							required
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
							placeholder="e.g., First Baptist Church"
						/>
					</div>
					<div>
						<label for="organizationType" class="block text-sm font-medium text-slate-700 mb-1">
							Type *
						</label>
						<select
							id="organizationType"
							name="organizationType"
							required
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						>
							<option value="church">Church</option>
							<option value="school">School</option>
							<option value="homeschool">Homeschool Co-op</option>
							<option value="other">Other</option>
						</select>
					</div>
				</div>

				<div>
					<label for="description" class="block text-sm font-medium text-slate-700 mb-1">
						Description
					</label>
					<textarea
						id="description"
						name="description"
						rows="2"
						class="w-full border border-slate-300 rounded-lg px-3 py-2"
						placeholder="Brief description of the organization..."
					></textarea>
				</div>

				<div class="grid md:grid-cols-3 gap-4">
					<div>
						<label for="contactName" class="block text-sm font-medium text-slate-700 mb-1">
							Contact Name *
						</label>
						<input
							type="text"
							id="contactName"
							name="contactName"
							required
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>
					<div>
						<label for="contactEmail" class="block text-sm font-medium text-slate-700 mb-1">
							Contact Email *
						</label>
						<input
							type="email"
							id="contactEmail"
							name="contactEmail"
							required
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>
					<div>
						<label for="contactPhone" class="block text-sm font-medium text-slate-700 mb-1">
							Contact Phone
						</label>
						<input
							type="tel"
							id="contactPhone"
							name="contactPhone"
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>
				</div>

				<div class="grid md:grid-cols-3 gap-4">
					<div>
						<label for="city" class="block text-sm font-medium text-slate-700 mb-1">
							City
						</label>
						<input
							type="text"
							id="city"
							name="city"
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>
					<div>
						<label for="state" class="block text-sm font-medium text-slate-700 mb-1">
							State
						</label>
						<input
							type="text"
							id="state"
							name="state"
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>
					<div>
						<label for="maxStudents" class="block text-sm font-medium text-slate-700 mb-1">
							Max Students
						</label>
						<input
							type="number"
							id="maxStudents"
							name="maxStudents"
							value="50"
							min="1"
							class="w-full border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>
				</div>

				<div class="flex gap-3 pt-4">
					<button
						type="submit"
						class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg font-medium"
					>
						Create Organization
					</button>
					<button
						type="button"
						onclick={() => showCreateFormChirho = false}
						class="text-slate-600 hover:text-slate-800"
					>
						Cancel
					</button>
				</div>
			</form>
		</div>
	{/if}

	<!-- Stats -->
	<div class="grid grid-cols-4 gap-4">
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">{data.organizationsChirho.length}</div>
			<div class="text-sm text-slate-500">Total Organizations</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">
				{data.organizationsChirho.filter((o) => o.organizationType === 'church').length}
			</div>
			<div class="text-sm text-slate-500">Churches</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">
				{data.organizationsChirho.filter((o) => o.organizationType === 'school').length}
			</div>
			<div class="text-sm text-slate-500">Schools</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">
				{data.organizationsChirho.filter((o) => o.isActive).length}
			</div>
			<div class="text-sm text-slate-500">Active</div>
		</div>
	</div>

	<!-- Organizations List -->
	<div class="bg-white rounded-lg shadow-sm border border-slate-200">
		{#if data.organizationsChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				<div class="text-4xl mb-2">🏛️</div>
				<p>No organizations yet. Add one to get started!</p>
			</div>
		{:else}
			<div class="overflow-x-auto">
				<table class="w-full">
					<thead>
						<tr class="border-b border-slate-200 bg-slate-50">
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Organization</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Type</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Contact</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Location</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Status</th>
							<th class="text-right px-4 py-3 text-sm font-semibold text-slate-700">Actions</th>
						</tr>
					</thead>
					<tbody class="divide-y divide-slate-200">
						{#each data.organizationsChirho as orgChirho}
							<tr class="hover:bg-slate-50">
								<td class="px-4 py-3">
									<div class="flex items-center gap-3">
										<span class="text-2xl">{getTypeIconChirho(orgChirho.organizationType)}</span>
										<div>
											<div class="font-medium text-slate-900">{orgChirho.name}</div>
											<div class="text-xs text-slate-500">/{orgChirho.slug}</div>
										</div>
									</div>
								</td>
								<td class="px-4 py-3">
									<span class="text-sm text-slate-700">
										{getTypeLabelChirho(orgChirho.organizationType)}
									</span>
								</td>
								<td class="px-4 py-3">
									<div class="text-sm text-slate-900">{orgChirho.contactName}</div>
									<div class="text-xs text-slate-500">{orgChirho.contactEmail}</div>
								</td>
								<td class="px-4 py-3 text-sm text-slate-700">
									{#if orgChirho.city && orgChirho.state}
										{orgChirho.city}, {orgChirho.state}
									{:else}
										<span class="text-slate-400">-</span>
									{/if}
								</td>
								<td class="px-4 py-3">
									{#if orgChirho.isActive}
										<span class="text-xs px-2 py-1 rounded-full bg-green-100 text-green-700">Active</span>
									{:else}
										<span class="text-xs px-2 py-1 rounded-full bg-slate-100 text-slate-600">Inactive</span>
									{/if}
								</td>
								<td class="px-4 py-3 text-right">
									<div class="flex items-center justify-end gap-2">
										<form method="POST" action="?/toggle" use:enhance>
											<input type="hidden" name="organizationId" value={orgChirho.organizationId} />
											<button
												type="submit"
												class="text-sm text-blue-600 hover:text-blue-800"
											>
												{orgChirho.isActive ? 'Deactivate' : 'Activate'}
											</button>
										</form>
										<form method="POST" action="?/delete" use:enhance>
											<input type="hidden" name="organizationId" value={orgChirho.organizationId} />
											<button
												type="submit"
												class="text-sm text-red-600 hover:text-red-800"
												onclick={(e) => { if (!confirm('Delete this organization? This cannot be undone.')) e.preventDefault(); }}
											>
												Delete
											</button>
										</form>
									</div>
								</td>
							</tr>
						{/each}
					</tbody>
				</table>
			</div>
		{/if}
	</div>
</div>
