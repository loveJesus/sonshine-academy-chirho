<!-- For God so loved the world that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	// HomePage has no data from server currently, but we include PageData for future-proofing
	// and to maintain consistency with TypeScript route pattern
	// let { data }: { data: PageData } = $props();
</script>

<svelte:head>
	<title>Sonshine Christian Code Academy - Learn to Code, Grow in Faith</title>
	<meta
		name="description"
		content="A Christian programming course for high schoolers. Learn HTML, CSS, JavaScript, databases, and real-time apps while growing in your faith."
	/>
	<!-- Page-specific Open Graph tags -->
	<meta property="og:title" content="Sonshine Christian Code Academy - Learn to Code, Grow in Faith" />
	<meta property="og:description" content="A fun, faith-filled programming adventure for teens. Build real projects, earn Quest Coins, and discover how coding connects to Scripture." />
	<meta property="og:url" content="https://sonshinecoders.org" />
	<meta name="twitter:title" content="Sonshine Christian Code Academy - Learn to Code, Grow in Faith" />
	<meta name="twitter:description" content="A fun, faith-filled programming adventure for teens. Build real projects, earn Quest Coins, and discover how coding connects to Scripture." />
</svelte:head>

<!-- Hero Section -->
<section class="relative overflow-hidden">
	<!-- Background Image -->
	<div class="absolute inset-0">
		<img
			src="/images/hero-students-chirho.png"
			alt="Students learning to code together"
			class="w-full h-full object-cover"
		/>
		<div class="absolute inset-0 bg-gradient-to-r from-amber-600/75 via-orange-500/70 to-amber-500/65"></div>
	</div>

	<div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-24 lg:py-36">
		<div class="text-center text-white">
			<div class="inline-block bg-white/20 backdrop-blur-sm rounded-full px-4 py-2 mb-6">
				<span class="text-sm font-medium">Free for everyone who needs it</span>
			</div>
			<h1 class="text-4xl md:text-6xl lg:text-7xl font-bold mb-6 drop-shadow-lg">
				Learn to Code.<br />
				<span class="text-amber-200">Grow in Faith.</span>
			</h1>
			<p class="text-xl md:text-2xl mb-10 opacity-95 max-w-3xl mx-auto leading-relaxed">
				A fun, faith-filled programming adventure for teens. Build real projects, earn Quest Coins,
				and discover how coding connects to Scripture.
			</p>
			<div class="flex flex-col sm:flex-row gap-4 justify-center">
				<a
					href="/auth-chirho/register"
					class="bg-white text-amber-600 px-8 py-4 rounded-full font-bold text-lg hover:bg-amber-50 hover:scale-105 transition-all shadow-lg no-underline"
				>
					Start Your Adventure
				</a>
				<a
					href="#projects"
					class="border-2 border-white text-white px-8 py-4 rounded-full font-semibold text-lg hover:bg-white/20 transition-all no-underline"
				>
					See What You'll Build
				</a>
			</div>
			<p class="mt-8 text-amber-100 text-sm">
				Join 100+ students already on their coding journey
			</p>
		</div>
	</div>

	<!-- Wave Divider -->
	<div class="absolute bottom-0 left-0 right-0">
		<svg viewBox="0 0 1440 120" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M0 120L60 110C120 100 240 80 360 70C480 60 600 60 720 65C840 70 960 80 1080 85C1200 90 1320 90 1380 90L1440 90V120H1380C1320 120 1200 120 1080 120C960 120 840 120 720 120C600 120 480 120 360 120C240 120 120 120 60 120H0Z" fill="white"/>
		</svg>
	</div>
</section>

