<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	let { text = '', class: classNameChirho = '' } = $props();

	/**
	 * Parse basic markdown-like syntax:
	 * - `code` -> <code>code</code>
	 * - **bold** -> <strong>bold</strong>
	 * - *italic* -> <em>italic</em>
	 * - [text](url) -> <a href="url">text</a>
	 */
	function parseMarkdownChirho(inputChirho) {
		if (!inputChirho) return '';

		let resultChirho = inputChirho;

		// Escape HTML to prevent XSS
		resultChirho = resultChirho
			.replace(/&/g, '&amp;')
			.replace(/</g, '&lt;')
			.replace(/>/g, '&gt;');

		// Code blocks with triple backticks (must come before inline code)
		resultChirho = resultChirho.replace(
			/```(\w*)\n?([\s\S]*?)```/g,
			'<pre class="bg-slate-800 text-green-400 p-3 rounded-lg overflow-x-auto my-2 text-sm"><code>$2</code></pre>'
		);

		// Inline code with backticks
		resultChirho = resultChirho.replace(
			/`([^`]+)`/g,
			'<code class="bg-slate-100 text-slate-800 px-1.5 py-0.5 rounded text-sm font-mono">$1</code>'
		);

		// Bold with **text**
		resultChirho = resultChirho.replace(
			/\*\*([^*]+)\*\*/g,
			'<strong>$1</strong>'
		);

		// Italic with *text* (but not inside **)
		resultChirho = resultChirho.replace(
			/(?<!\*)\*([^*]+)\*(?!\*)/g,
			'<em>$1</em>'
		);

		// Links [text](url)
		resultChirho = resultChirho.replace(
			/\[([^\]]+)\]\(([^)]+)\)/g,
			'<a href="$2" class="text-blue-600 hover:text-blue-800 underline" target="_blank" rel="noopener noreferrer">$1</a>'
		);

		// Convert newlines to line breaks for proper display
		// But preserve paragraph breaks (double newlines)
		resultChirho = resultChirho.replace(/\n\n/g, '</p><p class="mt-3">');
		resultChirho = resultChirho.replace(/\n/g, '<br>');

		// Wrap in paragraph
		resultChirho = '<p>' + resultChirho + '</p>';

		return resultChirho;
	}

	let htmlChirho = $derived(parseMarkdownChirho(text));
</script>

<div class="markdown-content-chirho {classNameChirho}">
	{@html htmlChirho}
</div>

<style>
	.markdown-content-chirho :global(p) {
		margin: 0;
	}

	.markdown-content-chirho :global(p + p) {
		margin-top: 0.75rem;
	}

	.markdown-content-chirho :global(pre) {
		margin: 0.5rem 0;
	}

	.markdown-content-chirho :global(code) {
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
	}
</style>
