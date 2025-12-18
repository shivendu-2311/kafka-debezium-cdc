# Day H3 — Debezium CDC

## Key Learnings
- Debezium runs as a Kafka Connect source connector.
- Initial snapshot captures existing data.
- WAL streaming captures inserts, updates, and deletes.
- CDC events include before/after states and operation type.

## Interview Notes
Debezium reads PostgreSQL logical replication streams using a replication slot
and guarantees no data loss by retaining WAL until events are published to Kafka.


### Why `before` Can Be Null
PostgreSQL logical replication (pgoutput) does not include old row values by default.
Debezium can only emit `before` if tables use `REPLICA IDENTITY FULL` or have suitable keys.
This is a tradeoff between WAL size and CDC richness.

### Tradeoff of REPLICA IDENTITY FULL
Provides full before-images for CDC events, improving correctness and debuggability.
However, it increases WAL size and can impact performance on high-write tables,
so it should be enabled selectively.

### Why Kafka Between Debezium and Sinks
Kafka acts as a durable, replayable buffer that decouples CDC capture from downstream systems,
protects OLTP databases from backpressure, and enables recovery without re-snapshotting.
Re-snapshotting is dangerous in production because it re-emits full table data,
can introduce duplicates or overwrite newer records, increases storage and compute
costs, and may fail for large tables, disrupting the entire CDC pipeline.
