-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  signing_keys

CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status);
