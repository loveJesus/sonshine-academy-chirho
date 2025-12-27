// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

/**
 * WorkshopCollabChirho - Durable Object for real-time collaborative coding
 *
 * This Durable Object manages a single Workshop session where multiple users
 * can collaboratively edit HTML, CSS, and JavaScript code in real-time.
 *
 * Features:
 * - Real-time code synchronization
 * - User presence tracking (who's connected)
 * - Cursor position sharing
 * - Operation-based updates for efficiency
 */

export interface SessionStateChirho {
	htmlChirho: string;
	cssChirho: string;
	jsChirho: string;
	lastModifiedChirho: string;
}

export interface UserPresenceChirho {
	userIdChirho: string;
	displayNameChirho: string;
	colorChirho: string;
	cursorChirho?: {
		tabChirho: 'html' | 'css' | 'js';
		lineChirho: number;
		columnChirho: number;
	};
	lastSeenChirho: number;
}

export interface CollabMessageChirho {
	typeChirho:
		| 'join'
		| 'leave'
		| 'sync'
		| 'update'
		| 'cursor'
		| 'presence'
		| 'error'
		| 'state';
	userIdChirho?: string;
	displayNameChirho?: string;
	colorChirho?: string;
	tabChirho?: 'html' | 'css' | 'js';
	contentChirho?: string;
	cursorChirho?: { lineChirho: number; columnChirho: number };
	stateChirho?: SessionStateChirho;
	usersChirho?: UserPresenceChirho[];
	errorChirho?: string;
}

// Generate a random color for user cursors
function generateUserColorChirho(): string {
	const colorsChirho = [
		'#f59e0b', // amber
		'#10b981', // emerald
		'#3b82f6', // blue
		'#8b5cf6', // violet
		'#ec4899', // pink
		'#ef4444', // red
		'#14b8a6', // teal
		'#f97316' // orange
	];
	return colorsChirho[Math.floor(Math.random() * colorsChirho.length)];
}

export class WorkshopCollabChirho implements DurableObject {
	private stateChirho: DurableObjectState;
	private sessionsChirho: Map<WebSocket, UserPresenceChirho> = new Map();
	private documentChirho: SessionStateChirho = {
		htmlChirho: '',
		cssChirho: '',
		jsChirho: '',
		lastModifiedChirho: new Date().toISOString()
	};

	constructor(stateChirho: DurableObjectState, _envChirho: unknown) {
		this.stateChirho = stateChirho;

		// Restore document state from storage if available
		this.stateChirho.blockConcurrencyWhile(async () => {
			const storedChirho = await this.stateChirho.storage.get<SessionStateChirho>('document');
			if (storedChirho) {
				this.documentChirho = storedChirho;
			}
		});
	}

	async fetch(requestChirho: Request): Promise<Response> {
		const urlChirho = new URL(requestChirho.url);

		// Handle WebSocket upgrade
		if (requestChirho.headers.get('Upgrade') === 'websocket') {
			return this.handleWebSocketChirho(requestChirho);
		}

		// Handle REST API for initial state or session info
		if (urlChirho.pathname.endsWith('/state')) {
			return new Response(JSON.stringify(this.documentChirho), {
				headers: { 'Content-Type': 'application/json' }
			});
		}

		if (urlChirho.pathname.endsWith('/users')) {
			const usersChirho = Array.from(this.sessionsChirho.values());
			return new Response(JSON.stringify(usersChirho), {
				headers: { 'Content-Type': 'application/json' }
			});
		}

		return new Response('Workshop Collaboration Session', { status: 200 });
	}

	private handleWebSocketChirho(requestChirho: Request): Response {
		const pairChirho = new WebSocketPair();
		const [clientChirho, serverChirho] = Object.values(pairChirho);

		// Accept the WebSocket connection
		this.stateChirho.acceptWebSocket(serverChirho);

		return new Response(null, {
			status: 101,
			webSocket: clientChirho
		});
	}

	async webSocketMessage(wsChirho: WebSocket, messageChirho: string | ArrayBuffer): Promise<void> {
		if (typeof messageChirho !== 'string') {
			return;
		}

		try {
			const dataChirho: CollabMessageChirho = JSON.parse(messageChirho);
			await this.handleMessageChirho(wsChirho, dataChirho);
		} catch (errorChirho) {
			this.sendToSocketChirho(wsChirho, {
				typeChirho: 'error',
				errorChirho: 'Invalid message format'
			});
		}
	}

	async webSocketClose(
		wsChirho: WebSocket,
		_codeChirho: number,
		_reasonChirho: string,
		_wasCleanChirho: boolean
	): Promise<void> {
		const userChirho = this.sessionsChirho.get(wsChirho);
		if (userChirho) {
			this.sessionsChirho.delete(wsChirho);
			// Notify others that user left
			this.broadcastChirho(
				{
					typeChirho: 'leave',
					userIdChirho: userChirho.userIdChirho,
					displayNameChirho: userChirho.displayNameChirho
				},
				wsChirho
			);
			this.broadcastPresenceChirho();
		}
	}

