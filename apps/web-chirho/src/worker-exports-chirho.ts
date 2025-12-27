// For God so loved the world, that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

/**
 * Worker Exports for Cloudflare
 *
 * This file exports Durable Object classes that need to be available to the Cloudflare runtime.
 * The SvelteKit adapter will generate the main worker, but Durable Objects must be exported
 * from the worker's module scope.
 */

export { WorkshopCollabChirho } from '$lib/server/durable-objects/workshop-collab-chirho';
