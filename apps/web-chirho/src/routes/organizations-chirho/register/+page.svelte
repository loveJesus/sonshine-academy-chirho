<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { enhance } from '$app/forms';

	let { form } = $props();
</script>

<svelte:head>
	<title>Register Your Organization - Sonshine Christian Code Academy</title>
</svelte:head>

<div class="min-h-[80vh] py-12 px-4">
	<div class="max-w-2xl mx-auto">
		<div class="text-center mb-8">
			<span class="text-5xl">🏛️</span>
			<h1 class="mt-4 text-3xl font-bold text-slate-900">Register Your Organization</h1>
			<p class="mt-2 text-slate-600">
				Bring Christian coding education to your church, school, or homeschool group
			</p>
		</div>

		<div class="card">
			{#if form?.errorChirho}
				<div class="mb-6 p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">
					{form.errorChirho}
				</div>
			{/if}

			<form method="POST" use:enhance class="space-y-6">
				<div class="space-y-4">
					<h2 class="text-lg font-semibold text-slate-900 border-b pb-2">Organization Details</h2>

					<div>
						<label for="nameChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Organization Name <span class="text-red-500">*</span>
						</label>
						<input
							type="text"
							id="nameChirho"
							name="nameChirho"
							required
							minlength="3"
							maxlength="100"
							class="w-full"
							placeholder="e.g., Grace Community Church"
							value={form?.nameChirho ?? ''}
						/>
					</div>

					<div>
						<label for="organizationTypeChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Organization Type <span class="text-red-500">*</span>
						</label>
						<select
							id="organizationTypeChirho"
							name="organizationTypeChirho"
							required
							class="w-full"
							value={form?.organizationTypeChirho ?? ''}
						>
							<option value="">Select type...</option>
							<option value="church">Church</option>
							<option value="school">School</option>
							<option value="homeschool">Homeschool Co-op</option>
							<option value="other">Other Ministry</option>
						</select>
					</div>

					<div>
						<label for="descriptionChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Description (optional)
						</label>
						<textarea
							id="descriptionChirho"
							name="descriptionChirho"
							rows="3"
							class="w-full"
							placeholder="Tell us a bit about your organization..."
							>{form?.descriptionChirho ?? ''}</textarea
						>
					</div>
				</div>

				<div class="space-y-4">
					<h2 class="text-lg font-semibold text-slate-900 border-b pb-2">Primary Contact</h2>

					<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						<div>
							<label for="contactNameChirho" class="block text-sm font-medium text-slate-700 mb-1">
								Contact Name <span class="text-red-500">*</span>
							</label>
							<input
								type="text"
								id="contactNameChirho"
								name="contactNameChirho"
								required
								class="w-full"
								placeholder="Full name"
								value={form?.contactNameChirho ?? ''}
							/>
						</div>

						<div>
							<label for="contactEmailChirho" class="block text-sm font-medium text-slate-700 mb-1">
								Contact Email <span class="text-red-500">*</span>
							</label>
							<input
								type="email"
								id="contactEmailChirho"
								name="contactEmailChirho"
								required
								class="w-full"
								placeholder="email@organization.org"
								value={form?.contactEmailChirho ?? ''}
							/>
						</div>
					</div>

					<div>
						<label for="contactPhoneChirho" class="block text-sm font-medium text-slate-700 mb-1">
							Phone (optional)
						</label>
						<input
							type="tel"
							id="contactPhoneChirho"
							name="contactPhoneChirho"
							class="w-full"
							placeholder="(555) 123-4567"
							value={form?.contactPhoneChirho ?? ''}
						/>
					</div>
				</div>

				<div class="space-y-4">
					<h2 class="text-lg font-semibold text-slate-900 border-b pb-2">Location (optional)</h2>

					<div>
						<label for="addressLine1Chirho" class="block text-sm font-medium text-slate-700 mb-1">
							Address
						</label>
						<input
							type="text"
							id="addressLine1Chirho"
							name="addressLine1Chirho"
							class="w-full"
							placeholder="Street address"
							value={form?.addressLine1Chirho ?? ''}
						/>
					</div>

					<div class="grid grid-cols-2 md:grid-cols-4 gap-4">
						<div>
							<label for="cityChirho" class="block text-sm font-medium text-slate-700 mb-1">City</label>
							<input
								type="text"
								id="cityChirho"
								name="cityChirho"
								class="w-full"
								value={form?.cityChirho ?? ''}
							/>
						</div>

						<div>
							<label for="stateChirho" class="block text-sm font-medium text-slate-700 mb-1">State</label>
							<input
								type="text"
								id="stateChirho"
								name="stateChirho"
								class="w-full"
								maxlength="2"
								value={form?.stateChirho ?? ''}
							/>
						</div>

						<div>
							<label for="postalCodeChirho" class="block text-sm font-medium text-slate-700 mb-1">ZIP</label>
							<input
								type="text"
								id="postalCodeChirho"
								name="postalCodeChirho"
								class="w-full"
								value={form?.postalCodeChirho ?? ''}
							/>
						</div>

						<div>
							<label for="countryChirho" class="block text-sm font-medium text-slate-700 mb-1">Country</label>
							<input
								type="text"
								id="countryChirho"
								name="countryChirho"
								class="w-full"
								value={form?.countryChirho ?? 'US'}
							/>
						</div>
					</div>
				</div>

				<div class="bg-blue-50 border border-blue-200 rounded-lg p-4 text-sm text-blue-800">
					<p class="font-medium mb-2">What happens next?</p>
					<ul class="list-disc ml-5 space-y-1">
						<li>Your organization will be created and you'll become the administrator</li>
						<li>You can create invite codes to share with your students</li>
						<li>Set up cohorts with start dates that work for your schedule</li>
						<li>Monitor student progress from your dashboard</li>
					</ul>
				</div>

				<button type="submit" class="btn-primary w-full text-lg py-3">
					Register Organization
				</button>
			</form>
		</div>

		<p class="mt-8 text-center text-sm text-slate-500 italic">
			"Go ye therefore, and teach all nations..."
			<br />— Matthew 28:19
		</p>
	</div>
</div>