<!-- Three Projects Section -->
<section id="projects" class="py-20 bg-white">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="text-center mb-16">
			<span class="inline-block bg-amber-100 text-amber-700 rounded-full px-4 py-1 text-sm font-semibold mb-4">
				YOUR CODING JOURNEY
			</span>
			<h2 class="text-3xl md:text-5xl font-bold text-slate-900 mb-4">Build Three Epic Projects</h2>
			<p class="text-xl text-slate-600 max-w-2xl mx-auto">
				Level up your skills with each project. By the end, you'll have real apps to show off!
			</p>
		</div>

		<div class="grid md:grid-cols-3 gap-8">
			<!-- Project 1 -->
			<div class="group relative bg-white rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden border border-slate-100">
				<div class="aspect-square overflow-hidden">
					<img
						src="/images/project-flashcard-chirho.png"
						alt="Bible Flashcard App Preview"
						class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
					/>
				</div>
				<div class="p-6">
					<div class="flex items-center gap-2 mb-3">
						<span class="bg-green-100 text-green-700 text-xs font-bold px-3 py-1 rounded-full">WEEKS 1-4</span>
						<span class="text-slate-400 text-sm">Beginner</span>
					</div>
					<h3 class="text-xl font-bold text-slate-900 mb-2">Bible Flashcard App</h3>
					<p class="text-slate-600">
						Learn HTML, CSS, and JavaScript by building a fun flashcard app for memorizing Scripture. Add animations and track your progress!
					</p>
				</div>
			</div>

			<!-- Project 2 -->
			<div class="group relative bg-white rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden border border-slate-100">
				<div class="aspect-square overflow-hidden">
					<img
						src="/images/project-annotation-chirho.png"
						alt="Bible Annotation App Preview"
						class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
					/>
				</div>
				<div class="p-6">
					<div class="flex items-center gap-2 mb-3">
						<span class="bg-amber-100 text-amber-700 text-xs font-bold px-3 py-1 rounded-full">WEEKS 5-8</span>
						<span class="text-slate-400 text-sm">Intermediate</span>
					</div>
					<h3 class="text-xl font-bold text-slate-900 mb-2">Bible Study Notes</h3>
					<p class="text-slate-600">
						Build a full-stack app with databases! Save your personal Bible notes, highlights, and insights in your own app.
					</p>
				</div>
			</div>

			<!-- Project 3 -->
			<div class="group relative bg-white rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 overflow-hidden border border-slate-100">
				<div class="aspect-square overflow-hidden">
					<img
						src="/images/project-sharing-chirho.png"
						alt="Bible Verse Sharing App Preview"
						class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
					/>
				</div>
				<div class="p-6">
					<div class="flex items-center gap-2 mb-3">
						<span class="bg-purple-100 text-purple-700 text-xs font-bold px-3 py-1 rounded-full">WEEKS 9-14</span>
						<span class="text-slate-400 text-sm">Advanced</span>
					</div>
					<h3 class="text-xl font-bold text-slate-900 mb-2">Verse Share Network</h3>
					<p class="text-slate-600">
						Create a real-time social platform to share Bible verses with friends. Deploy it live for the world to see!
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Features Section -->
<section class="py-20 bg-gradient-to-b from-slate-50 to-white">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="text-center mb-16">
			<span class="inline-block bg-blue-100 text-blue-700 rounded-full px-4 py-1 text-sm font-semibold mb-4">
				PACKED WITH FEATURES
			</span>
			<h2 class="text-3xl md:text-5xl font-bold text-slate-900 mb-4">Everything You Need to Succeed</h2>
		</div>

		<div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
			<div class="text-center group">
				<div class="w-20 h-20 mx-auto mb-4 bg-gradient-to-br from-amber-400 to-orange-500 rounded-2xl flex items-center justify-center text-4xl shadow-lg group-hover:scale-110 transition-transform">
					🎮
				</div>
				<h3 class="font-bold text-xl mb-2 text-slate-900">141 Coding Quests</h3>
				<p class="text-slate-600">Biblical-themed challenges like "The Narrow Gate" and "Seventy Times Seven"</p>
			</div>

			<div class="text-center group">
				<div class="w-20 h-20 mx-auto mb-4 bg-gradient-to-br from-blue-400 to-indigo-500 rounded-2xl flex items-center justify-center text-4xl shadow-lg group-hover:scale-110 transition-transform">
					💻
				</div>
				<h3 class="font-bold text-xl mb-2 text-slate-900">Web Terminal</h3>
				<p class="text-slate-600">Your own Linux coding environment right in the browser. No setup needed!</p>
			</div>

			<div class="text-center group">
				<div class="w-20 h-20 mx-auto mb-4 bg-gradient-to-br from-pink-400 to-rose-500 rounded-2xl flex items-center justify-center text-4xl shadow-lg group-hover:scale-110 transition-transform">
					🎥
				</div>
				<h3 class="font-bold text-xl mb-2 text-slate-900">Video Lessons</h3>
				<p class="text-slate-600">Fun, bite-sized videos that make learning easy. Go at your own pace!</p>
			</div>

			<div class="text-center group">
				<div class="w-20 h-20 mx-auto mb-4 bg-gradient-to-br from-yellow-400 to-amber-500 rounded-2xl flex items-center justify-center text-4xl shadow-lg group-hover:scale-110 transition-transform">
					🪙
				</div>
				<h3 class="font-bold text-xl mb-2 text-slate-900">Quest Coins</h3>
				<p class="text-slate-600">Earn coins for every quest you complete. Climb the leaderboard!</p>
			</div>
		</div>
	</div>
