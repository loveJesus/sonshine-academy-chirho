<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { onMount } from 'svelte';
	import { EditorView, basicSetup } from 'codemirror';
	import { EditorState } from '@codemirror/state';
	import { html } from '@codemirror/lang-html';
	import { css } from '@codemirror/lang-css';
	import { javascript } from '@codemirror/lang-javascript';
	import { oneDark } from '@codemirror/theme-one-dark';

	let {
		initialHtmlChirho = '',
		initialCssChirho = '',
		initialJsChirho = '',
		onchange = () => {},
		height = '400px',
		showPreviewChirho = true
	} = $props();

	let htmlCodeChirho = $state(initialHtmlChirho);
	let cssCodeChirho = $state(initialCssChirho);
	let jsCodeChirho = $state(initialJsChirho);
	let activeTabChirho = $state('html');

	let htmlEditorContainerChirho;
	let cssEditorContainerChirho;
	let jsEditorContainerChirho;
	let previewIframeChirho;

	let htmlEditorViewChirho;
	let cssEditorViewChirho;
	let jsEditorViewChirho;

	function createEditorChirho(containerChirho, langChirho, initialCodeChirho, onUpdateChirho) {
		const extensionsChirho = [
			basicSetup,
			langChirho,
			oneDark,
			EditorView.updateListener.of((updateChirho) => {
				if (updateChirho.docChanged) {
					onUpdateChirho(updateChirho.state.doc.toString());
				}
			})
		];

		const stateChirho = EditorState.create({
			doc: initialCodeChirho,
			extensions: extensionsChirho
		});

		return new EditorView({
			state: stateChirho,
			parent: containerChirho
		});
	}

	onMount(() => {
		htmlEditorViewChirho = createEditorChirho(
			htmlEditorContainerChirho,
			html(),
			htmlCodeChirho,
			(codeChirho) => {
				htmlCodeChirho = codeChirho;
				updatePreviewChirho();
				onchange({ html: htmlCodeChirho, css: cssCodeChirho, js: jsCodeChirho });
			}
		);

		cssEditorViewChirho = createEditorChirho(
			cssEditorContainerChirho,
			css(),
			cssCodeChirho,
			(codeChirho) => {
				cssCodeChirho = codeChirho;
				updatePreviewChirho();
				onchange({ html: htmlCodeChirho, css: cssCodeChirho, js: jsCodeChirho });
			}
		);

		jsEditorViewChirho = createEditorChirho(
			jsEditorContainerChirho,
			javascript(),
			jsCodeChirho,
			(codeChirho) => {
				jsCodeChirho = codeChirho;
				updatePreviewChirho();
				onchange({ html: htmlCodeChirho, css: cssCodeChirho, js: jsCodeChirho });
			}
		);

		// Initial preview
		updatePreviewChirho();

		return () => {
			htmlEditorViewChirho?.destroy();
			cssEditorViewChirho?.destroy();
			jsEditorViewChirho?.destroy();
		};
	});

	function updatePreviewChirho() {
		if (!previewIframeChirho) return;

		const docContentChirho = `
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		* { box-sizing: border-box; }
		body { margin: 0; padding: 1rem; font-family: system-ui, sans-serif; }
		${cssCodeChirho}
	</style>
</head>
<body>
	${htmlCodeChirho}
	<script>
		try {
			${jsCodeChirho}
		} catch (e) {
			console.error('Script error:', e);
		}
	<\/script>
</body>
</html>`;

		previewIframeChirho.srcdoc = docContentChirho;
	}

	function setTabChirho(tabChirho) {
		activeTabChirho = tabChirho;
	}
</script>

