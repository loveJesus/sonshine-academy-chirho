<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	// Main course - currently available
	const mainCourseChirho = {
		id: 'sonshine-coders-fundamentals',
		title: 'Sonshine Coders Fundamentals',
		description: 'Our flagship 18-week course! Learn HTML, CSS, and JavaScript by building three real-world Bible-themed projects. Includes 141 coding quests and hands-on terminal exercises.',
		icon: '✝️',
		level: 'Beginner to Intermediate',
		duration: '18 weeks',
		modules: 54,
		color: 'amber',
		verse: 'Study to shew thyself approved unto God, a workman that needeth not to be ashamed. — 2 Timothy 2:15',
		topics: ['HTML & CSS', 'JavaScript Fundamentals', 'DOM Manipulation', 'Databases', 'Real-time Apps', 'Deployment'],
		isAvailable: true
	};

	// Future courses - coming soon
	const futureCourses = [
		{
			id: 'react-foundations',
			title: 'React Foundations',
			description: 'Build modern, interactive web applications using React. Learn components, hooks, and state management.',
			icon: '⚛️',
			level: 'Intermediate',
			duration: '10 weeks',
			modules: 28,
			color: 'blue',
			verse: 'I can do all things through Christ which strengtheneth me. — Philippians 4:13',
			topics: ['Components', 'Props & State', 'Hooks', 'React Router'],
			isAvailable: false
		},
		{
			id: 'database-disciples',
			title: 'Database Disciples',
			description: 'Learn SQL and database design. Store, query, and manage data like a pro.',
			icon: '🗃️',
			level: 'Intermediate',
			duration: '6 weeks',
			modules: 18,
			color: 'green',
			verse: 'Thy word have I hid in mine heart, that I might not sin against thee. — Psalm 119:11',
			topics: ['SQL Queries', 'Table Design', 'Relationships', 'Indexes'],
			isAvailable: false
		},
		{
			id: 'python-parables',
			title: 'Python Parables',
			description: 'Learn Python programming for data analysis, automation, and more. A versatile language for any task.',
			icon: '🐍',
			level: 'Beginner',
			duration: '8 weeks',
			modules: 22,
			color: 'emerald',
			verse: 'The fear of the LORD is the beginning of knowledge. — Proverbs 1:7',
			topics: ['Variables & Types', 'Functions', 'Data Structures', 'File I/O'],
			isAvailable: false
		}
	];

	function getLevelColorChirho(level: string): string {
		switch (level) {
			case 'Beginner':
				return 'bg-green-100 text-green-800';
			case 'Intermediate':
				return 'bg-yellow-100 text-yellow-800';
			case 'Advanced':
				return 'bg-red-100 text-red-800';
			default:
				return 'bg-slate-100 text-slate-800';
		}
	}

	function getColorClassesChirho(color: string): string {
		const colorsChirho: Record<string, string> = {
			amber: 'from-amber-500 to-orange-500',
			yellow: 'from-yellow-500 to-amber-500',
			blue: 'from-blue-500 to-indigo-500',
			green: 'from-green-500 to-emerald-500',
			purple: 'from-purple-500 to-indigo-500',
			emerald: 'from-emerald-500 to-teal-500'
		};
		return colorsChirho[color] || colorsChirho.amber;
	}
</script>

<svelte:head>
	<title>Courses - Sonshine Christian Code Academy</title>
	<meta name="description" content="Explore our faith-integrated coding courses. Learn web development, JavaScript, React, Python, and more." />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-16">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h1 class="text-4xl md:text-5xl font-bold mb-6">Our Courses</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Faith-integrated coding courses designed to teach you valuable skills while growing in your walk with Christ.
		</p>
	</div>
</section>

