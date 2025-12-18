-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  signing_keys

CREATE TABLE IF NOT EXISTS signing_keys (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  algo_id BIGINT UNSIGNED NOT NULL,
  name VARCHAR(120) NOT NULL,
  public_key LONGBLOB NOT NULL,
  private_key_enc LONGBLOB NULL,
  kms_key_id BIGINT UNSIGNED NULL,
  origin ENUM('local','kms','imported') NOT NULL DEFAULT 'local',
  status ENUM('active','retired','compromised') NOT NULL DEFAULT 'active',
  scope VARCHAR(120) NULL,
  created_by BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  activated_at DATETIME(6) NULL,
  retired_at DATETIME(6) NULL,
  notes TEXT NULL,
  UNIQUE KEY uq_signing_keys_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
