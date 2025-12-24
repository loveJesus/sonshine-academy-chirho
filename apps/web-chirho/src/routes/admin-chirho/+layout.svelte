<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { page } from '$app/state';

	let { data, children } = $props();

	const navItemsChirho = [
		{ href: '/admin-chirho', label: 'Dashboard', icon: '📊' },
		{ href: '/admin-chirho/users-chirho', label: 'Users', icon: '👥' },
		{ href: '/admin-chirho/organizations-chirho', label: 'Organizations', icon: '🏛️' },
		{ href: '/admin-chirho/courses-chirho', label: 'Courses', icon: '📚' },
		{ href: '/admin-chirho/quests-chirho', label: 'Quests', icon: '⚔️' },
		{ href: '/admin-chirho/payloads-chirho', label: 'Payloads', icon: '📦' },
		{ href: '/admin-chirho/vps-chirho', label: 'VPS Nodes', icon: '🖥️' },
		{ href: '/admin-chirho/payments-chirho', label: 'Payments', icon: '💳' },
		{ href: '/admin-chirho/announcements-chirho', label: 'Announcements', icon: '📢' }
	];

	const currentPathChirho = $derived(page.url.pathname);
</script>

<div class="min-h-screen bg-slate-100">
	<!-- Top Bar -->
	<header class="bg-slate-900 text-white px-6 py-3">
		<div class="flex items-center justify-between">
			<div class="flex items-center gap-4">
				<a href="/admin-chirho" class="text-xl font-bold">☀️ Admin Panel</a>
				<span class="text-slate-400 text-sm">Sonshine Christian Code Academy</span>
			</div>
			<div class="flex items-center gap-4">
				<span class="text-sm text-slate-300">
					{data.adminUserChirho.displayName || data.adminUserChirho.username}
				</span>
				<a href="/dashboard-chirho" class="text-sm text-slate-400 hover:text-white">
					← Back to Site
				</a>
			</div>
		</div>
	</header>

	<div class="flex">
		<!-- Sidebar -->
		<aside class="w-64 bg-white shadow-sm min-h-[calc(100vh-52px)] p-4">
			<nav class="space-y-1">
				{#each navItemsChirho as itemChirho}
					{@const isActiveChirho = itemChirho.href === '/admin-chirho' ? currentPathChirho === '/admin-chirho' : currentPathChirho.startsWith(itemChirho.href)}
					<a
						href={itemChirho.href}
						class="flex items-center gap-3 px-3 py-2 rounded-lg transition-colors"
						class:bg-blue-50={isActiveChirho}
						class:text-blue-700={isActiveChirho}
						class:hover:bg-slate-50={!isActiveChirho}
					>
						<span>{itemChirho.icon}</span>
						<span>{itemChirho.label}</span>
					</a>
				{/each}
			</nav>
		</aside>

		<!-- Main Content -->
		<main class="flex-1 p-6">
			{@render children()}
		</main>
	</div>
</div>
