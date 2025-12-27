<!-- For God so loved the world, that he gave his only begotten Son,
     that whosoever believeth in him should not perish, but have everlasting life.
     John 3:16 (KJV) -->
<script lang="ts">
	import { onMount } from 'svelte';
	import { EditorView, basicSetup } from 'codemirror';
	import { EditorState } from '@codemirror/state';
	import { javascript } from '@codemirror/lang-javascript';
	import { oneDark } from '@codemirror/theme-one-dark';
	import { highlightSelectionMatches } from '@codemirror/search';
	import { autocompletion } from '@codemirror/autocomplete';

	let {
		code = '',
		onchange = (_value: string) => {},
		readonly = false,
		height = '320px',
		placeholder = ''
	} = $props();

	let editorContainerChirho: HTMLDivElement;
	let editorViewChirho: EditorView | null = null;
	let currentValueChirho = $state(code ?? '');

	onMount(() => {
		const extensionsChirho = [
			basicSetup,
			javascript(),
			oneDark,
			highlightSelectionMatches(),
			autocompletion(),
			EditorView.updateListener.of((updateChirho) => {
				if (updateChirho.docChanged) {
					const vChirho = updateChirho.state.doc.toString();
					currentValueChirho = vChirho;
					onchange(vChirho);
				}
			}),
			EditorView.editable.of(!readonly),
			// Handle Ctrl+Enter to run tests
			EditorView.domEventHandlers({
				keydown: (eventChirho, viewChirho) => {
					if ((eventChirho.ctrlKey || eventChirho.metaKey) && eventChirho.key === 'Enter') {
						// Let the event bubble up to the parent
						return false;
					}
					return false;
				}
			})
		];

		const stateChirho = EditorState.create({
			doc: code ?? '',
			extensions: extensionsChirho
		});

		editorViewChirho = new EditorView({
			state: stateChirho,
			parent: editorContainerChirho
		});

		return () => {
			editorViewChirho?.destroy();
		};
	});

	// Update editor when code prop changes externally
	$effect(() => {
		if (editorViewChirho && code !== editorViewChirho.state.doc.toString()) {
			editorViewChirho.dispatch({
				changes: {
					from: 0,
					to: editorViewChirho.state.doc.length,
					insert: code ?? ''
				}
			});
			currentValueChirho = code ?? '';
		}
	});
</script>

<div class="code-editor-wrapper-chirho" style="height: {height}">
	<div bind:this={editorContainerChirho} class="editor-container-chirho"></div>
	{#if (currentValueChirho?.length ?? 0) === 0 && placeholder}
		<div class="placeholder-chirho" aria-hidden="true">{placeholder}</div>
	{/if}
</div>

<style>
	.code-editor-wrapper-chirho {
		position: relative;
		border-radius: 0;
		overflow: hidden;
		background: #282c34;
	}

	.editor-container-chirho {
		height: 100%;
	}

	.placeholder-chirho {
		position: absolute;
		top: 1rem;
		left: 1rem;
		right: 1rem;
		color: #6b7280;
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 14px;
		pointer-events: none;
		white-space: pre-wrap;
	}

	:global(.code-editor-wrapper-chirho .cm-editor) {
		height: 100%;
		font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
		font-size: 14px;
	}

	:global(.code-editor-wrapper-chirho .cm-editor .cm-scroller) {
		font-family: inherit;
	}

	:global(.code-editor-wrapper-chirho .cm-editor .cm-content) {
		padding: 1rem;
	}

	:global(.code-editor-wrapper-chirho .cm-editor .cm-gutters) {
		background: #21252b;
		border-right: 1px solid #3e4451;
	}
</style>
