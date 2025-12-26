<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { data } = $props();

	function formatDateChirho(dateChirho) {
		if (!dateChirho) return 'TBD';
		return new Date(dateChirho).toLocaleDateString('en-US', {
			year: 'numeric',
			month: 'long',
			day: 'numeric'
		});
	}

	function getOrgTypeDisplayChirho(typeChirho) {
		const typesChirho = {
			church: 'Church',
			school: 'School',
			homeschool: 'Homeschool Co-op',
			other: 'Ministry'
		};
		return typesChirho[typeChirho] || typeChirho;
	}
</script>

<svelte:head>
	<title>{data.organizationChirho.name} - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="max-w-4xl mx-auto py-12 px-4">
	<!-- Organization Header -->
	<div class="text-center mb-12">
		{#if data.organizationChirho.logoUrl}
			<img
				src={data.organizationChirho.logoUrl}
				alt={data.organizationChirho.name}
				class="w-24 h-24 mx-auto mb-4 rounded-full object-cover"
			/>
		{:else}
			<div
				class="w-24 h-24 mx-auto mb-4 rounded-full flex items-center justify-center text-4xl"
				style="background-color: {data.organizationChirho.primaryColor}20"
			>
				{#if data.organizationChirho.organizationType === 'church'}
					⛪
				{:else if data.organizationChirho.organizationType === 'school'}
					🏫
				{:else if data.organizationChirho.organizationType === 'homeschool'}
					🏠
				{:else}
					🏛️
				{/if}
			</div>
		{/if}

		<div class="flex items-center justify-center gap-2 mb-2">
			<h1 class="text-3xl font-bold text-slate-900">{data.organizationChirho.name}</h1>
			{#if data.organizationChirho.isVerified}
				<span class="text-blue-500" title="Verified Organization">✓</span>
			{/if}
		</div>

		<p class="text-slate-600">
			{getOrgTypeDisplayChirho(data.organizationChirho.organizationType)}
			{#if data.organizationChirho.city && data.organizationChirho.state}
				• {data.organizationChirho.city}, {data.organizationChirho.state}
			{/if}
		</p>

		{#if data.organizationChirho.description}
			<p class="mt-4 text-slate-700 max-w-2xl mx-auto">
				{data.organizationChirho.description}
			</p>
		{/if}
	</div>

	<!-- Admin Link -->
	{#if data.isOrgAdminChirho}
		<div class="mb-8 text-center">
			<a href="/organizations-chirho/{data.organizationChirho.slug}/manage" class="btn-secondary">
				Manage Organization →
			</a>
		</div>
	{/if}

	<!-- Already a Member -->
	{#if data.isAlreadyMemberChirho}
		<div class="card bg-green-50 border-green-200 text-center mb-8">
			<p class="text-green-800 font-medium">You're already a member of this organization!</p>
			<a href="/dashboard-chirho" class="text-green-600 hover:text-green-800 underline mt-2 inline-block">
				Go to your dashboard →
			</a>
		</div>
	{/if}

	<!-- Cohorts / How to Join -->
	<div class="card">
		<h2 class="text-xl font-semibold text-slate-900 mb-6">Join This Organization</h2>

		{#if !data.isLoggedInChirho}
			<div class="text-center py-8">
				<p class="text-slate-600 mb-4">Create an account to join {data.organizationChirho.name}</p>
				<a
					href="/auth-chirho/register?org={data.organizationChirho.slug}"
					class="btn-primary inline-block"
				>
					Create Account
				</a>
				<p class="mt-4 text-sm text-slate-500">
					Already have an account?
					<a href="/auth-chirho/login?redirect=/organizations-chirho/{data.organizationChirho.slug}" class="text-blue-600 hover:underline">
						Sign in
					</a>
				</p>
			</div>
		{:else if data.isAlreadyMemberChirho}
			<!-- Already shown above -->
		{:else}
			<div class="space-y-6">
				{#if data.cohortsChirho.length > 0}
					<div>
						<h3 class="font-medium text-slate-800 mb-3">Upcoming Classes</h3>
						<div class="space-y-3">
							{#each data.cohortsChirho as cohortChirho}
								<div class="p-4 border rounded-lg hover:border-blue-300 transition-colors">
									<div class="flex items-center justify-between mb-2">
										<h4 class="font-medium text-slate-900">{cohortChirho.name}</h4>
										<span
											class="text-xs px-2 py-1 rounded-full"
											class:bg-blue-100={cohortChirho.status === 'upcoming'}
											class:text-blue-800={cohortChirho.status === 'upcoming'}
											class:bg-green-100={cohortChirho.status === 'active'}
											class:text-green-800={cohortChirho.status === 'active'}
										>
											{cohortChirho.status === 'upcoming' ? 'Starting Soon' : 'In Progress'}
										</span>
									</div>
									{#if cohortChirho.description}
										<p class="text-sm text-slate-600 mb-2">{cohortChirho.description}</p>
									{/if}
									<div class="flex items-center justify-between text-sm">
										<span class="text-slate-500">
											Starts: {formatDateChirho(cohortChirho.startDate)}
										</span>
										<span class="text-slate-500">
											{cohortChirho.currentEnrollment}/{cohortChirho.maxStudents} enrolled
										</span>
									</div>
								</div>
							{/each}
						</div>
					</div>
				{/if}

				<div class="border-t pt-6">
					<h3 class="font-medium text-slate-800 mb-3">Have an Invite Code?</h3>
					<p class="text-sm text-slate-600 mb-4">
						If your organization administrator gave you an invite code, enter it during registration
						to automatically join this organization.
					</p>
					<a
						href="/auth-chirho/register"
						class="btn-primary inline-block"
					>
						Register with Invite Code
					</a>
				</div>

				{#if data.cohortsChirho.length === 0}
					<div class="bg-amber-50 border border-amber-200 rounded-lg p-4 text-amber-800">
						<p class="font-medium">No classes currently open for enrollment</p>
						<p class="text-sm mt-1">
							Contact the organization administrator for information about upcoming classes.
						</p>
					</div>
				{/if}
			</div>
		{/if}
	</div>

	<!-- About Sonshine Christian Code Academy -->
	<div class="mt-8 text-center">
		<p class="text-slate-500 text-sm">
			Sonshine Christian Code Academy provides Christian coding education for students of all backgrounds.
		</p>
		<a href="/" class="text-blue-600 hover:underline text-sm">Learn more about our program →</a>
	</div>
</div>
