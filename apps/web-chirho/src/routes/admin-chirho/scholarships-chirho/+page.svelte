<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	/** @param {string} statusChirho */
	function getStatusColorChirho(statusChirho) {
		switch (statusChirho) {
			case 'pending':
				return 'bg-amber-100 text-amber-700';
			case 'active':
				return 'bg-green-100 text-green-700';
			case 'revoked':
				return 'bg-red-100 text-red-700';
			case 'graduated':
				return 'bg-blue-100 text-blue-700';
			default:
				return 'bg-slate-100 text-slate-700';
		}
	}

	/** @param {Date | string | null} dateChirho */
	function formatDateChirho(dateChirho) {
		if (!dateChirho) return '-';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'short',
			day: 'numeric'
		});
	}

	const pendingCountChirho = $derived(
		data.scholarshipsChirho.filter((s) => s.status === 'pending').length
	);
	const activeCountChirho = $derived(
		data.scholarshipsChirho.filter((s) => s.status === 'active').length
	);
</script>

<div class="space-y-6">
	<!-- Header -->
	<div>
		<h1 class="text-2xl font-bold text-slate-900">Scholarships</h1>
		<p class="text-slate-600">Review and manage scholarship applications</p>
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

	<!-- Stats -->
	<div class="grid grid-cols-4 gap-4">
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">{data.scholarshipsChirho.length}</div>
			<div class="text-sm text-slate-500">Total Applications</div>
		</div>
		<div class="bg-amber-50 rounded-lg shadow-sm border border-amber-200 p-4">
			<div class="text-2xl font-bold text-amber-700">{pendingCountChirho}</div>
			<div class="text-sm text-amber-600">Pending Review</div>
		</div>
		<div class="bg-green-50 rounded-lg shadow-sm border border-green-200 p-4">
			<div class="text-2xl font-bold text-green-700">{activeCountChirho}</div>
			<div class="text-sm text-green-600">Active Scholarships</div>
		</div>
		<div class="bg-slate-50 rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-700">
				{data.scholarshipsChirho.filter((s) => s.status === 'revoked').length}
			</div>
			<div class="text-sm text-slate-600">Declined/Revoked</div>
		</div>
	</div>

	<!-- Pending Applications (Priority) -->
	{#if pendingCountChirho > 0}
		<div class="bg-amber-50 border border-amber-200 rounded-lg p-4">
			<h2 class="font-semibold text-amber-900 mb-3">
				Pending Applications ({pendingCountChirho})
			</h2>
			<div class="space-y-4">
				{#each data.scholarshipsChirho.filter((s) => s.status === 'pending') as applicationChirho}
					<div class="bg-white rounded-lg border border-amber-200 p-4">
						<div class="flex items-start justify-between gap-4">
							<div class="flex-1">
								<div class="flex items-center gap-2 mb-2">
									<span class="font-medium text-slate-900">
										{applicationChirho.displayName || applicationChirho.username}
									</span>
									<span class="text-slate-500 text-sm">@{applicationChirho.username}</span>
								</div>
								<div class="text-sm text-slate-500 mb-3">
									{applicationChirho.email} · Applied {formatDateChirho(applicationChirho.createdAt)}
								</div>
								<div class="bg-slate-50 rounded p-3 text-sm text-slate-700 whitespace-pre-wrap">
									{applicationChirho.reason}
								</div>
							</div>
							<div class="flex flex-col gap-2">
								<form method="POST" action="?/approve" use:enhance>
									<input type="hidden" name="scholarshipId" value={applicationChirho.scholarshipId} />
									<button
										type="submit"
										class="w-full bg-green-600 hover:bg-green-700 text-white text-sm px-4 py-2 rounded-lg font-medium"
									>
										Approve
									</button>
								</form>
								<form method="POST" action="?/reject" use:enhance>
									<input type="hidden" name="scholarshipId" value={applicationChirho.scholarshipId} />
									<button
										type="submit"
										class="w-full bg-red-100 hover:bg-red-200 text-red-700 text-sm px-4 py-2 rounded-lg font-medium"
									>
										Decline
									</button>
								</form>
							</div>
						</div>
					</div>
				{/each}
			</div>
		</div>
	{/if}

	<!-- All Applications -->
	<div class="bg-white rounded-lg shadow-sm border border-slate-200">
		<div class="px-4 py-3 border-b border-slate-200">
			<h2 class="font-semibold text-slate-900">All Scholarship Applications</h2>
		</div>

		{#if data.scholarshipsChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				<div class="text-4xl mb-2">🎓</div>
				<p>No scholarship applications yet.</p>
			</div>
		{:else}
			<div class="overflow-x-auto">
				<table class="w-full">
					<thead>
						<tr class="border-b border-slate-200 bg-slate-50">
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Applicant</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Reason</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Applied</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Status</th>
							<th class="text-right px-4 py-3 text-sm font-semibold text-slate-700">Actions</th>
						</tr>
					</thead>
					<tbody class="divide-y divide-slate-200">
						{#each data.scholarshipsChirho as scholarshipItemChirho}
							<tr class="hover:bg-slate-50">
								<td class="px-4 py-3">
									<div class="font-medium text-slate-900">
										{scholarshipItemChirho.displayName || scholarshipItemChirho.username}
									</div>
									<div class="text-xs text-slate-500">{scholarshipItemChirho.email}</div>
								</td>
								<td class="px-4 py-3">
									<div class="text-sm text-slate-700 max-w-xs truncate" title={scholarshipItemChirho.reason || ''}>
										{scholarshipItemChirho.reason || '-'}
									</div>
								</td>
								<td class="px-4 py-3 text-sm text-slate-700">
									{formatDateChirho(scholarshipItemChirho.createdAt)}
								</td>
								<td class="px-4 py-3">
									<span class="text-xs px-2 py-1 rounded-full {getStatusColorChirho(scholarshipItemChirho.status || 'pending')}">
										{scholarshipItemChirho.status || 'pending'}
									</span>
								</td>
								<td class="px-4 py-3 text-right">
									<div class="flex items-center justify-end gap-2">
										{#if scholarshipItemChirho.status === 'pending'}
											<form method="POST" action="?/approve" use:enhance class="inline">
												<input type="hidden" name="scholarshipId" value={scholarshipItemChirho.scholarshipId} />
												<button type="submit" class="text-xs text-green-600 hover:text-green-800">
													Approve
												</button>
											</form>
											<form method="POST" action="?/reject" use:enhance class="inline">
												<input type="hidden" name="scholarshipId" value={scholarshipItemChirho.scholarshipId} />
												<button type="submit" class="text-xs text-red-600 hover:text-red-800">
													Decline
												</button>
											</form>
										{:else if scholarshipItemChirho.status === 'active'}
											<form method="POST" action="?/revoke" use:enhance class="inline">
												<input type="hidden" name="scholarshipId" value={scholarshipItemChirho.scholarshipId} />
												<button
													type="submit"
													class="text-xs text-red-600 hover:text-red-800"
													onclick={(e) => { if (!confirm('Revoke this scholarship?')) e.preventDefault(); }}
												>
													Revoke
												</button>
											</form>
										{/if}
										<form method="POST" action="?/delete" use:enhance class="inline">
											<input type="hidden" name="scholarshipId" value={scholarshipItemChirho.scholarshipId} />
											<button
												type="submit"
												class="text-xs text-slate-500 hover:text-slate-700"
												onclick={(e) => { if (!confirm('Delete this application permanently?')) e.preventDefault(); }}
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
