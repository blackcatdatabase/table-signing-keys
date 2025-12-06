-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  signing_keys

CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status);
