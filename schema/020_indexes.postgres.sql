-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  signing_keys
CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
