<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	const valuesChirho = [
		{
			icon: '✝️',
			title: 'Faith-Centered',
			description: 'Every lesson is rooted in Biblical principles, helping students see how their coding skills can be used for God\'s glory.'
		},
		{
			icon: '🌟',
			title: 'Excellence',
			description: 'We strive for excellence in everything we teach, preparing students with industry-ready skills and godly character.'
		},
		{
			icon: '🤝',
			title: 'Community',
			description: 'Learning together in a supportive Christian community where students encourage one another in faith and code.'
		},
		{
			icon: '💡',
			title: 'Accessibility',
			description: 'Quality Christian coding education should be available to all, regardless of financial circumstances.'
		}
	];

	const timelineChirho = [
		{
			year: '2024',
			title: 'The Vision',
			description: 'God placed a vision on our hearts to combine faith and technology education for young believers.'
		},
		{
			year: '2025',
			title: 'Building the Foundation',
			description: 'Developing curriculum, platform, and partnerships with churches and Christian organizations.'
		},
		{
			year: '2026',
			title: 'Launch',
			description: 'Official launch of Sonshine Christian Code Academy, bringing faith-integrated coding education to students worldwide.'
		}
	];
</script>

<svelte:head>
	<title>About Us - Sonshine Christian Code Academy</title>
	<meta name="description" content="Learn about Sonshine Christian Code Academy - a faith-centered coding school for middle and high school students." />
</svelte:head>

<!-- Hero Section -->
<section class="bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white py-20">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="text-5xl mb-6 block">☀️</span>
		<h1 class="text-4xl md:text-5xl font-bold mb-6">About Sonshine Christian Code Academy</h1>
		<p class="text-xl text-slate-300 max-w-2xl mx-auto">
			Where faith meets technology. We're building the next generation of Christian developers
			who will use their skills to serve God and impact the world.
		</p>
	</div>
</section>

<!-- Mission Section -->
<section class="py-16 bg-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="grid md:grid-cols-2 gap-12 items-center">
			<div>
				<h2 class="text-3xl font-bold text-slate-900 mb-6">Our Mission</h2>
				<p class="text-lg text-slate-600 mb-4">
					At Sonshine Christian Code Academy, we believe that technology is a powerful tool that can be
					used to advance God's Kingdom. Our mission is to equip young believers with the coding skills
					they need to succeed in the digital age while nurturing their faith and character.
				</p>
				<p class="text-lg text-slate-600 mb-4">
					We're not just teaching kids to code - we're raising up a generation of Christian technologists
					who will create applications, websites, and software that glorify God and serve others.
				</p>
				<blockquote class="scripture-quote mt-6">
					"Whatever you do, work at it with all your heart, as working for the Lord, not for human masters."
					<cite class="block mt-2 text-slate-500 not-italic">— Colossians 3:23 (NIV)</cite>
				</blockquote>
			</div>
			<div class="bg-gradient-to-br from-amber-100 to-orange-100 rounded-2xl p-8 text-center">
				<div class="text-6xl mb-4">🙏</div>
				<h3 class="text-2xl font-bold text-slate-900 mb-4">Faith + Code</h3>
				<p class="text-slate-600">
					Every quest, every lesson, and every project is designed to reinforce both technical skills
					and spiritual growth. We believe these go hand in hand.
				</p>
			</div>
		</div>
	</div>
</section>

