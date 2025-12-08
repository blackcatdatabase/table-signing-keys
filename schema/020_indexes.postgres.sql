-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  signing_keys

CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status);
