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
		showPreviewChirho = true,
		showConsoleChirho = true
	} = $props();

	let htmlCodeChirho = $state(initialHtmlChirho);
	let cssCodeChirho = $state(initialCssChirho);
	let jsCodeChirho = $state(initialJsChirho);
	let activeTabChirho = $state('html');
	let consoleLogsChirho = $state([]);

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

		// Listen for console messages from iframe
		function handleMessageChirho(eventChirho) {
			if (eventChirho.data && eventChirho.data.typeChirho === 'console') {
				consoleLogsChirho = [...consoleLogsChirho, {
					level: eventChirho.data.level,
					args: eventChirho.data.args,
					timestamp: new Date().toLocaleTimeString()
				}];
			}
		}
		window.addEventListener('message', handleMessageChirho);

		// Initial preview
		updatePreviewChirho();

		return () => {
			htmlEditorViewChirho?.destroy();
			cssEditorViewChirho?.destroy();
			jsEditorViewChirho?.destroy();
			window.removeEventListener('message', handleMessageChirho);
		};
	});

	function updatePreviewChirho() {
		if (!previewIframeChirho) return;

		// Clear console on each update
		consoleLogsChirho = [];

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
		// Override console methods to send to parent
		(function() {
			const originalConsole = {
				log: console.log,
				error: console.error,
				warn: console.warn,
				info: console.info
			};

			function sendToParent(level, args) {
				try {
					const serialized = Array.from(args).map(function(arg) {
						if (arg === null) return 'null';
						if (arg === undefined) return 'undefined';
						if (typeof arg === 'object') {
							try { return JSON.stringify(arg, null, 2); }
							catch (e) { return String(arg); }
						}
						return String(arg);
					});
					window.parent.postMessage({
						typeChirho: 'console',
						level: level,
						args: serialized
					}, '*');
				} catch (e) {}
			}

			console.log = function() {
				sendToParent('log', arguments);
				originalConsole.log.apply(console, arguments);
			};
			console.error = function() {
				sendToParent('error', arguments);
				originalConsole.error.apply(console, arguments);
			};
			console.warn = function() {
				sendToParent('warn', arguments);
				originalConsole.warn.apply(console, arguments);
			};
			console.info = function() {
				sendToParent('info', arguments);
				originalConsole.info.apply(console, arguments);
			};

			// Catch errors
			window.onerror = function(msg, url, line, col, error) {
				sendToParent('error', [msg + ' (line ' + line + ')']);
			};
		})();

		try {
			${jsCodeChirho}
		} catch (e) {
			console.error('Script error:', e.message);
		}
	<\/script>
</body>
</html>`;

		previewIframeChirho.srcdoc = docContentChirho;
	}

	function setTabChirho(tabChirho) {
		activeTabChirho = tabChirho;
	}

	function clearConsoleChirho() {
		consoleLogsChirho = [];
	}

	function getLogColorChirho(level) {
		switch (level) {
			case 'error': return 'text-red-400';
			case 'warn': return 'text-yellow-400';
			case 'info': return 'text-blue-400';
			default: return 'text-slate-300';
		}
	}

	function getLogIconChirho(level) {
		switch (level) {
			case 'error': return '✕';
			case 'warn': return '⚠';
			case 'info': return 'ℹ';
			default: return '›';
		}
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
				<span class="tab-icon-chirho">▶</span>
				Preview
			</button>
		{/if}
		{#if showConsoleChirho}
			<button
				type="button"
				class="tab-chirho"
				class:active-chirho={activeTabChirho === 'console'}
				onclick={() => setTabChirho('console')}
			>
				<span class="tab-icon-chirho">$</span>
				Console
				{#if consoleLogsChirho.length > 0}
					<span class="console-badge-chirho">{consoleLogsChirho.length}</span>
				{/if}
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
		{#if showConsoleChirho}
			<div class="console-panel-chirho" class:hidden-chirho={activeTabChirho !== 'console'}>
				<div class="console-header-chirho">
					<span class="text-xs text-slate-400">Console Output</span>
					<button
						type="button"
						class="clear-btn-chirho"
						onclick={clearConsoleChirho}
					>
						Clear
					</button>
				</div>
				<div class="console-output-chirho">
					{#if consoleLogsChirho.length === 0}
						<div class="console-empty-chirho">
							<span class="text-slate-500">No console output yet.</span>
							<span class="text-slate-600 text-xs mt-1">Use console.log() in your JavaScript to see output here.</span>
						</div>
					{:else}
						{#each consoleLogsChirho as logChirho, idx}
							<div class="console-line-chirho {getLogColorChirho(logChirho.level)}">
								<span class="console-icon-chirho">{getLogIconChirho(logChirho.level)}</span>
								<span class="console-time-chirho">{logChirho.timestamp}</span>
								<span class="console-message-chirho">{logChirho.args.join(' ')}</span>
							</div>
						{/each}
					{/if}
				</div>
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
		flex-wrap: wrap;
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

	.console-badge-chirho {
		background: #f59e0b;
		color: #1e1e1e;
		font-size: 0.625rem;
		padding: 0.125rem 0.375rem;
		border-radius: 9999px;
		font-weight: 600;
		min-width: 1.25rem;
		text-align: center;
	}

	.panels-chirho {
		height: var(--editor-height);
		position: relative;
	}

	.editor-panel-chirho,
	.preview-panel-chirho,
	.console-panel-chirho {
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

	.console-panel-chirho {
		background: #1e1e1e;
		display: flex;
		flex-direction: column;
	}

	.console-header-chirho {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 0.5rem 1rem;
		background: #252526;
		border-bottom: 1px solid #3e4451;
	}

	.clear-btn-chirho {
		font-size: 0.75rem;
		padding: 0.25rem 0.5rem;
		background: transparent;
		border: 1px solid #4b5563;
		border-radius: 4px;
		color: #9ca3af;
		cursor: pointer;
		transition: all 0.15s;
	}

	.clear-btn-chirho:hover {
		background: #374151;
		color: #e5e7eb;
	}

	.console-output-chirho {
		flex: 1;
		overflow-y: auto;
		padding: 0.5rem;
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 13px;
	}

	.console-empty-chirho {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		height: 100%;
		text-align: center;
	}

	.console-line-chirho {
		display: flex;
		align-items: flex-start;
		gap: 0.5rem;
		padding: 0.25rem 0.5rem;
		border-bottom: 1px solid #2d2d2d;
	}

	.console-line-chirho:hover {
		background: rgba(255, 255, 255, 0.02);
	}

	.console-icon-chirho {
		flex-shrink: 0;
		width: 1rem;
		text-align: center;
		opacity: 0.7;
	}

	.console-time-chirho {
		flex-shrink: 0;
		font-size: 0.7rem;
		color: #6b7280;
		padding-top: 0.125rem;
	}

	.console-message-chirho {
		flex: 1;
		white-space: pre-wrap;
		word-break: break-word;
	}
</style>
