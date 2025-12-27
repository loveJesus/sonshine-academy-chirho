<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let showCreateFormChirho = $state(false);

	/** @param {string} statusChirho */
	function getStatusColorChirho(statusChirho) {
		switch (statusChirho) {
			case 'upcoming':
				return 'bg-blue-100 text-blue-700';
			case 'active':
				return 'bg-green-100 text-green-700';
			case 'completed':
				return 'bg-slate-100 text-slate-700';
			case 'cancelled':
				return 'bg-red-100 text-red-700';
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
</script>

<div class="space-y-6">
	<!-- Header -->
	<div class="flex items-center justify-between">
		<div>
			<h1 class="text-2xl font-bold text-slate-900">Cohorts</h1>
			<p class="text-slate-600">Manage student cohorts for organizations</p>
		</div>
		<button
			onclick={() => showCreateFormChirho = !showCreateFormChirho}
			class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg font-medium"
		>
			{showCreateFormChirho ? 'Cancel' : '+ New Cohort'}
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
			<h2 class="text-lg font-semibold text-slate-900 mb-4">Create New Cohort</h2>

			{#if data.organizationsChirho.length === 0}
				<div class="bg-amber-50 border border-amber-200 rounded-lg p-4 text-amber-800">
					<p class="font-medium">No organizations available</p>
					<p class="text-sm mt-1">You need to create an organization first before you can create a cohort.</p>
					<a href="/admin-chirho/organizations-chirho" class="text-sm underline mt-2 inline-block">
						Go to Organizations
					</a>
				</div>
			{:else}
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
							<label for="organizationId" class="block text-sm font-medium text-slate-700 mb-1">
								Organization *
							</label>
							<select
								id="organizationId"
								name="organizationId"
								required
								class="w-full border border-slate-300 rounded-lg px-3 py-2"
							>
								<option value="">Select an organization...</option>
								{#each data.organizationsChirho as orgChirho}
									<option value={orgChirho.organizationId}>{orgChirho.name}</option>
								{/each}
							</select>
						</div>
						<div>
							<label for="name" class="block text-sm font-medium text-slate-700 mb-1">
								Cohort Name *
							</label>
							<input
								type="text"
								id="name"
								name="name"
								required
								class="w-full border border-slate-300 rounded-lg px-3 py-2"
								placeholder="e.g., Spring 2025 Class"
							/>
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
							placeholder="Brief description of this cohort..."
						></textarea>
					</div>

					<div class="grid md:grid-cols-3 gap-4">
						<div>
							<label for="courseId" class="block text-sm font-medium text-slate-700 mb-1">
								Course
							</label>
							<select
								id="courseId"
								name="courseId"
								class="w-full border border-slate-300 rounded-lg px-3 py-2"
							>
								<option value="">Select a course...</option>
								{#each data.coursesChirho as courseItemChirho}
									<option value={courseItemChirho.courseId}>{courseItemChirho.title}</option>
								{/each}
							</select>
						</div>
						<div>
							<label for="startDate" class="block text-sm font-medium text-slate-700 mb-1">
								Start Date *
							</label>
							<input
								type="date"
								id="startDate"
								name="startDate"
								required
								class="w-full border border-slate-300 rounded-lg px-3 py-2"
							/>
						</div>
						<div>
							<label for="endDate" class="block text-sm font-medium text-slate-700 mb-1">
								End Date
							</label>
							<input
								type="date"
								id="endDate"
								name="endDate"
								class="w-full border border-slate-300 rounded-lg px-3 py-2"
							/>
						</div>
					</div>

					<div>
						<label for="maxStudents" class="block text-sm font-medium text-slate-700 mb-1">
							Max Students
						</label>
						<input
							type="number"
							id="maxStudents"
							name="maxStudents"
							value="30"
							min="1"
							class="w-48 border border-slate-300 rounded-lg px-3 py-2"
						/>
					</div>

					<div class="flex gap-3 pt-4">
						<button
							type="submit"
							class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg font-medium"
						>
							Create Cohort
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
			{/if}
		</div>
	{/if}

	<!-- Stats -->
	<div class="grid grid-cols-4 gap-4">
		<div class="bg-white rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-900">{data.cohortsChirho.length}</div>
			<div class="text-sm text-slate-500">Total Cohorts</div>
		</div>
		<div class="bg-blue-50 rounded-lg shadow-sm border border-blue-200 p-4">
			<div class="text-2xl font-bold text-blue-700">
				{data.cohortsChirho.filter((c) => c.status === 'upcoming').length}
			</div>
			<div class="text-sm text-blue-600">Upcoming</div>
		</div>
		<div class="bg-green-50 rounded-lg shadow-sm border border-green-200 p-4">
			<div class="text-2xl font-bold text-green-700">
				{data.cohortsChirho.filter((c) => c.status === 'active').length}
			</div>
			<div class="text-sm text-green-600">Active</div>
		</div>
		<div class="bg-slate-50 rounded-lg shadow-sm border border-slate-200 p-4">
			<div class="text-2xl font-bold text-slate-700">
				{data.cohortsChirho.reduce((sum, c) => sum + (c.currentEnrollment || 0), 0)}
			</div>
			<div class="text-sm text-slate-600">Total Students</div>
		</div>
	</div>

	<!-- Cohorts List -->
	<div class="bg-white rounded-lg shadow-sm border border-slate-200">
		{#if data.cohortsChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				<div class="text-4xl mb-2">👥</div>
				<p>No cohorts yet. Create one to start enrolling students!</p>
			</div>
		{:else}
			<div class="overflow-x-auto">
				<table class="w-full">
					<thead>
						<tr class="border-b border-slate-200 bg-slate-50">
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Cohort</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Organization</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Dates</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Enrollment</th>
							<th class="text-left px-4 py-3 text-sm font-semibold text-slate-700">Status</th>
							<th class="text-right px-4 py-3 text-sm font-semibold text-slate-700">Actions</th>
						</tr>
					</thead>
					<tbody class="divide-y divide-slate-200">
						{#each data.cohortsChirho as cohortItemChirho}
							<tr class="hover:bg-slate-50">
								<td class="px-4 py-3">
									<div class="font-medium text-slate-900">{cohortItemChirho.name}</div>
									{#if cohortItemChirho.description}
										<div class="text-xs text-slate-500 line-clamp-1">{cohortItemChirho.description}</div>
									{/if}
								</td>
								<td class="px-4 py-3 text-sm text-slate-700">
									{cohortItemChirho.organizationName || 'Unknown'}
								</td>
								<td class="px-4 py-3 text-sm">
									<div class="text-slate-900">{formatDateChirho(cohortItemChirho.startDate)}</div>
									{#if cohortItemChirho.endDate}
										<div class="text-slate-500">to {formatDateChirho(cohortItemChirho.endDate)}</div>
									{/if}
								</td>
								<td class="px-4 py-3">
									<div class="flex items-center gap-2">
										<span class="text-sm font-medium text-slate-900">
											{cohortItemChirho.currentEnrollment || 0}/{cohortItemChirho.maxStudents || 30}
										</span>
										{#if cohortItemChirho.isAcceptingEnrollment}
											<span class="text-xs px-2 py-0.5 rounded bg-green-100 text-green-700">Open</span>
										{:else}
											<span class="text-xs px-2 py-0.5 rounded bg-slate-100 text-slate-600">Closed</span>
										{/if}
									</div>
								</td>
								<td class="px-4 py-3">
									<span class="text-xs px-2 py-1 rounded-full {getStatusColorChirho(cohortItemChirho.status || 'upcoming')}">
										{cohortItemChirho.status || 'upcoming'}
									</span>
								</td>
								<td class="px-4 py-3 text-right">
									<div class="flex items-center justify-end gap-2">
										<form method="POST" action="?/updateStatus" use:enhance class="inline">
											<input type="hidden" name="cohortId" value={cohortItemChirho.cohortId} />
											<select
												name="status"
												class="text-xs border border-slate-300 rounded px-2 py-1"
												onchange={(e) => /** @type {HTMLFormElement} */ (e.target?.closest('form'))?.requestSubmit()}
											>
												<option value="upcoming" selected={cohortItemChirho.status === 'upcoming'}>Upcoming</option>
												<option value="active" selected={cohortItemChirho.status === 'active'}>Active</option>
												<option value="completed" selected={cohortItemChirho.status === 'completed'}>Completed</option>
												<option value="cancelled" selected={cohortItemChirho.status === 'cancelled'}>Cancelled</option>
											</select>
										</form>
										<form method="POST" action="?/toggleEnrollment" use:enhance>
											<input type="hidden" name="cohortId" value={cohortItemChirho.cohortId} />
											<button
												type="submit"
												class="text-xs text-blue-600 hover:text-blue-800"
											>
												{cohortItemChirho.isAcceptingEnrollment ? 'Close' : 'Open'}
											</button>
										</form>
										<form method="POST" action="?/delete" use:enhance>
											<input type="hidden" name="cohortId" value={cohortItemChirho.cohortId} />
											<button
												type="submit"
												class="text-xs text-red-600 hover:text-red-800"
												onclick={(e) => { if (!confirm('Delete this cohort?')) e.preventDefault(); }}
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
