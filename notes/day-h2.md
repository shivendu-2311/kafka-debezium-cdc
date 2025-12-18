# Day H2 — PostgreSQL WAL & Logical Replication

## Key Learnings
- WAL is the source of truth in PostgreSQL.
- CDC reads logical WAL, not tables.
- Logical replication emits row-level changes.
- Replication slots ensure no WAL is lost but can cause disk growth.

## Interview Notes
Debezium relies on PostgreSQL logical replication slots to guarantee
exactly-once delivery of CDC events without re-reading data.
