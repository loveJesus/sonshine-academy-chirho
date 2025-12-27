<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import type { PageData } from './$types';

	let { data }: { data: PageData } = $props();

	function formatDateChirho(dateChirho: Date | string | null | undefined): string {
		if (!dateChirho) return 'N/A';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			month: 'short',
			day: 'numeric',
			hour: '2-digit',
			minute: '2-digit'
		});
	}
</script>

<svelte:head>
	<title>Admin Dashboard - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<h1 class="text-2xl font-bold text-slate-900 mb-6">Admin Dashboard</h1>

	{#if data.statsChirho}
		<!-- Overview Stats -->
		<div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
			<div class="bg-white rounded-lg shadow-sm p-4">
				<div class="text-3xl font-bold text-blue-600">{data.statsChirho.totalUsersChirho}</div>
				<div class="text-sm text-slate-600">Total Users</div>
				<div class="text-xs text-slate-400 mt-1">
					+{data.statsChirho.recentUsersCountChirho} this week
				</div>
			</div>
			<div class="bg-white rounded-lg shadow-sm p-4">
				<div class="text-3xl font-bold text-green-600">{data.statsChirho.activeOrgsCountChirho}</div>
				<div class="text-sm text-slate-600">Active Organizations</div>
				<div class="text-xs text-slate-400 mt-1">
					{data.statsChirho.totalOrgsChirho} total
				</div>
			</div>
			<div class="bg-white rounded-lg shadow-sm p-4">
				<div class="text-3xl font-bold text-purple-600">{data.statsChirho.totalQuestsChirho}</div>
				<div class="text-sm text-slate-600">Quests</div>
				<div class="text-xs text-slate-400 mt-1">
					{data.statsChirho.totalPayloadsChirho} payloads
				</div>
			</div>
			<div class="bg-white rounded-lg shadow-sm p-4">
				<div class="text-3xl font-bold text-amber-600">
					${data.statsChirho.totalRevenueChirho.toFixed(2)}
				</div>
				<div class="text-sm text-slate-600">Total Donations</div>
			</div>
		</div>

		<!-- Detailed Stats -->
		<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
			<!-- User Breakdown -->
			<div class="bg-white rounded-lg shadow-sm p-4">
				<h3 class="font-semibold text-slate-900 mb-3">User Breakdown</h3>
				<div class="space-y-2">
					<div class="flex justify-between">
						<span class="text-slate-600">Students</span>
						<span class="font-medium">{data.statsChirho.studentsCountChirho}</span>
					</div>
					<div class="flex justify-between">
						<span class="text-slate-600">Instructors</span>
						<span class="font-medium">{data.statsChirho.instructorsCountChirho}</span>
					</div>
					<div class="flex justify-between">
						<span class="text-slate-600">Org Admins</span>
						<span class="font-medium">{data.statsChirho.orgAdminsCountChirho}</span>
					</div>
				</div>
				<a href="/admin-chirho/users-chirho" class="text-blue-600 hover:underline text-sm mt-4 block">
					Manage Users →
				</a>
			</div>

			<!-- Cohort Stats -->
			<div class="bg-white rounded-lg shadow-sm p-4">
				<h3 class="font-semibold text-slate-900 mb-3">Cohorts</h3>
				<div class="space-y-2">
					<div class="flex justify-between">
						<span class="text-slate-600">Active/Upcoming</span>
						<span class="font-medium text-green-600">{data.statsChirho.activeCohortsCountChirho}</span>
					</div>
					<div class="flex justify-between">
						<span class="text-slate-600">Total</span>
						<span class="font-medium">{data.statsChirho.totalCohortsChirho}</span>
					</div>
				</div>
				<a
					href="/admin-chirho/organizations-chirho"
					class="text-blue-600 hover:underline text-sm mt-4 block"
				>
					View Organizations →
				</a>
			</div>

			<!-- Infrastructure Stats -->
			<div class="bg-white rounded-lg shadow-sm p-4">
				<h3 class="font-semibold text-slate-900 mb-3">Infrastructure</h3>
				<div class="space-y-2">
					<div class="flex justify-between">
						<span class="text-slate-600">VPS Nodes Online</span>
						<span class="font-medium text-green-600">
							{data.statsChirho.onlineNodesCountChirho}/{data.statsChirho.totalVpsNodesChirho}
						</span>
					</div>
					<div class="flex justify-between">
						<span class="text-slate-600">Running Containers</span>
						<span class="font-medium">
							{data.statsChirho.runningContainersCountChirho}/{data.statsChirho.totalContainersChirho}
						</span>
					</div>
				</div>
				<a href="/admin-chirho/vps-chirho" class="text-blue-600 hover:underline text-sm mt-4 block">
					Manage VPS →
				</a>
			</div>
		</div>

		<!-- Recent Users -->
		<div class="bg-white rounded-lg shadow-sm p-4">
			<h3 class="font-semibold text-slate-900 mb-4">Recent Registrations</h3>
			{#if data.recentUsersChirho.length === 0}
				<p class="text-slate-500 text-sm">No new users this week</p>
			{:else}
				<div class="overflow-x-auto">
					<table class="w-full text-sm">
						<thead>
							<tr class="border-b">
								<th class="text-left py-2 font-medium text-slate-700">Username</th>
								<th class="text-left py-2 font-medium text-slate-700">Email</th>
								<th class="text-left py-2 font-medium text-slate-700">Role</th>
								<th class="text-left py-2 font-medium text-slate-700">Registered</th>
							</tr>
						</thead>
						<tbody>
							{#each data.recentUsersChirho as userChirho}
								<tr class="border-b last:border-0">
									<td class="py-2">{userChirho.username}</td>
									<td class="py-2 text-slate-500">{userChirho.email}</td>
									<td class="py-2">
										<span
											class="text-xs px-2 py-1 rounded-full"
											class:bg-blue-100={userChirho.role === 'student'}
											class:text-blue-800={userChirho.role === 'student'}
											class:bg-purple-100={userChirho.role === 'org_admin'}
											class:text-purple-800={userChirho.role === 'org_admin'}
										>
											{userChirho.role}
										</span>
									</td>
									<td class="py-2 text-slate-500">{formatDateChirho(userChirho.createdAt)}</td>
								</tr>
							{/each}
						</tbody>
					</table>
				</div>
				<a href="/admin-chirho/users-chirho" class="text-blue-600 hover:underline text-sm mt-4 block">
					View All Users →
				</a>
			{/if}
		</div>

		<!-- Quick Actions -->
		<div class="mt-8 grid grid-cols-2 md:grid-cols-4 gap-4">
			<a
				href="/admin-chirho/quests-chirho/import-chirho"
				class="bg-white rounded-lg shadow-sm p-4 hover:shadow-md transition-shadow text-center"
			>
				<div class="text-2xl mb-2">📥</div>
				<div class="font-medium text-slate-900">Import Quests</div>
			</a>
			<a
				href="/admin-chirho/payloads-chirho/import-chirho"
				class="bg-white rounded-lg shadow-sm p-4 hover:shadow-md transition-shadow text-center"
			>
				<div class="text-2xl mb-2">📦</div>
				<div class="font-medium text-slate-900">Import Payloads</div>
			</a>
			<a
				href="/admin-chirho/announcements-chirho/new-chirho"
				class="bg-white rounded-lg shadow-sm p-4 hover:shadow-md transition-shadow text-center"
			>
				<div class="text-2xl mb-2">📢</div>
				<div class="font-medium text-slate-900">New Announcement</div>
			</a>
			<a
				href="/admin-chirho/vps-chirho/provision-chirho"
				class="bg-white rounded-lg shadow-sm p-4 hover:shadow-md transition-shadow text-center"
			>
				<div class="text-2xl mb-2">🖥️</div>
				<div class="font-medium text-slate-900">Provision VPS</div>
			</a>
		</div>
	{:else}
		<div class="bg-amber-50 border border-amber-200 rounded-lg p-4 text-amber-800">
			Unable to load dashboard statistics. Please check the database connection.
		</div>
	{/if}
</div>