	webSocketError(wsChirho: WebSocket, _errorChirho: unknown): void {
		const userChirho = this.sessionsChirho.get(wsChirho);
		if (userChirho) {
			this.sessionsChirho.delete(wsChirho);
			this.broadcastPresenceChirho();
		}
	}

	private async handleMessageChirho(
		wsChirho: WebSocket,
		dataChirho: CollabMessageChirho
	): Promise<void> {
		switch (dataChirho.typeChirho) {
			case 'join':
				await this.handleJoinChirho(wsChirho, dataChirho);
				break;
			case 'update':
				await this.handleUpdateChirho(wsChirho, dataChirho);
				break;
			case 'cursor':
				this.handleCursorChirho(wsChirho, dataChirho);
				break;
			case 'sync':
				this.sendStateToSocketChirho(wsChirho);
				break;
		}
	}

	private async handleJoinChirho(
		wsChirho: WebSocket,
		dataChirho: CollabMessageChirho
	): Promise<void> {
		const userIdChirho = dataChirho.userIdChirho || `user-${Date.now()}`;
		const displayNameChirho = dataChirho.displayNameChirho || 'Anonymous';
		const colorChirho = dataChirho.colorChirho || generateUserColorChirho();

		const presenceChirho: UserPresenceChirho = {
			userIdChirho,
			displayNameChirho,
			colorChirho,
			lastSeenChirho: Date.now()
		};

		this.sessionsChirho.set(wsChirho, presenceChirho);

		// Send current state to the new user
		this.sendStateToSocketChirho(wsChirho);

		// Notify others about new user
		this.broadcastChirho(
			{
				typeChirho: 'join',
				userIdChirho,
				displayNameChirho,
				colorChirho
			},
			wsChirho
		);

		// Send updated presence list to everyone
		this.broadcastPresenceChirho();
	}

	private async handleUpdateChirho(
		wsChirho: WebSocket,
		dataChirho: CollabMessageChirho
	): Promise<void> {
		const userChirho = this.sessionsChirho.get(wsChirho);
		if (!userChirho) return;

		const tabChirho = dataChirho.tabChirho;
		const contentChirho = dataChirho.contentChirho;

		if (!tabChirho || contentChirho === undefined) return;

		// Update the document state
		if (tabChirho === 'html') {
			this.documentChirho.htmlChirho = contentChirho;
		} else if (tabChirho === 'css') {
			this.documentChirho.cssChirho = contentChirho;
		} else if (tabChirho === 'js') {
			this.documentChirho.jsChirho = contentChirho;
		}

		this.documentChirho.lastModifiedChirho = new Date().toISOString();

		// Persist to storage
		await this.stateChirho.storage.put('document', this.documentChirho);

		// Broadcast to all other users
		this.broadcastChirho(
			{
				typeChirho: 'update',
				userIdChirho: userChirho.userIdChirho,
				displayNameChirho: userChirho.displayNameChirho,
				tabChirho,
				contentChirho
			},
			wsChirho
		);
	}

	private handleCursorChirho(wsChirho: WebSocket, dataChirho: CollabMessageChirho): void {
		const userChirho = this.sessionsChirho.get(wsChirho);
		if (!userChirho || !dataChirho.tabChirho || !dataChirho.cursorChirho) return;

		// Update user's cursor position
		userChirho.cursorChirho = {
			tabChirho: dataChirho.tabChirho,
			lineChirho: dataChirho.cursorChirho.lineChirho,
			columnChirho: dataChirho.cursorChirho.columnChirho
		};
		userChirho.lastSeenChirho = Date.now();

		// Broadcast cursor position to others
		this.broadcastChirho(
			{
				typeChirho: 'cursor',
				userIdChirho: userChirho.userIdChirho,
				colorChirho: userChirho.colorChirho,
				tabChirho: dataChirho.tabChirho,
				cursorChirho: dataChirho.cursorChirho
			},
			wsChirho
		);
	}

	private sendStateToSocketChirho(wsChirho: WebSocket): void {
		this.sendToSocketChirho(wsChirho, {
			typeChirho: 'state',
			stateChirho: this.documentChirho
		});
	}

	private broadcastPresenceChirho(): void {
		const usersChirho = Array.from(this.sessionsChirho.values());
		const messageChirho: CollabMessageChirho = {
			typeChirho: 'presence',
			usersChirho
		};

		for (const wsChirho of this.sessionsChirho.keys()) {
			this.sendToSocketChirho(wsChirho, messageChirho);
		}
	}

	private broadcastChirho(messageChirho: CollabMessageChirho, excludeChirho?: WebSocket): void {
		for (const wsChirho of this.sessionsChirho.keys()) {
			if (wsChirho !== excludeChirho) {
				this.sendToSocketChirho(wsChirho, messageChirho);
			}
		}
	}

	private sendToSocketChirho(wsChirho: WebSocket, messageChirho: CollabMessageChirho): void {
		try {
			wsChirho.send(JSON.stringify(messageChirho));
		} catch {
			// Socket might be closed, remove from sessions
			this.sessionsChirho.delete(wsChirho);
		}
	}
}
