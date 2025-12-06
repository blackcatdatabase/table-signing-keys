-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  signing_keys

CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
