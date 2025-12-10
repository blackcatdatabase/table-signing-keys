# signing_keys

Inventory of signing keys (local, KMS-backed, or imported).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| public_key | mysql: LONGBLOB / postgres: BYTEA | NO |  | Public key bytes. |
| scope | VARCHAR(120) | YES |  | Usage scope (audit, events, assets, ...). |
| kms_key_id | BIGINT | YES |  | Backing KMS key if stored hardware-side. |
| private_key_enc | mysql: LONGBLOB / postgres: BYTEA | YES |  | Encrypted private key blob. |
| notes | TEXT | YES |  | Operational notes. |
| status | mysql: ENUM('active','retired','compromised') / postgres: TEXT | NO | active | Lifecycle status. (enum: active, retired, compromised) |
| created_by | BIGINT | YES |  | User who created/uploaded the key. |
| activated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Activation timestamp (UTC). |
| name | VARCHAR(120) | NO |  | Key name / identifier. |
| origin | mysql: ENUM('local','kms','imported') / postgres: TEXT | NO | local | Key origin. (enum: local, kms, imported) |
| id | BIGINT | NO |  | Surrogate primary key. |
| algo_id | BIGINT | NO |  | Signature algorithm (FK crypto_algorithms.id). |
| retired_at | DATETIME(6) | YES |  | Retirement timestamp (UTC). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_signing_keys_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sk_algo_status | algo_id,status | CREATE INDEX idx_sk_algo_status ON signing_keys (algo_id, status) |
| uq_signing_keys_name | name | UNIQUE KEY uq_signing_keys_name (name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sk_algo | algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |
| fk_sk_kms | kms_key_id | kms_keys(id) | ON DELETE SET |
| fk_sk_user | created_by | users(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_signing_keys_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sk_algo_status | algo_id,status | CREATE INDEX IF NOT EXISTS idx_sk_algo_status ON signing_keys (algo_id, status) |
| uq_signing_keys_name | name | CONSTRAINT uq_signing_keys_name UNIQUE (name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sk_algo | algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |
| fk_sk_kms | kms_key_id | kms_keys(id) | ON DELETE SET |
| fk_sk_user | created_by | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_signing_keys | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_signing_keys | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
