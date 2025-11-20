<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – signing_keys

Inventory of signing keys (local, KMS-backed, or imported).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| algo_id | BIGINT | NO | — | Signature algorithm (FK crypto_algorithms.id). |  |
| public_key | BYTEA | NO | — | Public key bytes. |  |
| private_key_enc | BYTEA | YES | — | Encrypted private key blob. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| activated_at | TIMESTAMPTZ(6) | YES | — | Activation timestamp (UTC). |  |
| retired_at | TIMESTAMPTZ(6) | YES | — | Retirement timestamp (UTC). |  |
| notes | TEXT | YES | — | Operational notes. |  |