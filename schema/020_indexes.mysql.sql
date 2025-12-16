-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  signing_keys

CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status);
