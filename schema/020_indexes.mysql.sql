-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  signing_keys

CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status);