<div class="workshop-chirho" style="--editor-height: {height}">
	<!-- Tabs -->
	<div class="tabs-chirho">
		<button
			type="button"
			class="tab-chirho"
			class:active-chirho={activeTabChirho === 'html'}
			onclick={() => setTabChirho('html')}
		>
			<span class="tab-icon-chirho">{'<>'}</span>
			HTML
		</button>
		<button
			type="button"
			class="tab-chirho"
			class:active-chirho={activeTabChirho === 'css'}
			onclick={() => setTabChirho('css')}
		>
			<span class="tab-icon-chirho">#</span>
			CSS
		</button>
		<button
			type="button"
			class="tab-chirho"
			class:active-chirho={activeTabChirho === 'js'}
			onclick={() => setTabChirho('js')}
		>
			<span class="tab-icon-chirho">js</span>
			JavaScript
		</button>
		{#if showPreviewChirho}
			<button
				type="button"
				class="tab-chirho"
				class:active-chirho={activeTabChirho === 'preview'}
				onclick={() => setTabChirho('preview')}
			>
				<span class="tab-icon-chirho">&#9654;</span>
				Preview
			</button>
		{/if}
	</div>

	<!-- Editor Panels -->
	<div class="panels-chirho">
		<div class="editor-panel-chirho" class:hidden-chirho={activeTabChirho !== 'html'}>
			<div bind:this={htmlEditorContainerChirho} class="editor-container-chirho"></div>
		</div>
		<div class="editor-panel-chirho" class:hidden-chirho={activeTabChirho !== 'css'}>
			<div bind:this={cssEditorContainerChirho} class="editor-container-chirho"></div>
		</div>
		<div class="editor-panel-chirho" class:hidden-chirho={activeTabChirho !== 'js'}>
			<div bind:this={jsEditorContainerChirho} class="editor-container-chirho"></div>
		</div>
		{#if showPreviewChirho}
			<div class="preview-panel-chirho" class:hidden-chirho={activeTabChirho !== 'preview'}>
				<iframe
					bind:this={previewIframeChirho}
					title="Preview"
					sandbox="allow-scripts"
					class="preview-iframe-chirho"
				></iframe>
			</div>
		{/if}
	</div>
</div>

<style>
	.workshop-chirho {
		border: 1px solid #3e4451;
		border-radius: 8px;
		overflow: hidden;
		background: #282c34;
	}

	.tabs-chirho {
		display: flex;
		background: #21252b;
		border-bottom: 1px solid #3e4451;
	}

	.tab-chirho {
		padding: 0.75rem 1.25rem;
		background: transparent;
		border: none;
		color: #abb2bf;
		font-size: 0.875rem;
		font-weight: 500;
		cursor: pointer;
		display: flex;
		align-items: center;
		gap: 0.5rem;
		transition: all 0.15s ease;
		border-bottom: 2px solid transparent;
	}

	.tab-chirho:hover {
		color: #e5e7eb;
		background: rgba(255, 255, 255, 0.05);
	}

	.tab-chirho.active-chirho {
		color: #f59e0b;
		border-bottom-color: #f59e0b;
		background: rgba(245, 158, 11, 0.1);
	}

	.tab-icon-chirho {
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 0.75rem;
		opacity: 0.7;
	}

	.panels-chirho {
		height: var(--editor-height);
		position: relative;
	}

	.editor-panel-chirho,
	.preview-panel-chirho {
		position: absolute;
		inset: 0;
		overflow: hidden;
	}

	.hidden-chirho {
		display: none;
	}

	.editor-container-chirho {
		height: 100%;
	}

	:global(.workshop-chirho .cm-editor) {
		height: 100%;
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 14px;
	}

	:global(.workshop-chirho .cm-scroller) {
		font-family: inherit;
	}

	:global(.workshop-chirho .cm-content) {
		padding: 1rem;
	}

	:global(.workshop-chirho .cm-gutters) {
		background: #21252b;
		border-right: 1px solid #3e4451;
	}

	.preview-panel-chirho {
		background: #ffffff;
	}

	.preview-iframe-chirho {
		width: 100%;
		height: 100%;
		border: none;
	}
</style>
