-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  signing_keys

ALTER TABLE signing_keys ADD CONSTRAINT fk_sk_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signing_keys ADD CONSTRAINT fk_sk_kms FOREIGN KEY (kms_key_id) REFERENCES kms_keys(id) ON DELETE SET NULL;

ALTER TABLE signing_keys ADD CONSTRAINT fk_sk_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL;
