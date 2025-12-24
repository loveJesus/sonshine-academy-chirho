<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	const coursesChirho = [
		{
			id: 'web-fundamentals',
			title: 'Web Fundamentals',
			description: 'Learn the basics of HTML, CSS, and JavaScript. Build your first websites from scratch.',
			icon: '🌐',
			level: 'Beginner',
			duration: '8 weeks',
			modules: 24,
			color: 'amber',
			verse: 'In the beginning God created the heaven and the earth. — Genesis 1:1',
			topics: ['HTML Structure', 'CSS Styling', 'JavaScript Basics', 'Responsive Design']
		},
		{
			id: 'javascript-journey',
			title: 'JavaScript Journey',
			description: 'Deep dive into JavaScript programming. Master functions, objects, and modern ES6+ features.',
			icon: '📜',
			level: 'Intermediate',
			duration: '10 weeks',
			modules: 30,
			color: 'yellow',
			verse: 'Trust in the LORD with all thine heart; and lean not unto thine own understanding. — Proverbs 3:5',
			topics: ['Functions & Scope', 'Objects & Arrays', 'Async/Await', 'DOM Manipulation']
		},
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
			topics: ['Components', 'Props & State', 'Hooks', 'React Router']
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
			topics: ['SQL Queries', 'Table Design', 'Relationships', 'Indexes']
		},
		{
			id: 'full-stack-faith',
			title: 'Full-Stack Faith',
			description: 'Combine frontend and backend skills. Build complete web applications from start to finish.',
			icon: '🏗️',
			level: 'Advanced',
			duration: '12 weeks',
			modules: 36,
			color: 'purple',
			verse: 'For we are his workmanship, created in Christ Jesus unto good works. — Ephesians 2:10',
			topics: ['API Design', 'Authentication', 'Deployment', 'Testing']
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
			topics: ['Variables & Types', 'Functions', 'Data Structures', 'File I/O']
		}
	];

	function getLevelColorChirho(level) {
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

	function getColorClassesChirho(color) {
		const colorsChirho = {
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

<!-- Course Grid -->
<section class="py-16 bg-slate-50">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
			{#each coursesChirho as courseChirho}
				<div class="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden hover:shadow-lg transition-shadow">
					<!-- Course Header -->
					<div class="bg-gradient-to-r {getColorClassesChirho(courseChirho.color)} p-6 text-white">
						<span class="text-4xl">{courseChirho.icon}</span>
						<h2 class="text-xl font-bold mt-3">{courseChirho.title}</h2>
						<div class="flex items-center gap-2 mt-2">
							<span class="text-xs px-2 py-1 rounded-full bg-white/20">{courseChirho.level}</span>
							<span class="text-xs text-white/80">{courseChirho.duration}</span>
						</div>
					</div>

					<!-- Course Content -->
					<div class="p-6">
						<p class="text-slate-600 mb-4">{courseChirho.description}</p>

						<!-- Topics -->
						<div class="mb-4">
							<h4 class="text-sm font-semibold text-slate-900 mb-2">What you'll learn:</h4>
							<div class="flex flex-wrap gap-2">
								{#each courseChirho.topics as topicChirho}
									<span class="text-xs bg-slate-100 text-slate-600 px-2 py-1 rounded">{topicChirho}</span>
								{/each}
							</div>
						</div>

						<!-- Stats -->
						<div class="flex items-center gap-4 text-sm text-slate-500 mb-4">
							<span class="flex items-center gap-1">
								<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
								</svg>
								{courseChirho.modules} modules
							</span>
						</div>

						<!-- Scripture -->
						<p class="text-xs italic text-slate-500 border-l-2 border-amber-400 pl-2 mb-4">
							{courseChirho.verse}
						</p>

						<!-- CTA -->
						<a
							href="/courses-chirho/{courseChirho.id}"
							class="block w-full text-center py-2 px-4 bg-gradient-to-r {getColorClassesChirho(courseChirho.color)} text-white font-semibold rounded-lg hover:opacity-90 transition-opacity no-underline"
						>
							View Course
						</a>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- Learning Path Section -->
<section class="py-16 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold text-slate-900 mb-6">Your Learning Path</h2>
		<p class="text-lg text-slate-600 mb-8">
			Not sure where to start? Follow our recommended learning path to go from complete beginner
			to full-stack developer.
		</p>

		<!-- Path Visualization -->
		<div class="flex flex-col md:flex-row items-center justify-center gap-4">
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-green-500 text-white flex items-center justify-center font-bold">1</span>
				<span class="text-slate-900 font-medium">Web Fundamentals</span>
			</div>
			<svg class="w-6 h-6 text-slate-400 hidden md:block" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-yellow-500 text-white flex items-center justify-center font-bold">2</span>
				<span class="text-slate-900 font-medium">JavaScript Journey</span>
			</div>
			<svg class="w-6 h-6 text-slate-400 hidden md:block" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-blue-500 text-white flex items-center justify-center font-bold">3</span>
				<span class="text-slate-900 font-medium">React Foundations</span>
			</div>
			<svg class="w-6 h-6 text-slate-400 hidden md:block" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
			</svg>
			<div class="flex items-center gap-2">
				<span class="w-10 h-10 rounded-full bg-purple-500 text-white flex items-center justify-center font-bold">4</span>
				<span class="text-slate-900 font-medium">Full-Stack Faith</span>
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
