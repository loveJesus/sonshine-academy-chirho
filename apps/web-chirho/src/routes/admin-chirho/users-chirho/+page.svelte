<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';
	import { goto } from '$app/navigation';

	let { data, form } = $props();

	// Form filter state - syncs with URL params via $effect
	let searchValueChirho = $state('');
	let roleFilterChirho = $state('');

	$effect(() => {
		searchValueChirho = data.filtersChirho?.search || '';
		roleFilterChirho = data.filtersChirho?.role || '';
	});

	function applyFiltersChirho() {
		const paramsChirho = new URLSearchParams();
		if (searchValueChirho) paramsChirho.set('search', searchValueChirho);
		if (roleFilterChirho) paramsChirho.set('role', roleFilterChirho);
		goto(`/admin-chirho/users-chirho?${paramsChirho.toString()}`);
	}

	function formatDateChirho(dateChirho) {
		if (!dateChirho) return 'N/A';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'short',
			day: 'numeric'
		});
	}

	function getRoleBadgeClassChirho(roleChirho) {
		switch (roleChirho) {
			case 'platform_admin':
				return 'bg-red-100 text-red-800';
			case 'org_admin':
				return 'bg-purple-100 text-purple-800';
			case 'instructor':
				return 'bg-blue-100 text-blue-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}
</script>

<svelte:head>
	<title>Users - Admin - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<div class="flex items-center justify-between mb-6">
		<h1 class="text-2xl font-bold text-slate-900">Users</h1>
		<span class="text-slate-500">{data.usersChirho.length} users</span>
	</div>

	{#if form?.successChirho}
		<div class="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-800 text-sm">
			{#if form.actionChirho === 'updateRoleChirho'}
				User role updated successfully.
			{:else if form.actionChirho === 'deleteUserChirho'}
				User deleted successfully.
			{/if}
		</div>
	{/if}

	{#if form?.errorChirho}
		<div class="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">
			{form.errorChirho}
		</div>
	{/if}

	<!-- Filters -->
	<div class="bg-white rounded-lg shadow-sm p-4 mb-6">
		<div class="flex flex-wrap gap-4">
			<div class="flex-1 min-w-[200px]">
				<input
					type="text"
					placeholder="Search by username, email, or name..."
					class="w-full"
					bind:value={searchValueChirho}
					onkeydown={(eChirho) => eChirho.key === 'Enter' && applyFiltersChirho()}
				/>
			</div>
			<div>
				<select class="w-full" bind:value={roleFilterChirho}>
					<option value="">All roles</option>
					<option value="student">Students</option>
					<option value="instructor">Instructors</option>
					<option value="org_admin">Org Admins</option>
					<option value="platform_admin">Platform Admins</option>
				</select>
			</div>
			<button type="button" class="btn-primary" onclick={applyFiltersChirho}>Filter</button>
		</div>
	</div>

	<!-- Users Table -->
	<div class="bg-white rounded-lg shadow-sm overflow-hidden">
		{#if data.usersChirho.length === 0}
			<div class="p-8 text-center text-slate-500">No users found matching your criteria.</div>
		{:else}
			<div class="overflow-x-auto">
				<table class="w-full">
					<thead class="bg-slate-50">
						<tr>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Username</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Email</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Role</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Coins</th>
							<th class="text-left py-3 px-4 font-medium text-slate-700">Joined</th>
							<th class="text-right py-3 px-4 font-medium text-slate-700">Actions</th>
						</tr>
					</thead>
					<tbody>
						{#each data.usersChirho as userChirho}
							<tr class="border-t hover:bg-slate-50">
								<td class="py-3 px-4">
									<div>
										<span class="font-medium text-slate-900">{userChirho.username}</span>
										{#if userChirho.displayName}
											<span class="text-slate-500 text-sm ml-1">({userChirho.displayName})</span>
										{/if}
									</div>
								</td>
								<td class="py-3 px-4 text-slate-600">{userChirho.email}</td>
								<td class="py-3 px-4">
									<span class="text-xs px-2 py-1 rounded-full {getRoleBadgeClassChirho(userChirho.role)}">
										{userChirho.role}
									</span>
								</td>
								<td class="py-3 px-4 text-amber-600">{userChirho.questCoinsBalance || 0}</td>
								<td class="py-3 px-4 text-slate-500 text-sm">
									{formatDateChirho(userChirho.createdAt)}
								</td>
								<td class="py-3 px-4 text-right">
									<div class="flex items-center justify-end gap-2">
										<form method="POST" action="?/updateRoleChirho" use:enhance class="inline">
											<input type="hidden" name="userIdChirho" value={userChirho.userId} />
											<select
												name="roleChirho"
												class="text-sm py-1"
												onchange={(eChirho) => eChirho.currentTarget.form?.requestSubmit()}
											>
												<option value="student" selected={userChirho.role === 'student'}>
													Student
												</option>
												<option value="instructor" selected={userChirho.role === 'instructor'}>
													Instructor
												</option>
												<option value="org_admin" selected={userChirho.role === 'org_admin'}>
													Org Admin
												</option>
												<option value="platform_admin" selected={userChirho.role === 'platform_admin'}>
													Platform Admin
												</option>
											</select>
										</form>
										<form method="POST" action="?/deleteUserChirho" use:enhance class="inline">
											<input type="hidden" name="userIdChirho" value={userChirho.userId} />
											<button
												type="submit"
												class="text-red-600 hover:text-red-800 text-sm"
												onclick={(eChirho) => {
													if (!confirm('Are you sure you want to delete this user?')) {
														eChirho.preventDefault();
													}
												}}
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
