# 📦 Signing Keys

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->

> Schema package for table **signing_keys** (repo: `signing-keys`).

## Files
```
schema/
  001_table.sql
  020_indexes.sql
  030_foreign_keys.sql
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/020_indexes.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/030_foreign_keys.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/020_indexes.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/030_foreign_keys.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/020_indexes.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/030_foreign_keys.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT | — | AS | PK |
| algo_id | BIGINT | NO | — |  |
| name | VARCHAR(120) | NO | — |  |
| public_key | BYTEA | NO | — |  |
| private_key_enc | BYTEA | YES | — |  |
| kms_key_id | BIGINT | YES | — |  |
| origin | TEXT | NO | 'local' |  |
| status | TEXT | NO | 'active' |  |
| scope | VARCHAR(120) | YES | — |  |
| created_by | BIGINT | YES | — |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) |  |
| activated_at | TIMESTAMPTZ(6) | YES | — |  |
| retired_at | TIMESTAMPTZ(6) | YES | — |  |
| notes | TEXT | YES | — |  |

## Relationships
- FK → **crypto_algorithms** via (algo_id) (ON DELETE RESTRICT).
- FK → **kms_keys** via (kms_key_id) (ON DELETE SET NULL).
- FK → **users** via (created_by) (ON DELETE SET NULL).

```mermaid
erDiagram
  SIGNING_KEYS {
    INT id PK
    INT algo_id
    VARCHAR name
    BYTEA public_key
    BYTEA private_key_enc
    INT kms_key_id
    VARCHAR origin
    VARCHAR status
    VARCHAR scope
    INT created_by
    TIMESTAMPTZ created_at
    TIMESTAMPTZ activated_at
    TIMESTAMPTZ retired_at
    VARCHAR notes
  }
  SIGNING_KEYS }o--|| CRYPTO_ALGORITHMS : "algo_id"
  SIGNING_KEYS }o--|| KMS_KEYS : "kms_key_id"
  SIGNING_KEYS }o--|| USERS : "created_by"
```

## Indexes
- 1 deferred index statement(s) in schema/020_indexes.sql.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.
