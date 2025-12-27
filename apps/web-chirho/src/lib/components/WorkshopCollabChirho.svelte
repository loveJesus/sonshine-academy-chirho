<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { onMount } from 'svelte';
	import { EditorView, basicSetup } from 'codemirror';
	import { EditorState, type Extension } from '@codemirror/state';
	import { html } from '@codemirror/lang-html';
	import { css } from '@codemirror/lang-css';
	import { javascript } from '@codemirror/lang-javascript';
	import { oneDark } from '@codemirror/theme-one-dark';

	/**
	 * Collaborative Workshop Component with real-time editing
	 *
	 * Uses Durable Objects for WebSocket-based synchronization
	 */

	type TabType = 'html' | 'css' | 'js' | 'preview' | 'console';

	interface ConsoleLogChirho {
		level: string;
		args: string[];
		timestamp: string;
	}

	interface UserChirho {
		userIdChirho: string;
		displayNameChirho: string;
		colorChirho: string;
	}

	interface CursorInfoChirho {
		colorChirho: string;
		tabChirho: string;
		cursorChirho: { lineChirho: number; columnChirho: number };
	}

	interface CodeChangeChirho {
		html: string;
		css: string;
		js: string;
	}

	// eslint-disable-next-line @typescript-eslint/no-explicit-any
	interface WebSocketMessageChirho {
		typeChirho: string;
		[key: string]: unknown;
	}

	let {
		sessionIdChirho = '',
		userIdChirho = '',
		displayNameChirho = 'Anonymous',
		initialHtmlChirho = '',
		initialCssChirho = '',
		initialJsChirho = '',
		onchange = (_code: CodeChangeChirho) => {},
		height = '400px',
		showPreviewChirho = true,
		showConsoleChirho = true,
		collaborativeChirho = true
	} = $props();

	let htmlCodeChirho = $state(initialHtmlChirho);
	let cssCodeChirho = $state(initialCssChirho);
	let jsCodeChirho = $state(initialJsChirho);
	let activeTabChirho = $state<TabType>('html');
	let consoleLogsChirho = $state<ConsoleLogChirho[]>([]);

	// Collaboration state
	let wsChirho = $state<WebSocket | null>(null);
	let isConnectedChirho = $state(false);
	let connectedUsersChirho = $state<UserChirho[]>([]);
	let remoteCursorsChirho = $state<Map<string, CursorInfoChirho>>(new Map());
	let connectionStatusChirho = $state<'disconnected' | 'connecting' | 'connected' | 'error'>('disconnected');

	let htmlEditorContainerChirho: HTMLDivElement;
	let cssEditorContainerChirho: HTMLDivElement;
	let jsEditorContainerChirho: HTMLDivElement;
	let previewIframeChirho: HTMLIFrameElement;

	let htmlEditorViewChirho: EditorView | null = null;
	let cssEditorViewChirho: EditorView | null = null;
	let jsEditorViewChirho: EditorView | null = null;

	// Flag to prevent update loops when receiving remote changes
	let isRemoteUpdateChirho = false;

	// Debounce timer for sending updates
	let updateTimerChirho: ReturnType<typeof setTimeout> | null = null;

	function createEditorChirho(
		containerChirho: HTMLDivElement,
		langChirho: Extension,
		initialCodeChirho: string,
		tabNameChirho: string,
		onUpdateChirho: (code: string) => void
	): EditorView {
		const extensionsChirho = [
			basicSetup,
			langChirho,
			oneDark,
			EditorView.updateListener.of((updateChirho) => {
				if (updateChirho.docChanged && !isRemoteUpdateChirho) {
					const newCodeChirho = updateChirho.state.doc.toString();
					onUpdateChirho(newCodeChirho);
					// Send cursor position on change
					if (collaborativeChirho && wsChirho && isConnectedChirho) {
						const posChirho = updateChirho.state.selection.main.head;
						const lineChirho = updateChirho.state.doc.lineAt(posChirho);
						sendCursorChirho(tabNameChirho, lineChirho.number, posChirho - lineChirho.from);
					}
				}
			}),
			// Track cursor position on selection change
			EditorView.updateListener.of((updateChirho) => {
				if (updateChirho.selectionSet && collaborativeChirho && wsChirho && isConnectedChirho) {
					const posChirho = updateChirho.state.selection.main.head;
					const lineChirho = updateChirho.state.doc.lineAt(posChirho);
					sendCursorChirho(tabNameChirho, lineChirho.number, posChirho - lineChirho.from);
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

	function connectWebSocketChirho(): void {
		if (!sessionIdChirho || !collaborativeChirho) return;

		connectionStatusChirho = 'connecting';

		const protocolChirho = window.location.protocol === 'https:' ? 'wss:' : 'ws:';
		const wsUrlChirho = `${protocolChirho}//${window.location.host}/api/collab-chirho/${sessionIdChirho}`;

		try {
			wsChirho = new WebSocket(wsUrlChirho);

			wsChirho.onopen = () => {
				connectionStatusChirho = 'connected';
				isConnectedChirho = true;
				// Send join message
				sendMessageChirho({
					typeChirho: 'join',
					userIdChirho: userIdChirho || `user-${Date.now()}`,
					displayNameChirho: displayNameChirho
				});
			};

			wsChirho.onmessage = (eventChirho) => {
				try {
					const dataChirho = JSON.parse(eventChirho.data);
					handleWebSocketMessageChirho(dataChirho);
				} catch (e) {
					console.error('Failed to parse WebSocket message:', e);
				}
			};

			wsChirho.onclose = () => {
				connectionStatusChirho = 'disconnected';
				isConnectedChirho = false;
				// Attempt to reconnect after 3 seconds
				setTimeout(() => {
					if (collaborativeChirho && sessionIdChirho) {
						connectWebSocketChirho();
					}
				}, 3000);
			};

			wsChirho.onerror = (errorChirho) => {
				console.error('WebSocket error:', errorChirho);
				connectionStatusChirho = 'error';
			};
		} catch (e) {
			console.error('Failed to create WebSocket:', e);
			connectionStatusChirho = 'error';
		}
	}

	function sendMessageChirho(messageChirho: WebSocketMessageChirho): void {
		if (wsChirho && wsChirho.readyState === WebSocket.OPEN) {
			wsChirho.send(JSON.stringify(messageChirho));
		}
	}

	function sendUpdateChirho(tabChirho: string, contentChirho: string): void {
		// Debounce updates to avoid flooding
		if (updateTimerChirho) {
			clearTimeout(updateTimerChirho);
		}
		updateTimerChirho = setTimeout(() => {
			sendMessageChirho({
				typeChirho: 'update',
				tabChirho,
				contentChirho
			});
		}, 100);
	}

	function sendCursorChirho(tabChirho: string, lineChirho: number, columnChirho: number): void {
		sendMessageChirho({
			typeChirho: 'cursor',
			tabChirho,
			cursorChirho: { lineChirho, columnChirho }
		});
	}

	// eslint-disable-next-line @typescript-eslint/no-explicit-any
	function handleWebSocketMessageChirho(dataChirho: any): void {
		switch (dataChirho.typeChirho) {
			case 'state':
				// Received full state from server
				if (dataChirho.stateChirho) {
					isRemoteUpdateChirho = true;
					if (dataChirho.stateChirho.htmlChirho !== undefined) {
						htmlCodeChirho = dataChirho.stateChirho.htmlChirho;
						if (htmlEditorViewChirho) {
							htmlEditorViewChirho.dispatch({
								changes: {
									from: 0,
									to: htmlEditorViewChirho.state.doc.length,
									insert: htmlCodeChirho
								}
							});
						}
					}
					if (dataChirho.stateChirho.cssChirho !== undefined) {
						cssCodeChirho = dataChirho.stateChirho.cssChirho;
						if (cssEditorViewChirho) {
							cssEditorViewChirho.dispatch({
								changes: {
									from: 0,
									to: cssEditorViewChirho.state.doc.length,
									insert: cssCodeChirho
								}
							});
						}
					}
					if (dataChirho.stateChirho.jsChirho !== undefined) {
						jsCodeChirho = dataChirho.stateChirho.jsChirho;
						if (jsEditorViewChirho) {
							jsEditorViewChirho.dispatch({
								changes: {
									from: 0,
									to: jsEditorViewChirho.state.doc.length,
									insert: jsCodeChirho
								}
							});
						}
					}
					isRemoteUpdateChirho = false;
					updatePreviewChirho();
				}
				break;

			case 'update':
				// Received update from another user
				if (dataChirho.userIdChirho !== userIdChirho) {
					isRemoteUpdateChirho = true;
					const tabChirho = dataChirho.tabChirho;
					const contentChirho = dataChirho.contentChirho;

					if (tabChirho === 'html' && htmlEditorViewChirho) {
						htmlCodeChirho = contentChirho;
						htmlEditorViewChirho.dispatch({
							changes: {
								from: 0,
								to: htmlEditorViewChirho.state.doc.length,
								insert: contentChirho
							}
						});
					} else if (tabChirho === 'css' && cssEditorViewChirho) {
						cssCodeChirho = contentChirho;
						cssEditorViewChirho.dispatch({
							changes: {
								from: 0,
								to: cssEditorViewChirho.state.doc.length,
								insert: contentChirho
							}
						});
					} else if (tabChirho === 'js' && jsEditorViewChirho) {
						jsCodeChirho = contentChirho;
						jsEditorViewChirho.dispatch({
							changes: {
								from: 0,
								to: jsEditorViewChirho.state.doc.length,
								insert: contentChirho
							}
						});
					}
					isRemoteUpdateChirho = false;
					updatePreviewChirho();
				}
				break;

			case 'presence':
				// Updated user list
				if (dataChirho.usersChirho) {
					connectedUsersChirho = dataChirho.usersChirho.filter(
						(u: UserChirho) => u.userIdChirho !== userIdChirho
					);
				}
				break;

			case 'cursor':
				// Remote cursor position update
				if (dataChirho.userIdChirho !== userIdChirho) {
					remoteCursorsChirho = new Map(remoteCursorsChirho);
					remoteCursorsChirho.set(dataChirho.userIdChirho, {
						colorChirho: dataChirho.colorChirho,
						tabChirho: dataChirho.tabChirho,
						cursorChirho: dataChirho.cursorChirho
					});
				}
				break;

			case 'join':
				// User joined
				console.log(`${dataChirho.displayNameChirho} joined the session`);
				break;

			case 'leave':
				// User left
				console.log(`${dataChirho.displayNameChirho} left the session`);
				remoteCursorsChirho = new Map(remoteCursorsChirho);
				remoteCursorsChirho.delete(dataChirho.userIdChirho);
				break;

			case 'error':
				console.error('Collaboration error:', dataChirho.errorChirho);
				break;
		}
	}

	onMount(() => {
		htmlEditorViewChirho = createEditorChirho(
			htmlEditorContainerChirho,
			html(),
			htmlCodeChirho,
			'html',
			(codeChirho) => {
				htmlCodeChirho = codeChirho;
				updatePreviewChirho();
				onchange({ html: htmlCodeChirho, css: cssCodeChirho, js: jsCodeChirho });
				if (collaborativeChirho && isConnectedChirho) {
					sendUpdateChirho('html', codeChirho);
				}
			}
		);

		cssEditorViewChirho = createEditorChirho(
			cssEditorContainerChirho,
			css(),
			cssCodeChirho,
			'css',
			(codeChirho) => {
				cssCodeChirho = codeChirho;
				updatePreviewChirho();
				onchange({ html: htmlCodeChirho, css: cssCodeChirho, js: jsCodeChirho });
				if (collaborativeChirho && isConnectedChirho) {
					sendUpdateChirho('css', codeChirho);
				}
			}
		);

		jsEditorViewChirho = createEditorChirho(
			jsEditorContainerChirho,
			javascript(),
			jsCodeChirho,
			'js',
			(codeChirho) => {
				jsCodeChirho = codeChirho;
				updatePreviewChirho();
				onchange({ html: htmlCodeChirho, css: cssCodeChirho, js: jsCodeChirho });
				if (collaborativeChirho && isConnectedChirho) {
					sendUpdateChirho('js', codeChirho);
				}
			}
		);

		// Listen for console messages from iframe
		function handleMessageChirho(eventChirho: MessageEvent): void {
			if (eventChirho.data && eventChirho.data.typeChirho === 'console') {
				consoleLogsChirho = [
					...consoleLogsChirho,
					{
						level: eventChirho.data.level,
						args: eventChirho.data.args,
						timestamp: new Date().toLocaleTimeString()
					}
				];
			}
		}
		window.addEventListener('message', handleMessageChirho);

		// Connect to collaboration server
		if (collaborativeChirho && sessionIdChirho) {
			connectWebSocketChirho();
		}

		// Initial preview
		updatePreviewChirho();

		return () => {
			htmlEditorViewChirho?.destroy();
			cssEditorViewChirho?.destroy();
			jsEditorViewChirho?.destroy();
			window.removeEventListener('message', handleMessageChirho);
			if (wsChirho) {
				wsChirho.close();
			}
		};
	});

	function updatePreviewChirho(): void {
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

	function setTabChirho(tabChirho: TabType): void {
		activeTabChirho = tabChirho;
	}

	function clearConsoleChirho(): void {
		consoleLogsChirho = [];
	}

	function getLogColorChirho(level: string): string {
		switch (level) {
			case 'error':
				return 'text-red-400';
			case 'warn':
				return 'text-yellow-400';
			case 'info':
				return 'text-blue-400';
			default:
				return 'text-slate-300';
		}
	}

	function getLogIconChirho(level: string): string {
		switch (level) {
			case 'error':
				return 'X';
			case 'warn':
				return '!';
			case 'info':
				return 'i';
			default:
				return '>';
		}
	}

	function getConnectionStatusColorChirho(): string {
		switch (connectionStatusChirho) {
			case 'connected':
				return 'bg-green-500';
			case 'connecting':
				return 'bg-yellow-500';
			case 'error':
				return 'bg-red-500';
			default:
				return 'bg-slate-500';
		}
	}
</script>

<div class="workshop-collab-chirho" style="--editor-height: {height}">
	<!-- Header with collaboration info -->
	{#if collaborativeChirho && sessionIdChirho}
		<div class="collab-header-chirho">
			<div class="collab-status-chirho">
				<span class="status-dot-chirho {getConnectionStatusColorChirho()}"></span>
				<span class="status-text-chirho">
					{connectionStatusChirho === 'connected'
						? 'Connected'
						: connectionStatusChirho === 'connecting'
							? 'Connecting...'
							: 'Disconnected'}
				</span>
			</div>
			{#if connectedUsersChirho.length > 0}
				<div class="users-chirho">
					{#each connectedUsersChirho as userChirho}
						<span
							class="user-badge-chirho"
							style="background-color: {userChirho.colorChirho}"
							title={userChirho.displayNameChirho}
						>
							{userChirho.displayNameChirho.charAt(0).toUpperCase()}
						</span>
					{/each}
				</div>
			{/if}
			<span class="session-id-chirho">Session: {sessionIdChirho.substring(0, 8)}...</span>
		</div>
	{/if}

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
				<span class="tab-icon-chirho">></span>
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
					<button type="button" class="clear-btn-chirho" onclick={clearConsoleChirho}>
						Clear
					</button>
				</div>
				<div class="console-output-chirho">
					{#if consoleLogsChirho.length === 0}
						<div class="console-empty-chirho">
							<span class="text-slate-500">No console output yet.</span>
							<span class="text-slate-600 text-xs mt-1"
								>Use console.log() in your JavaScript to see output here.</span
							>
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
	.workshop-collab-chirho {
		border: 1px solid #3e4451;
		border-radius: 8px;
		overflow: hidden;
		background: #282c34;
	}

	.collab-header-chirho {
		display: flex;
		align-items: center;
		gap: 1rem;
		padding: 0.5rem 1rem;
		background: #1e222a;
		border-bottom: 1px solid #3e4451;
		font-size: 0.75rem;
	}

	.collab-status-chirho {
		display: flex;
		align-items: center;
		gap: 0.5rem;
	}

	.status-dot-chirho {
		width: 8px;
		height: 8px;
		border-radius: 50%;
	}

	.status-text-chirho {
		color: #9ca3af;
	}

	.users-chirho {
		display: flex;
		gap: 0.25rem;
	}

	.user-badge-chirho {
		width: 24px;
		height: 24px;
		border-radius: 50%;
		display: flex;
		align-items: center;
		justify-content: center;
		color: white;
		font-weight: 600;
		font-size: 0.75rem;
	}

	.session-id-chirho {
		color: #6b7280;
		margin-left: auto;
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

	:global(.workshop-collab-chirho .cm-editor) {
		height: 100%;
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 14px;
	}

	:global(.workshop-collab-chirho .cm-scroller) {
		font-family: inherit;
	}

	:global(.workshop-collab-chirho .cm-content) {
		padding: 1rem;
	}

	:global(.workshop-collab-chirho .cm-gutters) {
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
