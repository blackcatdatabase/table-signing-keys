-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  signing_keys
CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
