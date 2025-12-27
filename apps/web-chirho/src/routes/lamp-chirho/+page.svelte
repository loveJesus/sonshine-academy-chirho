<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import LampPlayerChirho from '$lib/components/LampPlayerChirho.svelte';

	// Demo video - using a public domain Bible video
	const demoVideoChirho = {
		videoId: 'NIr1vLDLRRI', // Example: A worship/teaching video
		title: 'Introduction to JavaScript',
		description: 'Learn the basics of JavaScript programming with faith-integrated examples.'
	};

	const demoChaptersChirho = [
		{ title: 'Welcome & Prayer', startTime: 0 },
		{ title: 'What is JavaScript?', startTime: 30 },
		{ title: 'Variables - Storing Truth', startTime: 120 },
		{ title: 'Functions - Calling on the Lord', startTime: 240 },
		{ title: 'Practice Exercise', startTime: 360 },
		{ title: 'Closing & Blessing', startTime: 480 }
	];

	let progressChirho = $state(0);
	let isCompletedChirho = $state(false);

	function handleProgressChirho(dataChirho) {
		progressChirho = dataChirho.percent;
		console.log('Video progress:', Math.round(dataChirho.percent) + '%');
	}

	function handleCompleteChirho() {
		isCompletedChirho = true;
		console.log('Video completed! User has watched 90% or more.');
	}
</script>

<svelte:head>
	<title>Lamp - Video Lessons - Sonshine Christian Code Academy</title>
	<meta name="description" content="Watch faith-integrated video lessons. Your word is a lamp for my feet, a light on my path." />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-4 block">🔦</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Video Lessons</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			"Your word is a lamp for my feet, a light on my path."
			<span class="block mt-2 text-amber-400 font-semibold">— Psalm 119:105</span>
		</p>
	</div>
</section>

<!-- Lamp Info -->
<section class="py-8 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex flex-wrap items-center justify-center gap-8">
			<div class="flex items-center gap-3">
				<span class="text-3xl">📺</span>
				<div>
					<div class="font-semibold">Watch & Learn</div>
					<div class="text-sm text-white/80">Video teaching with chapters</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">📊</span>
				<div>
					<div class="font-semibold">Track Progress</div>
					<div class="text-sm text-white/80">Your progress is saved</div>
				</div>
			</div>
			<div class="flex items-center gap-3">
				<span class="text-3xl">✓</span>
				<div>
					<div class="font-semibold">Earn Completion</div>
					<div class="text-sm text-white/80">Watch 90% to complete</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Demo Lamp Player -->
<section class="py-12 bg-slate-100">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="mb-6">
			<h2 class="text-2xl font-bold text-slate-900 mb-2">Demo Lesson</h2>
			<p class="text-slate-600">
				This is an example video lesson with chapter navigation and progress tracking.
				Watch the video and see your progress update in real-time!
			</p>
		</div>

		<LampPlayerChirho
			videoIdChirho={demoVideoChirho.videoId}
			titleChirho={demoVideoChirho.title}
			descriptionChirho={demoVideoChirho.description}
			chaptersChirho={demoChaptersChirho}
			onprogressChirho={handleProgressChirho}
			oncompleteChirho={handleCompleteChirho}
			initialProgressChirho={0}
		/>

		<!-- Progress Display -->
		<div class="mt-6 p-4 bg-white rounded-lg border border-slate-200">
			<h3 class="font-semibold text-slate-900 mb-3">Progress Tracking Demo</h3>
			<div class="grid md:grid-cols-2 gap-4">
				<div class="p-3 bg-slate-50 rounded-lg">
					<div class="text-sm text-slate-600 mb-1">Current Progress</div>
					<div class="text-2xl font-bold text-amber-600">{Math.round(progressChirho)}%</div>
				</div>
				<div class="p-3 bg-slate-50 rounded-lg">
					<div class="text-sm text-slate-600 mb-1">Completion Status</div>
					<div class="text-2xl font-bold {isCompletedChirho ? 'text-green-600' : 'text-slate-400'}">
						{isCompletedChirho ? 'Completed!' : 'In Progress'}
					</div>
				</div>
			</div>
		</div>

		<!-- Features -->
		<div class="mt-6 p-4 bg-white rounded-lg border border-slate-200">
			<h3 class="font-semibold text-slate-900 mb-2">Lamp Player Features:</h3>
			<ul class="text-sm text-slate-600 space-y-1">
				<li>• <strong>Chapter Navigation:</strong> Jump to any section using the chapters panel</li>
				<li>• <strong>Progress Bar:</strong> Visual indicator of how much you've watched</li>
				<li>• <strong>Auto-Completion:</strong> Lessons are marked complete at 90% watched</li>
				<li>• <strong>Resume Playback:</strong> Pick up where you left off (when integrated with course)</li>
				<li>• <strong>Scripture Theme:</strong> "Your word is a lamp for my feet" - Psalm 119:105</li>
			</ul>
		</div>
	</div>
</section>

<!-- How Lamp Works -->
<section class="py-12 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-2xl font-bold text-slate-900 mb-6 text-center">How Video Lessons Work</h2>
		<div class="grid md:grid-cols-3 gap-6">
			<div class="text-center p-6 bg-amber-50 rounded-xl">
				<span class="text-4xl block mb-3">1️⃣</span>
				<h3 class="font-bold text-slate-900 mb-2">Watch</h3>
				<p class="text-sm text-slate-600">
					Play the video and learn at your own pace. Use chapters to navigate.
				</p>
			</div>
			<div class="text-center p-6 bg-amber-50 rounded-xl">
				<span class="text-4xl block mb-3">2️⃣</span>
				<h3 class="font-bold text-slate-900 mb-2">Track</h3>
				<p class="text-sm text-slate-600">
					Your progress is automatically saved. Come back anytime to continue.
				</p>
			</div>
			<div class="text-center p-6 bg-amber-50 rounded-xl">
				<span class="text-4xl block mb-3">3️⃣</span>
				<h3 class="font-bold text-slate-900 mb-2">Complete</h3>
				<p class="text-sm text-slate-600">
					Watch at least 90% to earn completion and unlock the next lesson.
				</p>
			</div>
		</div>
	</div>
</section>

<!-- CTA -->
<section class="py-16 bg-slate-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">Ready to Learn?</h2>
		<p class="text-lg text-slate-600 mb-8">
			Video lessons are part of our comprehensive course curriculum.
			Each lesson comes with Quests to practice what you've learned!
		</p>
		<div class="flex flex-wrap justify-center gap-4">
			<a href="/courses-chirho" class="btn-primary text-lg px-8 py-3 no-underline">
				View Courses
			</a>
			<a href="/quests-chirho" class="btn-secondary text-lg px-8 py-3 no-underline">
				Practice with Quests
			</a>
		</div>
	</div>
</section>
