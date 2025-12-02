-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  signing_keys

CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
