-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  signing_keys

ALTER TABLE signing_keys ADD CONSTRAINT fk_sk_algo  FOREIGN KEY (algo_id)  REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signing_keys ADD CONSTRAINT fk_sk_kms   FOREIGN KEY (kms_key_id) REFERENCES kms_keys(id) ON DELETE SET NULL;

ALTER TABLE signing_keys ADD CONSTRAINT fk_sk_user  FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE SET NULL;
