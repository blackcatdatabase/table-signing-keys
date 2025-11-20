-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  signing_keys
CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status);
