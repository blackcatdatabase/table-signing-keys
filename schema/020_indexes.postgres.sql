-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  signing_keys

CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
