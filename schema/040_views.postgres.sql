-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  signing_keys

-- Contract view for [signing_keys]
-- Hides raw keys; exposes hex for public/private (enc).
CREATE OR REPLACE VIEW vw_signing_keys AS
SELECT
  id,
  algo_id,
  name,
  public_key,
  UPPER(encode(digest(public_key,'sha256'),'hex'))::char(64)     AS public_key_hex,
  private_key_enc,
  UPPER(encode(digest(private_key_enc,'sha256'),'hex'))::char(64) AS private_key_enc_hex,
  kms_key_id,
  origin,
  status,
  scope,
  created_by,
  created_at,
  activated_at,
  retired_at,
  notes
FROM signing_keys;
