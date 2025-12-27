// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import type { RequestHandler } from './$types';

/**
 * Workshop Collaboration API Endpoint
 *
 * This endpoint handles WebSocket upgrades for real-time collaborative editing.
 * It routes connections to the WorkshopCollabChirho Durable Object.
 */

export const GET: RequestHandler = async ({ params, request, platform }) => {
	const sessionIdChirho = params.sessionId;

	if (!sessionIdChirho) {
		return new Response('Session ID is required', { status: 400 });
	}

	// Check if this is a WebSocket upgrade request
	const upgradeHeaderChirho = request.headers.get('Upgrade');
	if (upgradeHeaderChirho !== 'websocket') {
		// Return session info for non-WebSocket requests
		return new Response(
			JSON.stringify({
				sessionIdChirho,
				statusChirho: 'active',
				messageChirho:
					'Connect via WebSocket for real-time collaboration. Set Upgrade: websocket header.'
			}),
			{
				headers: { 'Content-Type': 'application/json' }
			}
		);
	}

	// Get the Durable Object binding
	// @ts-expect-error - WORKSHOP_COLLAB_CHIRHO may not be in type definitions
	const doBindingChirho = platform?.env?.WORKSHOP_COLLAB_CHIRHO;

	if (!doBindingChirho) {
		return new Response('Collaboration service not available', { status: 503 });
	}

	try {
		// Get or create the Durable Object instance for this session
		const idChirho = doBindingChirho.idFromName(sessionIdChirho);
		const stubChirho = doBindingChirho.get(idChirho);

		// Forward the WebSocket upgrade request to the Durable Object
		return stubChirho.fetch(request);
	} catch (errorChirho) {
		console.error('Error connecting to collaboration session:', errorChirho);
		return new Response('Failed to connect to collaboration session', { status: 500 });
	}
};

// Also handle POST for creating new sessions with initial state
export const POST: RequestHandler = async ({ params, request, platform }) => {
	const sessionIdChirho = params.sessionId;

	if (!sessionIdChirho) {
		return new Response('Session ID is required', { status: 400 });
	}

	// @ts-expect-error - WORKSHOP_COLLAB_CHIRHO may not be in type definitions
	const doBindingChirho = platform?.env?.WORKSHOP_COLLAB_CHIRHO;

	if (!doBindingChirho) {
		return new Response('Collaboration service not available', { status: 503 });
	}

	try {
		const bodyChirho = await request.json();
		const idChirho = doBindingChirho.idFromName(sessionIdChirho);
		const stubChirho = doBindingChirho.get(idChirho);

		// Forward the request to initialize the session with content
		return stubChirho.fetch(
			new Request(`https://collab.local/${sessionIdChirho}/init`, {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify(bodyChirho)
			})
		);
	} catch (errorChirho) {
		console.error('Error creating collaboration session:', errorChirho);
		return new Response('Failed to create collaboration session', { status: 500 });
	}
};
