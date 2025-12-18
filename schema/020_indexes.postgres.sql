-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  signing_keys

CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