<!-- Main Course - Featured -->
<section class="py-16 bg-slate-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="text-center mb-8">
			<span class="inline-block bg-green-100 text-green-700 rounded-full px-4 py-1 text-sm font-semibold mb-2">
				NOW AVAILABLE
			</span>
		</div>

		<!-- Featured Course Card -->
		<div class="bg-white rounded-2xl shadow-xl border border-slate-200 overflow-hidden">
			<!-- Course Header -->
			<div class="bg-gradient-to-r from-amber-500 to-orange-500 p-8 text-white">
				<div class="flex items-center justify-between">
					<div>
						<span class="text-5xl">{mainCourseChirho.icon}</span>
						<h2 class="text-3xl font-bold mt-4">{mainCourseChirho.title}</h2>
						<div class="flex items-center gap-3 mt-3">
							<span class="text-sm px-3 py-1 rounded-full bg-white/20">{mainCourseChirho.level}</span>
							<span class="text-sm text-white/90">{mainCourseChirho.duration}</span>
							<span class="text-sm text-white/90">{mainCourseChirho.modules} sessions</span>
						</div>
					</div>
					<div class="hidden md:block text-right">
						<div class="text-5xl font-bold">141</div>
						<div class="text-sm text-white/80">Coding Quests</div>
					</div>
				</div>
			</div>

			<!-- Course Content -->
			<div class="p-8">
				<p class="text-lg text-slate-600 mb-6">{mainCourseChirho.description}</p>

				<!-- Three Projects -->
				<div class="grid md:grid-cols-3 gap-4 mb-6">
					<div class="bg-green-50 rounded-lg p-4 text-center">
						<div class="text-2xl mb-2">📇</div>
						<h4 class="font-semibold text-slate-900">Bible Flashcards</h4>
						<p class="text-xs text-slate-600">Weeks 1-4</p>
					</div>
					<div class="bg-amber-50 rounded-lg p-4 text-center">
						<div class="text-2xl mb-2">📝</div>
						<h4 class="font-semibold text-slate-900">Bible Study Notes</h4>
						<p class="text-xs text-slate-600">Weeks 5-8</p>
					</div>
					<div class="bg-purple-50 rounded-lg p-4 text-center">
						<div class="text-2xl mb-2">🌐</div>
						<h4 class="font-semibold text-slate-900">Verse Share Network</h4>
						<p class="text-xs text-slate-600">Weeks 9-14</p>
					</div>
				</div>

				<!-- Topics -->
				<div class="mb-6">
					<h4 class="text-sm font-semibold text-slate-900 mb-3">What you'll learn:</h4>
					<div class="flex flex-wrap gap-2">
						{#each mainCourseChirho.topics as topicChirho}
							<span class="text-sm bg-slate-100 text-slate-700 px-3 py-1 rounded-full">{topicChirho}</span>
						{/each}
					</div>
				</div>

				<!-- Scripture -->
				<p class="text-sm italic text-slate-500 border-l-4 border-amber-400 pl-4 mb-6">
					"{mainCourseChirho.verse}"
				</p>

				<!-- CTA -->
				<a
					href="/courses-chirho/{mainCourseChirho.id}"
					class="block w-full text-center py-3 px-6 bg-gradient-to-r from-amber-500 to-orange-500 text-white font-bold rounded-lg hover:opacity-90 transition-opacity no-underline text-lg"
				>
					Start This Course
				</a>
			</div>
		</div>
	</div>
</section>

<!-- Future Courses - Coming Soon -->
<section class="py-16 bg-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="text-center mb-12">
			<span class="inline-block bg-slate-100 text-slate-600 rounded-full px-4 py-1 text-sm font-semibold mb-2">
				COMING SOON
			</span>
			<h2 class="text-2xl font-bold text-slate-900">Future Courses</h2>
			<p class="text-slate-600 mt-2">More faith-integrated courses in development</p>
		</div>

		<div class="grid md:grid-cols-3 gap-6">
			{#each futureCourses as courseChirho}
				<div class="bg-slate-50 rounded-xl border border-slate-200 overflow-hidden opacity-75">
					<!-- Course Header -->
					<div class="bg-gradient-to-r {getColorClassesChirho(courseChirho.color)} p-6 text-white relative">
						<div class="absolute top-2 right-2 bg-white/30 text-xs px-2 py-1 rounded-full">Coming Soon</div>
						<span class="text-4xl">{courseChirho.icon}</span>
						<h3 class="text-xl font-bold mt-3">{courseChirho.title}</h3>
						<div class="flex items-center gap-2 mt-2">
							<span class="text-xs px-2 py-1 rounded-full bg-white/20">{courseChirho.level}</span>
							<span class="text-xs text-white/80">{courseChirho.duration}</span>
						</div>
					</div>

					<!-- Course Content -->
					<div class="p-6">
						<p class="text-slate-500 mb-4 text-sm">{courseChirho.description}</p>

						<!-- Topics -->
						<div class="flex flex-wrap gap-1 mb-4">
							{#each courseChirho.topics as topicChirho}
								<span class="text-xs bg-slate-200 text-slate-500 px-2 py-1 rounded">{topicChirho}</span>
							{/each}
						</div>

						<!-- Scripture -->
						<p class="text-xs italic text-slate-400 border-l-2 border-slate-300 pl-2">
							{courseChirho.verse}
						</p>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- Learning Path Section -->
<section class="py-16 bg-slate-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">Your 18-Week Journey</h2>
		<p class="text-lg text-slate-600 mb-8">
			Our flagship course takes you from complete beginner to building and deploying real web applications.
		</p>

		<!-- Path Visualization -->
		<div class="flex flex-col md:flex-row items-center justify-center gap-4">
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-green-500 text-white flex items-center justify-center font-bold">1</span>
				<span class="text-slate-900 font-medium">HTML/CSS/JS Basics</span>
			</div>
			<svg class="w-6 h-6 text-slate-400 hidden md:block" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-amber-500 text-white flex items-center justify-center font-bold">2</span>
				<span class="text-slate-900 font-medium">Databases & Backend</span>
			</div>
			<svg class="w-6 h-6 text-slate-400 hidden md:block" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-purple-500 text-white flex items-center justify-center font-bold">3</span>
				<span class="text-slate-900 font-medium">Real-Time Apps</span>
			</div>
			<svg class="w-6 h-6 text-slate-400 hidden md:block" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-blue-500 text-white flex items-center justify-center font-bold">4</span>
				<span class="text-slate-900 font-medium">Deploy to the World!</span>
			</div>
		</div>
	</div>
</section>

<!-- CTA Section -->
<section class="py-16 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold mb-6">Ready to Start Learning?</h2>
		<p class="text-xl text-white/90 mb-8">
			Create your free account today and begin your coding journey with faith.
		</p>
		<a href="/auth-chirho/register" class="inline-block bg-white text-amber-600 font-bold px-8 py-3 rounded-lg hover:bg-amber-50 transition-colors no-underline">
			Get Started Free
		</a>
	</div>
</section>