</section>

<!-- More Than Just Coding Section -->
<section class="py-20 bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="text-center mb-16">
			<span class="inline-block bg-amber-500/20 text-amber-300 rounded-full px-4 py-1 text-sm font-semibold mb-4">
				HOLISTIC TRAINING
			</span>
			<h2 class="text-3xl md:text-5xl font-bold mb-4">More Than Just Coding</h2>
			<p class="text-xl text-slate-300 max-w-3xl mx-auto">
				We train fully capable individuals who can produce, lead, and serve - grounded in Biblical principles.
			</p>
		</div>

		<div class="grid md:grid-cols-3 gap-8">
			<!-- Technical Excellence -->
			<div class="bg-white/5 backdrop-blur-sm rounded-2xl p-8 border border-white/10">
				<div class="w-14 h-14 bg-blue-500/20 rounded-xl flex items-center justify-center text-3xl mb-6">
					🤖
				</div>
				<h3 class="text-xl font-bold mb-3">AI-Powered Learning</h3>
				<p class="text-slate-300 mb-4">
					Learn to use AI tools wisely and ethically. Understand how to leverage AI assistants for productivity while maintaining your own skills and discernment.
				</p>
				<ul class="text-sm text-slate-400 space-y-2">
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> AI coding assistants</li>
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Ethical AI usage</li>
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Critical thinking</li>
				</ul>
			</div>

			<!-- Business Skills -->
			<div class="bg-white/5 backdrop-blur-sm rounded-2xl p-8 border border-white/10">
				<div class="w-14 h-14 bg-green-500/20 rounded-xl flex items-center justify-center text-3xl mb-6">
					💼
				</div>
				<h3 class="text-xl font-bold mb-3">Business & Entrepreneurship</h3>
				<p class="text-slate-300 mb-4">
					Go beyond coding to learn how to build a career or business. Marketing, client relations, pricing, and professional skills for the real world.
				</p>
				<ul class="text-sm text-slate-400 space-y-2">
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Marketing strategies</li>
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Client recruiting</li>
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Pricing & proposals</li>
				</ul>
			</div>

			<!-- Biblical Foundation -->
			<div class="bg-white/5 backdrop-blur-sm rounded-2xl p-8 border border-white/10">
				<div class="w-14 h-14 bg-amber-500/20 rounded-xl flex items-center justify-center text-3xl mb-6">
					✝️
				</div>
				<h3 class="text-xl font-bold mb-3">Biblical Work Ethics</h3>
				<p class="text-slate-300 mb-4">
					God first, family second, work serves life. Learn stewardship, integrity, teamwork, and using your resources and skills for His Kingdom.
				</p>
				<ul class="text-sm text-slate-400 space-y-2">
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Life balance priorities</li>
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Kingdom stewardship</li>
					<li class="flex items-center gap-2"><span class="text-green-400">✓</span> Working with others</li>
				</ul>
			</div>
		</div>

		<div class="mt-12 text-center">
			<p class="text-amber-300 italic max-w-2xl mx-auto">
				"Seest thou a man diligent in his business? he shall stand before kings."
				<span class="text-slate-400 not-italic">— Proverbs 22:29 (KJV)</span>
			</p>
		</div>
	</div>
