-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  signing_keys

-- Contract view for [signing_keys]
-- Hides raw keys; exposes hex for public/private (enc).
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_signing_keys AS
SELECT
  id,
  algo_id,
  name,
  public_key,
  CAST(UPPER(SHA2(public_key, 256))      AS CHAR(64)) AS public_key_hex,
  private_key_enc,
  CAST(UPPER(SHA2(private_key_enc, 256)) AS CHAR(64)) AS private_key_enc_hex,
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
