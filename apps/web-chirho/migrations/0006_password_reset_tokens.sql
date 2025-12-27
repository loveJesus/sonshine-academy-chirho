-- For God so loved the world, that he gave his only begotten Son,
-- that whosoever believeth in him should not perish, but have everlasting life.
-- John 3:16 (KJV)

-- Password Reset Tokens Table
CREATE TABLE IF NOT EXISTS password_reset_tokens_chirho (
    token_id_chirho TEXT PRIMARY KEY NOT NULL,
    user_id_chirho TEXT NOT NULL REFERENCES users_chirho(user_id_chirho) ON DELETE CASCADE,
    token_hash_chirho TEXT NOT NULL,
    expires_at_chirho INTEGER NOT NULL,
    used_at_chirho INTEGER,
    created_at_chirho INTEGER NOT NULL DEFAULT (unixepoch())
);

-- Index for faster token lookup
CREATE INDEX IF NOT EXISTS idx_password_reset_token_hash_chirho ON password_reset_tokens_chirho(token_hash_chirho);

-- Index for cleanup of expired tokens
CREATE INDEX IF NOT EXISTS idx_password_reset_expires_chirho ON password_reset_tokens_chirho(expires_at_chirho);