</section>

<!-- For Organizations Section -->
<section class="py-20 bg-white overflow-hidden">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="grid md:grid-cols-2 gap-12 items-center">
			<div>
				<span class="inline-block bg-green-100 text-green-700 rounded-full px-4 py-1 text-sm font-semibold mb-4">
					FOR GROUPS
				</span>
				<h2 class="text-3xl md:text-5xl font-bold text-slate-900 mb-6">
					Perfect for Youth Groups & Schools
				</h2>
				<p class="text-lg text-slate-600 mb-8">
					Bring coding to your church, school, or homeschool co-op! Create your organization,
					invite students with a simple code, and track everyone's progress.
				</p>
				<ul class="space-y-4 mb-8">
					<li class="flex items-center gap-4">
						<div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center text-green-600 font-bold">✓</div>
						<span class="text-slate-700 text-lg">Private cohorts for your group</span>
					</li>
					<li class="flex items-center gap-4">
						<div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center text-green-600 font-bold">✓</div>
						<span class="text-slate-700 text-lg">Easy invite codes for enrollment</span>
					</li>
					<li class="flex items-center gap-4">
						<div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center text-green-600 font-bold">✓</div>
						<span class="text-slate-700 text-lg">Instructor dashboard with analytics</span>
					</li>
					<li class="flex items-center gap-4">
						<div class="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center text-green-600 font-bold">✓</div>
						<span class="text-slate-700 text-lg">Custom announcements for your org</span>
					</li>
				</ul>
				<a href="/organizations-chirho/register" class="inline-flex items-center gap-2 bg-slate-900 text-white px-6 py-3 rounded-full font-semibold hover:bg-slate-800 transition-colors no-underline shadow-lg">
					Register Your Organization
					<svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
					</svg>
				</a>
			</div>
			<div class="relative">
				<div class="absolute -inset-4 bg-gradient-to-r from-green-200 to-blue-200 rounded-3xl blur-2xl opacity-50"></div>
				<img
					src="/images/youth-group-chirho.png"
					alt="Youth group learning to code together"
					class="relative rounded-2xl shadow-2xl w-full"
				/>
			</div>
		</div>
	</div>
</section>

<!-- Pricing Section -->
<section class="py-20 bg-gradient-to-b from-amber-50 to-orange-50">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<span class="inline-block bg-amber-200 text-amber-800 rounded-full px-4 py-1 text-sm font-semibold mb-4">
			MINISTRY-SUPPORTED
		</span>
		<h2 class="text-3xl md:text-5xl font-bold text-slate-900 mb-6">Pay What You Can</h2>
		<p class="text-lg text-slate-600 mb-10 max-w-2xl mx-auto">
			We believe everyone should have access to quality education.
			Choose what works for your family - scholarships available for anyone who needs it.
		</p>

		<div class="bg-white rounded-3xl shadow-xl p-8 md:p-10">
			<div class="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
				<button class="group p-6 rounded-2xl border-2 border-slate-200 hover:border-green-500 hover:bg-green-50 cursor-pointer transition-all">
					<div class="font-bold text-3xl text-slate-900 group-hover:text-green-600">$0</div>
					<div class="text-sm text-slate-500 mt-1">Scholarship</div>
					<div class="text-xs text-slate-400 mt-2">Full access, no cost</div>
				</button>
				<button class="group p-6 rounded-2xl border-2 border-blue-500 bg-blue-50 cursor-pointer transition-all">
					<div class="font-bold text-3xl text-blue-600">$5</div>
					<div class="text-sm text-slate-600 mt-1">Cover my costs</div>
					<div class="text-xs text-slate-400 mt-2">~$3-5 server cost</div>
				</button>
				<button class="group p-6 rounded-2xl border-2 border-slate-200 hover:border-amber-500 hover:bg-amber-50 cursor-pointer transition-all">
					<div class="font-bold text-3xl text-slate-900 group-hover:text-amber-600">$10</div>
					<div class="text-sm text-slate-500 mt-1">Support the mission</div>
					<div class="text-xs text-slate-400 mt-2">Fund scholarships</div>
				</button>
				<button class="group p-6 rounded-2xl border-2 border-slate-200 hover:border-purple-500 hover:bg-purple-50 cursor-pointer transition-all">
					<div class="font-bold text-3xl text-slate-900 group-hover:text-purple-600">$25</div>
					<div class="text-sm text-slate-500 mt-1">Champion</div>
					<div class="text-xs text-slate-400 mt-2">Sponsor 5 students</div>
				</button>
			</div>

			<div class="bg-amber-50 rounded-2xl p-6 mb-8 text-left">
				<h3 class="font-bold text-amber-900 mb-2 flex items-center gap-2">
					<span>💛</span> Where Your Support Goes
				</h3>
				<ul class="text-sm text-amber-800 space-y-1">
					<li><strong>$0-5:</strong> Covers server infrastructure for your account</li>
					<li><strong>$10+:</strong> Helps cover our living expenses and funds scholarships for students who can't afford to give</li>
					<li><strong>$25+:</strong> Directly sponsors additional students and supports mission work bringing coding education to underserved communities</li>
				</ul>
			</div>

			<a href="/auth-chirho/register" class="inline-flex items-center justify-center gap-2 bg-gradient-to-r from-amber-500 to-orange-500 text-white px-10 py-4 rounded-full font-bold text-lg hover:from-amber-600 hover:to-orange-600 transition-all shadow-lg hover:shadow-xl no-underline">
				Start Learning Today
				<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
				</svg>
			</a>

			<p class="mt-8 text-slate-500 italic">
				"Freely you have received; freely give." — Matthew 10:8
			</p>
		</div>
	</div>
