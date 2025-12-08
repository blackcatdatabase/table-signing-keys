-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  signing_keys

CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status);