<!-- Values Section -->
<section class="py-16 bg-slate-50">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-3xl font-bold text-slate-900 text-center mb-12">Our Values</h2>
		<div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-6">
			{#each valuesChirho as valueChirho}
				<div class="bg-white rounded-xl p-6 shadow-sm border border-slate-200 text-center">
					<div class="text-4xl mb-4">{valueChirho.icon}</div>
					<h3 class="text-xl font-bold text-slate-900 mb-2">{valueChirho.title}</h3>
					<p class="text-slate-600 text-sm">{valueChirho.description}</p>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- What We Teach Section -->
<section class="py-16 bg-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-3xl font-bold text-slate-900 text-center mb-4">What We Teach</h2>
		<p class="text-center text-slate-600 mb-12 max-w-3xl mx-auto">
			More than just coding - we equip students to be fully capable individuals who can produce, lead, and serve.
		</p>

		<!-- Technical Skills -->
		<h3 class="text-xl font-semibold text-slate-800 mb-6 flex items-center gap-2">
			<span class="w-8 h-8 bg-blue-100 rounded-full flex items-center justify-center text-blue-600">1</span>
			Technical Skills
		</h3>
		<div class="grid md:grid-cols-4 gap-6 mb-12">
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">📝</div>
				<h4 class="font-bold text-slate-900 mb-1">Web Development</h4>
				<p class="text-slate-600 text-sm">HTML, CSS, JavaScript, and modern frameworks</p>
			</div>
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">🖥️</div>
				<h4 class="font-bold text-slate-900 mb-1">Programming</h4>
				<p class="text-slate-600 text-sm">Algorithms, data structures, problem-solving</p>
			</div>
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">🤖</div>
				<h4 class="font-bold text-slate-900 mb-1">AI Tools</h4>
				<p class="text-slate-600 text-sm">Using AI assistants wisely and ethically for productivity</p>
			</div>
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">📱</div>
				<h4 class="font-bold text-slate-900 mb-1">Real Projects</h4>
				<p class="text-slate-600 text-sm">Portfolio-worthy work for colleges and employers</p>
			</div>
		</div>

		<!-- Business & Professional Skills -->
		<h3 class="text-xl font-semibold text-slate-800 mb-6 flex items-center gap-2">
			<span class="w-8 h-8 bg-green-100 rounded-full flex items-center justify-center text-green-600">2</span>
			Business & Professional Skills
		</h3>
		<div class="grid md:grid-cols-4 gap-6 mb-12">
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">💼</div>
				<h4 class="font-bold text-slate-900 mb-1">Entrepreneurship</h4>
				<p class="text-slate-600 text-sm">Start and run your own tech business or freelance</p>
			</div>
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">📣</div>
				<h4 class="font-bold text-slate-900 mb-1">Marketing</h4>
				<p class="text-slate-600 text-sm">Promote your services and reach clients effectively</p>
			</div>
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">🤝</div>
				<h4 class="font-bold text-slate-900 mb-1">Client Relations</h4>
				<p class="text-slate-600 text-sm">Recruiting clients, pricing, and professional communication</p>
			</div>
			<div class="text-center p-4 bg-slate-50 rounded-xl">
				<div class="text-3xl mb-3">👥</div>
				<h4 class="font-bold text-slate-900 mb-1">Teamwork</h4>
				<p class="text-slate-600 text-sm">Collaborating well with others on projects</p>
			</div>
		</div>

		<!-- Biblical Foundation -->
		<h3 class="text-xl font-semibold text-slate-800 mb-6 flex items-center gap-2">
			<span class="w-8 h-8 bg-amber-100 rounded-full flex items-center justify-center text-amber-600">3</span>
			Biblical Foundation
		</h3>
		<div class="grid md:grid-cols-4 gap-6 mb-8">
			<div class="text-center p-4 bg-gradient-to-br from-amber-50 to-orange-50 rounded-xl border border-amber-200">
				<div class="text-3xl mb-3">✝️</div>
				<h4 class="font-bold text-slate-900 mb-1">Work Ethics</h4>
				<p class="text-slate-600 text-sm">Biblical principles of diligence, integrity, and excellence</p>
			</div>
			<div class="text-center p-4 bg-gradient-to-br from-amber-50 to-orange-50 rounded-xl border border-amber-200">
				<div class="text-3xl mb-3">⚖️</div>
				<h4 class="font-bold text-slate-900 mb-1">Life Balance</h4>
				<p class="text-slate-600 text-sm">God first, family second - work serves life, not the reverse</p>
			</div>
			<div class="text-center p-4 bg-gradient-to-br from-amber-50 to-orange-50 rounded-xl border border-amber-200">
				<div class="text-3xl mb-3">💰</div>
				<h4 class="font-bold text-slate-900 mb-1">Stewardship</h4>
				<p class="text-slate-600 text-sm">Using our resources, skills, and income for His Kingdom</p>
			</div>
			<div class="text-center p-4 bg-gradient-to-br from-amber-50 to-orange-50 rounded-xl border border-amber-200">
				<div class="text-3xl mb-3">🌍</div>
				<h4 class="font-bold text-slate-900 mb-1">Kingdom Impact</h4>
				<p class="text-slate-600 text-sm">Building technology that glorifies God and serves others</p>
			</div>
		</div>

		<blockquote class="scripture-quote max-w-2xl mx-auto text-center">
			"And whatsoever ye do, do it heartily, as to the Lord, and not unto men."
			<cite class="block mt-2 text-slate-500 not-italic">— Colossians 3:23 (KJV)</cite>
		</blockquote>
	</div>
</section>

<!-- For Who Section -->
<section class="py-16 bg-gradient-to-r from-amber-500 to-orange-500 text-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-3xl font-bold text-center mb-12">Who Is This For?</h2>
		<div class="grid md:grid-cols-2 gap-8">
			<div class="bg-white/10 backdrop-blur-sm rounded-xl p-6">
				<h3 class="text-xl font-bold mb-4">🎒 Middle & High School Students</h3>
				<p class="text-white/90">
					Our primary focus is on students ages 11-18 who want to learn to code. Whether you're
					curious about tech or already tinkering with computers, we have a path for you.
				</p>
			</div>
			<div class="bg-white/10 backdrop-blur-sm rounded-xl p-6">
				<h3 class="text-xl font-bold mb-4">⛪ Churches & Youth Groups</h3>
				<p class="text-white/90">
					We partner with churches to offer coding education as part of youth ministry.
					It's a great way to engage tech-interested students while nurturing their faith.
				</p>
			</div>
			<div class="bg-white/10 backdrop-blur-sm rounded-xl p-6">
				<h3 class="text-xl font-bold mb-4">🏠 Homeschool Families</h3>
				<p class="text-white/90">
					Our curriculum integrates seamlessly with homeschool programs, providing structured
					computer science education with a Christian worldview.
				</p>
			</div>
			<div class="bg-white/10 backdrop-blur-sm rounded-xl p-6">
				<h3 class="text-xl font-bold mb-4">🌍 All Are Welcome</h3>
				<p class="text-white/90">
					While designed for youth, anyone with a desire to learn coding in a faith-based
					environment is welcome to join our community.
				</p>
			</div>
		</div>
	</div>
</section>

<!-- Our Roots Section -->
<section class="py-16 bg-white">
	<div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-3xl font-bold text-slate-900 text-center mb-4">Our Roots</h2>
		<p class="text-center text-slate-600 mb-12 max-w-2xl mx-auto">
			Sonshine Christian Code Academy was birthed from a beautiful partnership between established Christian education and modern technology expertise.
		</p>

		<div class="grid md:grid-cols-2 gap-8">
			<!-- Sonshine Christian Academy -->
			<div class="bg-gradient-to-br from-amber-50 to-orange-50 rounded-2xl p-8 border border-amber-200">
				<div class="flex items-center gap-4 mb-6">
					<div class="w-16 h-16 bg-amber-500 rounded-xl flex items-center justify-center text-white text-2xl shadow-lg">
						☀️
					</div>
					<div>
						<h3 class="text-xl font-bold text-slate-900">Sonshine Christian Academy</h3>
						<p class="text-amber-600 text-sm">Fort Myers, Florida</p>
					</div>
				</div>
				<p class="text-slate-600 mb-4">
					For <strong>48 years</strong>, Sonshine Christian Academy has been serving Southwest Florida as a K3-12 private Christian school with over 450 students. Their foundation is the Holy Bible, providing academic excellence while nurturing spiritual understanding.
				</p>
				<p class="text-slate-600 mb-6">
					Accredited through CGACS and FCPS, Sonshine Christian Academy uses spiritually nurturing, high academic, student-focused curriculum. The Code Academy is an extension of their vision to equip the next generation.
				</p>
				<a
					href="https://sonshinewarriors.org"
					target="_blank"
					rel="noopener noreferrer"
					class="inline-flex items-center gap-2 text-amber-600 hover:text-amber-700 font-semibold no-underline"
				>
					Visit Sonshine Warriors
					<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
					</svg>
				</a>
			</div>

			<!-- L.J. - Love Jesus Software -->
			<div class="bg-gradient-to-br from-blue-50 to-indigo-50 rounded-2xl p-8 border border-blue-200">
				<div class="flex items-center gap-4 mb-6">
					<div class="w-16 h-16 bg-blue-600 rounded-xl flex items-center justify-center text-white text-2xl shadow-lg">
						💻
					</div>
					<div>
						<h3 class="text-xl font-bold text-slate-900">L.J. - The Computer Professor</h3>
						<p class="text-blue-600 text-sm">Love Jesus Software</p>
					</div>
				</div>
				<p class="text-slate-600 mb-4">
					L.J. is a senior software engineer with <strong>20+ years</strong> of full-stack development experience. Based in Fort Myers, Florida, L.J. brings expertise in modern web technologies, AI/ML integration, and cloud architecture.
				</p>
				<p class="text-slate-600 mb-6">
					With a passion for "keeping Jesus at the center in code," L.J. develops technology solutions that serve others and share Christian teachings globally. The Sonshine Code Academy platform was built through this partnership by God's grace.
				</p>
				<a
					href="https://loveJesus.software"
					target="_blank"
					rel="noopener noreferrer"
					class="inline-flex items-center gap-2 text-blue-600 hover:text-blue-700 font-semibold no-underline"
				>
					Visit Love Jesus Software
					<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
					</svg>
				</a>
			</div>
		</div>

		<div class="mt-12 text-center">
			<blockquote class="scripture-quote max-w-2xl mx-auto">
				"Two are better than one; because they have a good reward for their labour."
				<cite class="block mt-2 text-slate-500 not-italic">— Ecclesiastes 4:9 (KJV)</cite>
			</blockquote>
		</div>
	</div>
</section>

<!-- Timeline Section -->
<section class="py-16 bg-slate-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
		<h2 class="text-3xl font-bold text-slate-900 text-center mb-12">Our Journey</h2>
		<div class="space-y-8">
			{#each timelineChirho as itemChirho, indexChirho}
				<div class="flex gap-6">
					<div class="flex flex-col items-center">
						<div class="w-12 h-12 rounded-full bg-amber-500 text-white flex items-center justify-center font-bold">
							{itemChirho.year.slice(-2)}
						</div>
						{#if indexChirho < timelineChirho.length - 1}
							<div class="w-0.5 h-full bg-amber-200 mt-2"></div>
						{/if}
					</div>
					<div class="flex-1 pb-8">
						<div class="text-sm text-amber-600 font-semibold mb-1">{itemChirho.year}</div>
						<h3 class="text-xl font-bold text-slate-900 mb-2">{itemChirho.title}</h3>
						<p class="text-slate-600">{itemChirho.description}</p>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- CTA Section -->
<section class="py-16 bg-slate-900 text-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl font-bold mb-6">Ready to Start Your Coding Journey?</h2>
		<p class="text-xl text-slate-300 mb-8">
			Join Sonshine Christian Code Academy and discover how coding can be an act of worship.
		</p>
		<div class="flex flex-wrap justify-center gap-4">
			<a href="/auth-chirho/register" class="btn-primary text-lg px-8 py-3 no-underline">
				Get Started Free
			</a>
			<a href="/courses-chirho" class="bg-slate-700 hover:bg-slate-600 text-white px-8 py-3 rounded-lg no-underline transition-colors">
				Explore Courses
			</a>
		</div>
	</div>
</section>