</section>

<!-- Testimonial/Mission Section -->
<section class="py-20 bg-white">
	<div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<div class="text-6xl mb-6">✝️</div>
		<h2 class="text-2xl md:text-3xl font-bold text-slate-900 mb-6">
			"Whatever you do, work at it with all your heart, as working for the Lord."
		</h2>
		<p class="text-xl text-slate-500 mb-8">— Colossians 3:23</p>
		<p class="text-lg text-slate-600 max-w-2xl mx-auto">
			We believe coding is a gift that can be used to glorify God and serve others.
			Our mission is to equip the next generation with both technical skills and spiritual foundation.
		</p>
	</div>
</section>

<!-- CTA Section -->
<section class="py-24 bg-gradient-to-r from-slate-900 via-slate-800 to-slate-900 text-white relative overflow-hidden">
	<!-- Background Pattern -->
	<div class="absolute inset-0 opacity-10">
		<div class="absolute top-10 left-10 text-8xl">{'<'}/{'>'}</div>
		<div class="absolute bottom-10 right-10 text-8xl">{'{}'}</div>
		<div class="absolute top-1/2 left-1/4 text-6xl">//</div>
		<div class="absolute top-1/3 right-1/4 text-6xl">[]</div>
	</div>

	<div class="relative max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
		<h2 class="text-3xl md:text-5xl font-bold mb-6">Ready to Begin Your Adventure?</h2>
		<p class="text-xl text-slate-300 mb-10 max-w-2xl mx-auto">
			Join students from around the world learning to code for God's glory.
			Your journey starts with a single step.
		</p>
		<div class="flex flex-col sm:flex-row gap-4 justify-center">
			<a
				href="/auth-chirho/register"
				class="bg-gradient-to-r from-amber-400 to-orange-500 text-slate-900 px-10 py-4 rounded-full font-bold text-lg hover:from-amber-500 hover:to-orange-600 transition-all shadow-lg hover:shadow-xl no-underline"
			>
				Create Your Free Account
			</a>
			<a
				href="/organizations-chirho/register"
				class="border-2 border-white/30 text-white px-10 py-4 rounded-full font-semibold text-lg hover:bg-white/10 transition no-underline"
			>
				Register an Organization
			</a>
		</div>
		<p class="mt-8 text-slate-400 text-sm">
			No credit card required • Scholarships available • Cancel anytime
		</p>
	</div>
</section>
