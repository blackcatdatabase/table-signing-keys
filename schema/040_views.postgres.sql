-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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
  UPPER(encode(public_key,''hex''))     AS public_key_hex,
  private_key_enc,
  UPPER(encode(private_key_enc,''hex'')) AS private_key_enc_hex,
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
