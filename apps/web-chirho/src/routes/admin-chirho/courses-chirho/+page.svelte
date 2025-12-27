<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { enhance } from '$app/forms';

	let { data, form } = $props();

	let showCreateChirho = $state(false);
	let courseNameChirho = $state('');
	let courseSlugChirho = $state('');
	let courseDescriptionChirho = $state('');
	let totalWeeksChirho = $state(18);
	let sessionsPerWeekChirho = $state(3);

	function generateSlugChirho(titleChirho) {
		return titleChirho
			.toLowerCase()
			.replace(/[^a-z0-9]+/g, '-')
			.replace(/(^-|-$)/g, '') + '-chirho';
	}

	$effect(() => {
		if (courseNameChirho) {
			courseSlugChirho = generateSlugChirho(courseNameChirho);
		}
	});

	function handleSubmitEnhanceChirho() {
		return async function (eventChirho) {
			await eventChirho.update();
			if (eventChirho.result.type === 'success') {
				showCreateChirho = false;
				courseNameChirho = '';
				courseDescriptionChirho = '';
			}
		};
	}
</script>

<svelte:head>
	<title>Courses - Admin - Sonshine Christian Code Academy</title>
</svelte:head>

<div>
	<div class="flex items-center justify-between mb-6">
		<div>
			<h1 class="text-2xl font-bold text-slate-900">Courses</h1>
			<p class="text-sm text-slate-600 mt-1">
				"Train up a child in the way he should go" - Proverbs 22:6
			</p>
		</div>
		<button type="button" class="btn-primary" onclick={() => (showCreateChirho = !showCreateChirho)}>
			+ Create Course
		</button>
	</div>

	{#if form?.successChirho}
		<div class="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-800 text-sm">
			{#if form.actionChirho === 'createCourseChirho'}
				Course "{form.titleChirho}" created successfully with {form.modulesCreatedChirho} modules!
			{:else if form.actionChirho === 'deleteCourseChirho'}
				Course deleted successfully.
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
			<div class="text-2xl font-bold text-slate-900">{data.statsChirho?.totalCoursesChirho || 0}</div>
			<div class="text-sm text-slate-600">Total Courses</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-green-600">{data.statsChirho?.publishedChirho || 0}</div>
			<div class="text-sm text-slate-600">Published</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-amber-600">{data.statsChirho?.totalModulesChirho || 0}</div>
			<div class="text-sm text-slate-600">Total Modules</div>
		</div>
		<div class="bg-white rounded-lg shadow-sm p-4 text-center">
			<div class="text-2xl font-bold text-blue-600">{data.statsChirho?.totalLessonsChirho || 0}</div>
			<div class="text-sm text-slate-600">Total Lessons</div>
		</div>
	</div>

	<!-- Create Course Form -->
	{#if showCreateChirho}
		<div class="bg-white rounded-lg shadow-sm p-6 mb-6">
			<h2 class="font-semibold text-slate-900 mb-4 flex items-center gap-2">
				<span>📚</span> Create New Course
			</h2>

			<form
				method="POST"
				action="?/createCourseChirho"
				use:enhance={handleSubmitEnhanceChirho}
			>
				<div class="grid md:grid-cols-2 gap-4 mb-4">
					<div>
						<label for="courseNameChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Course Title
						</label>
						<input
							type="text"
							id="courseNameChirho"
							name="titleChirho"
							class="w-full rounded-lg border-slate-300"
							placeholder="e.g., Web Development Foundations"
							bind:value={courseNameChirho}
							required
						/>
					</div>
					<div>
						<label for="courseSlugChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Slug (URL)
						</label>
						<input
							type="text"
							id="courseSlugChirho"
							name="slugChirho"
							class="w-full rounded-lg border-slate-300"
							placeholder="web-development-foundations-chirho"
							bind:value={courseSlugChirho}
							required
						/>
					</div>
				</div>

				<div class="mb-4">
					<label for="courseDescriptionChirho" class="block text-sm font-medium text-slate-700 mb-1">
						Description
					</label>
					<textarea
						id="courseDescriptionChirho"
						name="descriptionChirho"
						rows="3"
						class="w-full rounded-lg border-slate-300"
						placeholder="A faith-integrated journey through web development..."
						bind:value={courseDescriptionChirho}
					></textarea>
				</div>

				<div class="grid md:grid-cols-2 gap-4 mb-4">
					<div>
						<label for="totalWeeksChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Total Weeks
						</label>
						<input
							type="number"
							id="totalWeeksChirho"
							name="totalWeeksChirho"
							class="w-full rounded-lg border-slate-300"
							bind:value={totalWeeksChirho}
							min="1"
							max="52"
							required
						/>
					</div>
					<div>
						<label for="sessionsPerWeekChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Sessions Per Week
						</label>
						<input
							type="number"
							id="sessionsPerWeekChirho"
							name="sessionsPerWeekChirho"
							class="w-full rounded-lg border-slate-300"
							bind:value={sessionsPerWeekChirho}
							min="1"
							max="7"
							required
						/>
					</div>
				</div>

				<div class="p-3 bg-amber-50 border border-amber-200 rounded-lg mb-4">
					<p class="text-sm text-amber-800">
						<strong>Note:</strong> Creating this course will automatically generate:
					</p>
					<ul class="text-sm text-amber-700 mt-2 list-disc list-inside">
						<li>{totalWeeksChirho} weekly modules</li>
						<li>{totalWeeksChirho * sessionsPerWeekChirho} sessions ({sessionsPerWeekChirho} per week)</li>
					</ul>
				</div>

				<div class="flex gap-2">
					<button type="submit" class="btn-primary">
						Create Course Structure
					</button>
					<button type="button" class="btn-secondary" onclick={() => (showCreateChirho = false)}>
						Cancel
					</button>
				</div>
			</form>
		</div>
	{/if}

	<!-- Courses List -->
	<div class="bg-white rounded-lg shadow-sm overflow-hidden">
		<div class="px-4 py-3 bg-slate-50 border-b">
			<h3 class="font-semibold text-slate-900">All Courses</h3>
		</div>

		{#if !data.coursesChirho || data.coursesChirho.length === 0}
			<div class="p-8 text-center text-slate-500">
				<span class="text-4xl block mb-2">📚</span>
				<p>No courses yet.</p>
				<p class="text-sm">Click "Create Course" to set up your first course.</p>
			</div>
		{:else}
			<div class="divide-y">
				{#each data.coursesChirho as courseChirho}
					<div class="p-4 hover:bg-slate-50">
						<div class="flex items-start justify-between">
							<div class="flex-1">
								<div class="flex items-center gap-3">
									<h3 class="font-semibold text-slate-900">{courseChirho.title}</h3>
									<span class="text-xs px-2 py-0.5 rounded-full {courseChirho.isPublished ? 'bg-green-100 text-green-700' : 'bg-slate-100 text-slate-600'}">
										{courseChirho.isPublished ? 'Published' : 'Draft'}
									</span>
								</div>
								{#if courseChirho.description}
									<p class="text-sm text-slate-600 mt-1">{courseChirho.description}</p>
								{/if}
								<div class="flex items-center gap-4 mt-2 text-xs text-slate-500">
									<span>{courseChirho.totalWeeks || 18} weeks</span>
									<span>{courseChirho.sessionsPerWeek || 3} sessions/week</span>
									<span>{courseChirho.moduleCount || 0} modules</span>
									<span>{courseChirho.lessonCount || 0} lessons</span>
								</div>
							</div>
							<div class="flex items-center gap-2">
								<a
									href="/admin-chirho/courses-chirho/{courseChirho.courseId}"
									class="text-sm text-blue-600 hover:text-blue-800"
								>
									Edit
								</a>
								<form method="POST" action="?/togglePublishChirho" use:enhance class="inline">
									<input type="hidden" name="courseIdChirho" value={courseChirho.courseId} />
									<input type="hidden" name="isPublishedChirho" value={courseChirho.isPublished.toString()} />
									<button
										type="submit"
										class="text-sm {courseChirho.isPublished ? 'text-amber-600 hover:text-amber-800' : 'text-green-600 hover:text-green-800'}"
									>
										{courseChirho.isPublished ? 'Unpublish' : 'Publish'}
									</button>
								</form>
								<form method="POST" action="?/deleteCourseChirho" use:enhance class="inline">
									<input type="hidden" name="courseIdChirho" value={courseChirho.courseId} />
									<button
										type="submit"
										class="text-sm text-red-600 hover:text-red-800"
										onclick={(eChirho) => {
											if (!confirm('Delete this course and all its modules/sessions?')) {
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
		{/if}
	</div>

	<!-- Course Plan Reference -->
	<div class="mt-6 bg-amber-50 border border-amber-200 rounded-lg p-4">
		<h3 class="font-semibold text-amber-900 mb-2 flex items-center gap-2">
			<span>📋</span> Standard 18-Week Course Structure
		</h3>
		<div class="grid md:grid-cols-3 gap-4 text-sm">
			<div>
				<h4 class="font-medium text-amber-800 mb-1">Phase 1: Foundation (Weeks 1-6)</h4>
				<ul class="text-amber-700 space-y-0.5">
					<li>• Week 1: The Beginning</li>
					<li>• Week 2: Let There Be Light (CSS)</li>
					<li>• Week 3: The Word Became Code (JS)</li>
					<li>• Week 4: Truth & Logic</li>
					<li>• Week 5: Collections & Community</li>
					<li>• Week 6: Repetition & Persistence</li>
				</ul>
			</div>
			<div>
				<h4 class="font-medium text-amber-800 mb-1">Phase 2: Growth (Weeks 7-12)</h4>
				<ul class="text-amber-700 space-y-0.5">
					<li>• Week 7: The DOM</li>
					<li>• Week 8: Forms & Input</li>
					<li>• Week 9: Layout Mastery</li>
					<li>• Week 10: Animation & Motion</li>
					<li>• Week 11: Data & APIs</li>
					<li>• Week 12: Local Storage</li>
				</ul>
			</div>
			<div>
				<h4 class="font-medium text-amber-800 mb-1">Phase 3: Mastery (Weeks 13-18)</h4>
				<ul class="text-amber-700 space-y-0.5">
					<li>• Week 13: Scripture Memory App</li>
					<li>• Week 14: Advanced JavaScript</li>
					<li>• Week 15: Modern CSS</li>
					<li>• Week 16: Interactive Bible Story</li>
					<li>• Week 17: Final Project Start</li>
					<li>• Week 18: Final Project & Celebration</li>
				</ul>
			</div>
		</div>
	</div>
</div>
