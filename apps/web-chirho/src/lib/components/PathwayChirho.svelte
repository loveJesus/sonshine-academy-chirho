<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script>
	import { onMount } from 'svelte';
	import { EditorView, basicSetup } from 'codemirror';
	import { EditorState } from '@codemirror/state';
	import { javascript } from '@codemirror/lang-javascript';
	import { oneDark } from '@codemirror/theme-one-dark';
	import MarkdownTextChirho from './MarkdownTextChirho.svelte';

	let {
		cellsChirho = [],
		onchangeChirho = () => {},
		oncompleteChirho = () => {},
		readonlyChirho = false
	} = $props();

	// Internal state for cells
	let cellStatesChirho = $state(
		cellsChirho.map((cellChirho, idxChirho) => ({
			id: idxChirho,
			type: cellChirho.type || 'code', // 'code' | 'markdown' | 'output'
			content: cellChirho.content || '',
			output: null,
			error: null,
			isRunning: false,
			isComplete: false,
			expectedOutput: cellChirho.expectedOutput || null,
			hint: cellChirho.hint || null
		}))
	);

	let editorViewsChirho = [];
	let editorContainersChirho = [];

	onMount(() => {
		// Initialize code editors for code cells
		cellStatesChirho.forEach((cellChirho, idxChirho) => {
			if (cellChirho.type === 'code' && editorContainersChirho[idxChirho]) {
				const viewChirho = createEditorChirho(
					editorContainersChirho[idxChirho],
					cellChirho.content,
					idxChirho
				);
				editorViewsChirho[idxChirho] = viewChirho;
			}
		});

		return () => {
			editorViewsChirho.forEach((viewChirho) => viewChirho?.destroy());
		};
	});

	function createEditorChirho(containerChirho, initialCodeChirho, cellIndexChirho) {
		const extensionsChirho = [
			basicSetup,
			javascript(),
			oneDark,
			EditorView.updateListener.of((updateChirho) => {
				if (updateChirho.docChanged) {
					cellStatesChirho[cellIndexChirho].content = updateChirho.state.doc.toString();
					onchangeChirho(cellStatesChirho);
				}
			}),
			EditorState.readOnly.of(readonlyChirho)
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

	function runCellChirho(cellIndexChirho) {
		const cellChirho = cellStatesChirho[cellIndexChirho];
		if (cellChirho.type !== 'code') return;

		cellChirho.isRunning = true;
		cellChirho.output = null;
		cellChirho.error = null;

		// Create a safe execution environment
		const outputsChirho = [];

		try {
			// Create a custom console that captures output
			const customConsoleChirho = {
				log: function() {
					outputsChirho.push({
						type: 'log',
						args: Array.from(arguments).map(formatValueChirho)
					});
				},
				error: function() {
					outputsChirho.push({
						type: 'error',
						args: Array.from(arguments).map(formatValueChirho)
					});
				},
				warn: function() {
					outputsChirho.push({
						type: 'warn',
						args: Array.from(arguments).map(formatValueChirho)
					});
				},
				info: function() {
					outputsChirho.push({
						type: 'info',
						args: Array.from(arguments).map(formatValueChirho)
					});
				}
			};

			// Build code from all previous cells to create context
			let contextCodeChirho = '';
			for (let iChirho = 0; iChirho < cellIndexChirho; iChirho++) {
				if (cellStatesChirho[iChirho].type === 'code') {
					contextCodeChirho += cellStatesChirho[iChirho].content + '\n';
				}
			}

			// Execute with context
			const fullCodeChirho = contextCodeChirho + cellChirho.content;

			// Create function with console override
			const execFnChirho = new Function('console', fullCodeChirho);
			const resultChirho = execFnChirho(customConsoleChirho);

			// If the code returns something, add it to output
			if (resultChirho !== undefined) {
				outputsChirho.push({
					type: 'result',
					value: formatValueChirho(resultChirho)
				});
			}

			cellChirho.output = outputsChirho;

			// Check if output matches expected
			if (cellChirho.expectedOutput) {
				const outputTextChirho = outputsChirho
					.map((oChirho) => (oChirho.args ? oChirho.args.join(' ') : oChirho.value))
					.join('\n')
					.trim();

				cellChirho.isComplete = outputTextChirho === cellChirho.expectedOutput.trim();

				if (cellChirho.isComplete) {
					checkAllCompleteChirho();
				}
			} else {
				cellChirho.isComplete = true;
			}
		} catch (errChirho) {
			cellChirho.error = errChirho.message;
			cellChirho.isComplete = false;
		}

		cellChirho.isRunning = false;
		cellStatesChirho = [...cellStatesChirho]; // Trigger reactivity
	}

	function formatValueChirho(valueChirho) {
		if (valueChirho === null) return 'null';
		if (valueChirho === undefined) return 'undefined';
		if (typeof valueChirho === 'object') {
			try {
				return JSON.stringify(valueChirho, null, 2);
			} catch (eChirho) {
				return String(valueChirho);
			}
		}
		return String(valueChirho);
	}

	function runAllCellsChirho() {
		cellStatesChirho.forEach((cellChirho, idxChirho) => {
			if (cellChirho.type === 'code') {
				runCellChirho(idxChirho);
			}
		});
	}

	function checkAllCompleteChirho() {
		const allCompleteChirho = cellStatesChirho
			.filter((cChirho) => cChirho.type === 'code')
			.every((cChirho) => cChirho.isComplete);

		if (allCompleteChirho) {
			oncompleteChirho();
		}
	}

	function resetCellChirho(cellIndexChirho) {
		const originalChirho = cellsChirho[cellIndexChirho];
		cellStatesChirho[cellIndexChirho].content = originalChirho.content || '';
		cellStatesChirho[cellIndexChirho].output = null;
		cellStatesChirho[cellIndexChirho].error = null;
		cellStatesChirho[cellIndexChirho].isComplete = false;

		// Update editor if it exists
		if (editorViewsChirho[cellIndexChirho]) {
			editorViewsChirho[cellIndexChirho].dispatch({
				changes: {
					from: 0,
					to: editorViewsChirho[cellIndexChirho].state.doc.length,
					insert: originalChirho.content || ''
				}
			});
		}
	}

	function getOutputColorChirho(typeChirho) {
		switch (typeChirho) {
			case 'error':
				return 'text-red-400';
			case 'warn':
				return 'text-yellow-400';
			case 'info':
				return 'text-blue-400';
			case 'result':
				return 'text-purple-400';
			default:
				return 'text-slate-300';
		}
	}
</script>

<div class="pathway-chirho">
	<!-- Header -->
	<div class="pathway-header-chirho">
		<div class="flex items-center gap-3">
			<span class="text-2xl">📓</span>
			<div>
				<span class="font-semibold text-slate-900">JavaScript Pathway</span>
				<span class="text-xs text-slate-500 ml-2">Interactive Notebook</span>
			</div>
		</div>
		<div class="flex items-center gap-2">
			<button type="button" class="run-all-btn-chirho" onclick={runAllCellsChirho}>
				<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z"
					/>
					<path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
					/>
				</svg>
				Run All
			</button>
		</div>
	</div>

	<!-- Cells -->
	<div class="cells-chirho">
		{#each cellStatesChirho as cellChirho, idx}
			<div
				class="cell-chirho"
				class:cell-complete-chirho={cellChirho.isComplete}
				class:cell-error-chirho={cellChirho.error}
			>
				<!-- Cell Header -->
				<div class="cell-header-chirho">
					<div class="flex items-center gap-2">
						<span class="cell-number-chirho">[{idx + 1}]</span>
						<span class="cell-type-chirho">
							{#if cellChirho.type === 'code'}
								<span class="text-amber-500">JS</span>
							{:else if cellChirho.type === 'markdown'}
								<span class="text-blue-500">MD</span>
							{/if}
						</span>
						{#if cellChirho.isComplete}
							<span class="cell-complete-badge-chirho">✓</span>
						{/if}
					</div>
					{#if cellChirho.type === 'code'}
						<div class="flex items-center gap-1">
							{#if cellChirho.hint}
								<button
									type="button"
									class="hint-btn-chirho"
									title="Show Hint"
									onclick={() => alert(cellChirho.hint)}
								>
									💡
								</button>
							{/if}
							<button
								type="button"
								class="reset-btn-chirho"
								title="Reset Cell"
								onclick={() => resetCellChirho(idx)}
							>
								↺
							</button>
							<button
								type="button"
								class="run-btn-chirho"
								class:running-chirho={cellChirho.isRunning}
								onclick={() => runCellChirho(idx)}
							>
								{#if cellChirho.isRunning}
									<svg class="w-4 h-4 animate-spin" fill="none" viewBox="0 0 24 24">
										<circle
											class="opacity-25"
											cx="12"
											cy="12"
											r="10"
											stroke="currentColor"
											stroke-width="4"
										></circle>
										<path
											class="opacity-75"
											fill="currentColor"
											d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z"
										></path>
									</svg>
								{:else}
									▶
								{/if}
							</button>
						</div>
					{/if}
				</div>

				<!-- Cell Content -->
				{#if cellChirho.type === 'markdown'}
					<div class="cell-markdown-chirho">
						<MarkdownTextChirho textChirho={cellChirho.content} />
					</div>
				{:else if cellChirho.type === 'code'}
					<div
						bind:this={editorContainersChirho[idx]}
						class="cell-editor-chirho"
					></div>
				{/if}

				<!-- Cell Output -->
				{#if cellChirho.type === 'code' && (cellChirho.output || cellChirho.error)}
					<div class="cell-output-chirho">
						{#if cellChirho.error}
							<div class="output-error-chirho">
								<span class="error-icon-chirho">✕</span>
								<span>{cellChirho.error}</span>
							</div>
						{:else if cellChirho.output && cellChirho.output.length > 0}
							{#each cellChirho.output as outputLineChirho}
								<div class="output-line-chirho {getOutputColorChirho(outputLineChirho.type)}">
									{#if outputLineChirho.type === 'result'}
										<span class="output-prefix-chirho">←</span>
										<span class="output-value-chirho">{outputLineChirho.value}</span>
									{:else}
										<span class="output-prefix-chirho">›</span>
										<span class="output-value-chirho">{outputLineChirho.args.join(' ')}</span>
									{/if}
								</div>
							{/each}
						{:else}
							<div class="output-empty-chirho">
								<span class="text-slate-500 text-sm italic">No output</span>
							</div>
						{/if}
					</div>
				{/if}

				<!-- Expected Output Hint -->
				{#if cellChirho.expectedOutput && !cellChirho.isComplete && cellChirho.output}
					<div class="expected-hint-chirho">
						<span class="text-xs text-slate-500">Expected output:</span>
						<code class="text-xs text-green-600">{cellChirho.expectedOutput}</code>
					</div>
				{/if}
			</div>
		{/each}
	</div>

	<!-- Footer -->
	<div class="pathway-footer-chirho">
		<p class="text-sm italic text-slate-500">
			"Study to shew thyself approved unto God, a workman that needeth not to be ashamed."
			<span class="font-semibold">— 2 Timothy 2:15</span>
		</p>
	</div>
</div>

<style>
	.pathway-chirho {
		background: white;
		border-radius: 12px;
		overflow: hidden;
		box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
		border: 1px solid #e2e8f0;
	}

	.pathway-header-chirho {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 1rem 1.5rem;
		background: linear-gradient(to right, #fef3c7, #fde68a);
		border-bottom: 1px solid #fcd34d;
	}

	.run-all-btn-chirho {
		display: flex;
		align-items: center;
		gap: 0.5rem;
		padding: 0.5rem 1rem;
		background: #059669;
		color: white;
		border: none;
		border-radius: 6px;
		font-size: 0.875rem;
		font-weight: 500;
		cursor: pointer;
		transition: background 0.15s;
	}

	.run-all-btn-chirho:hover {
		background: #047857;
	}

	.cells-chirho {
		padding: 1rem;
		display: flex;
		flex-direction: column;
		gap: 1rem;
	}

	.cell-chirho {
		border: 1px solid #e2e8f0;
		border-radius: 8px;
		overflow: hidden;
		background: #f8fafc;
	}

	.cell-chirho.cell-complete-chirho {
		border-color: #22c55e;
		background: #f0fdf4;
	}

	.cell-chirho.cell-error-chirho {
		border-color: #ef4444;
		background: #fef2f2;
	}

	.cell-header-chirho {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 0.5rem 0.75rem;
		background: #f1f5f9;
		border-bottom: 1px solid #e2e8f0;
	}

	.cell-complete-chirho .cell-header-chirho {
		background: #dcfce7;
		border-bottom-color: #bbf7d0;
	}

	.cell-error-chirho .cell-header-chirho {
		background: #fee2e2;
		border-bottom-color: #fecaca;
	}

	.cell-number-chirho {
		font-family: 'Monaco', 'Menlo', monospace;
		font-size: 0.75rem;
		color: #64748b;
	}

	.cell-type-chirho {
		font-family: 'Monaco', 'Menlo', monospace;
		font-size: 0.625rem;
		font-weight: 600;
		padding: 0.125rem 0.375rem;
		background: #e2e8f0;
		border-radius: 4px;
	}

	.cell-complete-badge-chirho {
		color: #22c55e;
		font-weight: 600;
	}

	.run-btn-chirho,
	.reset-btn-chirho,
	.hint-btn-chirho {
		width: 1.75rem;
		height: 1.75rem;
		display: flex;
		align-items: center;
		justify-content: center;
		background: white;
		border: 1px solid #cbd5e1;
		border-radius: 4px;
		font-size: 0.75rem;
		cursor: pointer;
		transition: all 0.15s;
	}

	.run-btn-chirho {
		color: #059669;
	}

	.run-btn-chirho:hover {
		background: #059669;
		color: white;
		border-color: #059669;
	}

	.run-btn-chirho.running-chirho {
		background: #fef3c7;
		border-color: #f59e0b;
	}

	.reset-btn-chirho {
		color: #64748b;
	}

	.reset-btn-chirho:hover {
		background: #64748b;
		color: white;
		border-color: #64748b;
	}

	.hint-btn-chirho:hover {
		background: #fef3c7;
		border-color: #f59e0b;
	}

	.cell-markdown-chirho {
		padding: 1rem;
		background: white;
	}

	.cell-editor-chirho {
		background: #282c34;
	}

	:global(.pathway-chirho .cm-editor) {
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 14px;
	}

	:global(.pathway-chirho .cm-content) {
		padding: 0.75rem 1rem;
	}

	:global(.pathway-chirho .cm-gutters) {
		background: #21252b;
		border-right: 1px solid #3e4451;
	}

	.cell-output-chirho {
		padding: 0.75rem 1rem;
		background: #1e1e1e;
		border-top: 1px solid #3e4451;
		font-family: 'Monaco', 'Menlo', monospace;
		font-size: 13px;
	}

	.output-line-chirho {
		display: flex;
		align-items: flex-start;
		gap: 0.5rem;
		padding: 0.125rem 0;
	}

	.output-prefix-chirho {
		color: #64748b;
		flex-shrink: 0;
	}

	.output-value-chirho {
		white-space: pre-wrap;
		word-break: break-word;
	}

	.output-error-chirho {
		display: flex;
		align-items: flex-start;
		gap: 0.5rem;
		color: #ef4444;
	}

	.error-icon-chirho {
		flex-shrink: 0;
	}

	.output-empty-chirho {
		color: #64748b;
	}

	.expected-hint-chirho {
		padding: 0.5rem 1rem;
		background: #fef3c7;
		border-top: 1px solid #fcd34d;
		display: flex;
		align-items: center;
		gap: 0.5rem;
	}

	.expected-hint-chirho code {
		font-family: 'Monaco', 'Menlo', monospace;
		background: white;
		padding: 0.125rem 0.375rem;
		border-radius: 4px;
	}

	.pathway-footer-chirho {
		padding: 1rem 1.5rem;
		text-align: center;
		background: #fffbeb;
		border-top: 1px solid #fcd34d;
	}
</style>
