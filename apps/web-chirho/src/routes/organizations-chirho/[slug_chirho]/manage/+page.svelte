<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';
	import { invalidateAll } from '$app/navigation';

	let { data, form } = $props();

	let showCreateInviteCodeChirho = $state(false);
	let showCreateCohortChirho = $state(false);

	function formatDateChirho(date) {
		if (!date) return 'N/A';
		return new Date(date).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'short',
			day: 'numeric'
		});
	}

	function copyInviteCodeChirho(codeChirho) {
		navigator.clipboard.writeText(codeChirho);
	}

	function handleCreateInviteCodeEnhanceChirho() {
		return async function (eventChirho) {
			await eventChirho.update();
			if (eventChirho.result.type === 'success') {
				showCreateInviteCodeChirho = false;
			}
		};
	}

	function handleCreateCohortEnhanceChirho() {
		return async function (eventChirho) {
			await eventChirho.update();
			if (eventChirho.result.type === 'success') {
				showCreateCohortChirho = false;
			}
		};
	}
</script>

<svelte:head>
	<title>Manage {data.organizationChirho.name} - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="max-w-6xl mx-auto py-8 px-4">
	<div class="mb-8">
		<div class="flex items-center gap-3 mb-2">
			<span class="text-4xl">🏛️</span>
			<h1 class="text-3xl font-bold text-slate-900">{data.organizationChirho.name}</h1>
			{#if data.organizationChirho.isVerified}
				<span class="bg-green-100 text-green-800 text-xs px-2 py-1 rounded-full">Verified</span>
			{/if}
		</div>
		<p class="text-slate-600">{data.organizationChirho.organizationType} • {data.membersChirho.length} members</p>
	</div>

	{#if form?.successChirho}
		<div class="mb-6 p-4 bg-green-50 border border-green-200 rounded-lg text-green-800">
			{#if form.actionChirho === 'createInviteCodeChirho'}
				Invite code created: <strong class="font-mono">{form.codeChirho}</strong>
				<button
					type="button"
					onclick={() => copyInviteCodeChirho(form.codeChirho)}
					class="ml-2 text-green-600 hover:text-green-800 underline"
				>
					Copy
				</button>
			{:else if form.actionChirho === 'createCohortChirho'}
				Cohort created successfully!
			{:else if form.actionChirho === 'updateOrganizationChirho'}
				Organization updated successfully!
			{:else}
				Action completed successfully!
			{/if}
		</div>
	{/if}

	{#if form?.errorChirho}
		<div class="mb-6 p-4 bg-red-50 border border-red-200 rounded-lg text-red-700">
			{form.errorChirho}
		</div>
	{/if}

	<div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
		<!-- Main Content -->
		<div class="lg:col-span-2 space-y-6">
			<!-- Invite Codes Section -->
			<div class="card">
				<div class="flex items-center justify-between mb-4">
					<h2 class="text-xl font-semibold text-slate-900">Invite Codes</h2>
					<button
						type="button"
						onclick={() => (showCreateInviteCodeChirho = !showCreateInviteCodeChirho)}
						class="btn-primary text-sm"
					>
						+ New Code
					</button>
				</div>

				{#if showCreateInviteCodeChirho}
					<form
						method="POST"
						action="?/createInviteCodeChirho"
						use:enhance={handleCreateInviteCodeEnhanceChirho}
						class="mb-4 p-4 bg-slate-50 rounded-lg space-y-3"
					>
						<div class="grid grid-cols-2 gap-4">
							<div>
								<label for="maxUsesChirho" class="block text-sm font-medium text-slate-700 mb-1">
									Max Uses
								</label>
								<input
									type="number"
									id="maxUsesChirho"
									name="maxUsesChirho"
									value="100"
									min="1"
									class="w-full"
								/>
							</div>
							<div>
								<label for="expiresInDaysChirho" class="block text-sm font-medium text-slate-700 mb-1">
									Expires In (days)
								</label>
								<input
									type="number"
									id="expiresInDaysChirho"
									name="expiresInDaysChirho"
									value="90"
									min="1"
									class="w-full"
								/>
							</div>
						</div>

						{#if data.cohortsChirho.length > 0}
							<div>
								<label for="cohortIdChirho" class="block text-sm font-medium text-slate-700 mb-1">
									Auto-assign to Cohort (optional)
								</label>
								<select id="cohortIdChirho" name="cohortIdChirho" class="w-full">
									<option value="">No specific cohort</option>
									{#each data.cohortsChirho as cohortChirho}
										<option value={cohortChirho.cohortId}>{cohortChirho.name}</option>
									{/each}
								</select>
							</div>
						{/if}

						<div class="flex gap-2">
							<button type="submit" class="btn-primary text-sm">Create Code</button>
							<button
								type="button"
								onclick={() => (showCreateInviteCodeChirho = false)}
								class="btn-secondary text-sm"
							>
								Cancel
							</button>
						</div>
					</form>
				{/if}

				{#if data.inviteCodesChirho.length === 0}
					<p class="text-slate-500 text-sm">No invite codes yet. Create one to invite students!</p>
				{:else}
					<div class="overflow-x-auto">
						<table class="w-full text-sm">
							<thead>
								<tr class="border-b">
									<th class="text-left py-2 font-medium text-slate-700">Code</th>
									<th class="text-left py-2 font-medium text-slate-700">Uses</th>
									<th class="text-left py-2 font-medium text-slate-700">Expires</th>
									<th class="text-left py-2 font-medium text-slate-700">Status</th>
									<th class="text-right py-2 font-medium text-slate-700">Actions</th>
								</tr>
							</thead>
							<tbody>
								{#each data.inviteCodesChirho as inviteCodeChirho}
									<tr class="border-b last:border-0">
										<td class="py-2 font-mono">{inviteCodeChirho.code}</td>
										<td class="py-2">{inviteCodeChirho.currentUses}/{inviteCodeChirho.maxUses}</td>
										<td class="py-2">{formatDateChirho(inviteCodeChirho.expiresAt)}</td>
										<td class="py-2">
											{#if inviteCodeChirho.isActive}
												<span class="text-green-600">Active</span>
											{:else}
												<span class="text-slate-400">Inactive</span>
											{/if}
										</td>
										<td class="py-2 text-right">
											<button
												type="button"
												onclick={() => copyInviteCodeChirho(inviteCodeChirho.code)}
												class="text-blue-600 hover:text-blue-800 mr-2"
											>
												Copy
											</button>
											{#if inviteCodeChirho.isActive}
												<form method="POST" action="?/deactivateInviteCodeChirho" class="inline" use:enhance>
													<input type="hidden" name="inviteCodeIdChirho" value={inviteCodeChirho.inviteCodeId} />
													<button type="submit" class="text-red-600 hover:text-red-800">
														Deactivate
													</button>
												</form>
											{/if}
										</td>
									</tr>
								{/each}
							</tbody>
						</table>
					</div>
				{/if}
			</div>

			<!-- Cohorts Section -->
			<div class="card">
				<div class="flex items-center justify-between mb-4">
					<h2 class="text-xl font-semibold text-slate-900">Cohorts</h2>
					<button
						type="button"
						onclick={() => (showCreateCohortChirho = !showCreateCohortChirho)}
						class="btn-primary text-sm"
					>
						+ New Cohort
					</button>
				</div>

				{#if showCreateCohortChirho}
					<form
						method="POST"
						action="?/createCohortChirho"
						use:enhance={handleCreateCohortEnhanceChirho}
						class="mb-4 p-4 bg-slate-50 rounded-lg space-y-3"
					>
						<div>
							<label for="nameChirho" class="block text-sm font-medium text-slate-700 mb-1">
								Cohort Name <span class="text-red-500">*</span>
							</label>
							<input
								type="text"
								id="nameChirho"
								name="nameChirho"
								required
								class="w-full"
								placeholder="e.g., Spring 2025 Class"
							/>
						</div>

						<div>
							<label for="descriptionChirho" class="block text-sm font-medium text-slate-700 mb-1">
								Description
							</label>
							<textarea
								id="descriptionChirho"
								name="descriptionChirho"
								rows="2"
								class="w-full"
								placeholder="Optional description..."
							></textarea>
						</div>

						<div class="grid grid-cols-2 gap-4">
							<div>
								<label for="startDateChirho" class="block text-sm font-medium text-slate-700 mb-1">
									Start Date <span class="text-red-500">*</span>
								</label>
								<input type="date" id="startDateChirho" name="startDateChirho" required class="w-full" />
							</div>
							<div>
								<label for="maxStudentsChirho" class="block text-sm font-medium text-slate-700 mb-1">
									Max Students
								</label>
								<input
									type="number"
									id="maxStudentsChirho"
									name="maxStudentsChirho"
									value="30"
									min="1"
									class="w-full"
								/>
							</div>
						</div>

						<div class="flex gap-2">
							<button type="submit" class="btn-primary text-sm">Create Cohort</button>
							<button
								type="button"
								onclick={() => (showCreateCohortChirho = false)}
								class="btn-secondary text-sm"
							>
								Cancel
							</button>
						</div>
					</form>
				{/if}

				{#if data.cohortsChirho.length === 0}
					<p class="text-slate-500 text-sm">
						No cohorts yet. Create a cohort to organize students by start date!
					</p>
				{:else}
					<div class="space-y-3">
						{#each data.cohortsChirho as cohortChirho}
							<div class="p-4 border rounded-lg">
								<div class="flex items-center justify-between mb-2">
									<h3 class="font-medium text-slate-900">{cohortChirho.name}</h3>
									<span
										class="text-xs px-2 py-1 rounded-full"
										class:bg-blue-100={cohortChirho.status === 'upcoming'}
										class:text-blue-800={cohortChirho.status === 'upcoming'}
										class:bg-green-100={cohortChirho.status === 'active'}
										class:text-green-800={cohortChirho.status === 'active'}
										class:bg-slate-100={cohortChirho.status === 'completed'}
										class:text-slate-600={cohortChirho.status === 'completed'}
									>
										{cohortChirho.status}
									</span>
								</div>
								<p class="text-sm text-slate-600">
									{formatDateChirho(cohortChirho.startDate)} - {formatDateChirho(cohortChirho.endDate)}
								</p>
								<p class="text-sm text-slate-500">
									{cohortChirho.currentEnrollment}/{cohortChirho.maxStudents} students enrolled
								</p>
							</div>
						{/each}
					</div>
				{/if}
			</div>

			<!-- Members Section -->
			<div class="card">
				<h2 class="text-xl font-semibold text-slate-900 mb-4">Members</h2>

				{#if data.membersChirho.length === 0}
					<p class="text-slate-500 text-sm">No members yet. Share an invite code to get started!</p>
				{:else}
					<div class="overflow-x-auto">
						<table class="w-full text-sm">
							<thead>
								<tr class="border-b">
									<th class="text-left py-2 font-medium text-slate-700">Username</th>
									<th class="text-left py-2 font-medium text-slate-700">Name</th>
									<th class="text-left py-2 font-medium text-slate-700">Role</th>
									<th class="text-left py-2 font-medium text-slate-700">Joined</th>
								</tr>
							</thead>
							<tbody>
								{#each data.membersChirho as memberChirho}
									<tr class="border-b last:border-0">
										<td class="py-2">{memberChirho.username}</td>
										<td class="py-2">{memberChirho.displayName || '-'}</td>
										<td class="py-2">
											<span
												class="text-xs px-2 py-1 rounded-full"
												class:bg-purple-100={memberChirho.role === 'org_admin'}
												class:text-purple-800={memberChirho.role === 'org_admin'}
												class:bg-blue-100={memberChirho.role === 'instructor'}
												class:text-blue-800={memberChirho.role === 'instructor'}
												class:bg-slate-100={memberChirho.role === 'student'}
												class:text-slate-600={memberChirho.role === 'student'}
											>
												{memberChirho.role}
											</span>
										</td>
										<td class="py-2">{formatDateChirho(memberChirho.createdAt)}</td>
									</tr>
								{/each}
							</tbody>
						</table>
					</div>
				{/if}
			</div>
		</div>

		<!-- Sidebar -->
		<div class="space-y-6">
			<!-- Quick Stats -->
			<div class="card">
				<h2 class="text-lg font-semibold text-slate-900 mb-4">Quick Stats</h2>
				<div class="space-y-3">
					<div class="flex justify-between">
						<span class="text-slate-600">Total Members</span>
						<span class="font-medium">{data.membersChirho.length}</span>
					</div>
					<div class="flex justify-between">
						<span class="text-slate-600">Active Cohorts</span>
						<span class="font-medium">{data.cohortsChirho.filter((c) => c.status === 'active').length}</span>
					</div>
					<div class="flex justify-between">
						<span class="text-slate-600">Active Invite Codes</span>
						<span class="font-medium">{data.inviteCodesChirho.filter((c) => c.isActive).length}</span>
					</div>
				</div>
			</div>

			<!-- Organization Settings -->
			<div class="card">
				<h2 class="text-lg font-semibold text-slate-900 mb-4">Settings</h2>
				<form method="POST" action="?/updateOrganizationChirho" use:enhance class="space-y-4">
					<div>
						<label for="contactNameChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Contact Name
						</label>
						<input
							type="text"
							id="contactNameChirho"
							name="contactNameChirho"
							required
							class="w-full"
							value={data.organizationChirho.contactName}
						/>
					</div>
					<div>
						<label for="contactEmailChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Contact Email
						</label>
						<input
							type="email"
							id="contactEmailChirho"
							name="contactEmailChirho"
							required
							class="w-full"
							value={data.organizationChirho.contactEmail}
						/>
					</div>
					<div>
						<label for="contactPhoneChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Contact Phone
						</label>
						<input
							type="tel"
							id="contactPhoneChirho"
							name="contactPhoneChirho"
							class="w-full"
							value={data.organizationChirho.contactPhone ?? ''}
						/>
					</div>
					<div>
						<label for="descriptionChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Description
						</label>
						<textarea
							id="descriptionChirho"
							name="descriptionChirho"
							rows="3"
							class="w-full"
							>{data.organizationChirho.description ?? ''}</textarea
						>
					</div>
					<button type="submit" class="btn-primary w-full text-sm">Save Changes</button>
				</form>
			</div>

			<!-- Share Link -->
			<div class="card bg-blue-50 border-blue-200">
				<h2 class="text-lg font-semibold text-blue-900 mb-2">Share Your Page</h2>
				<p class="text-sm text-blue-700 mb-3">
					Share this link with potential students to let them join your organization:
				</p>
				<div class="flex gap-2">
					<input
						type="text"
						readonly
						value={`https://academy.sonshine.org/organizations-chirho/${data.organizationChirho.slug}`}
						class="flex-1 text-sm bg-white"
					/>
					<button
						type="button"
						onclick={() =>
							navigator.clipboard.writeText(
								`https://academy.sonshine.org/organizations-chirho/${data.organizationChirho.slug}`
							)}
						class="btn-primary text-sm"
					>
						Copy
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
