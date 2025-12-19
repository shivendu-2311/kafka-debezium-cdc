# Day H4 — Kafka Ordering & Replay

## Key Learnings
- Kafka guarantees ordering only within a partition.
- Debezium uses primary keys as Kafka message keys.
- Kafka retains data even after consumption.
- Offsets allow consumers to resume safely.
- Kafka enables CDC replay without re-snapshotting.

## Interview Notes
Kafka acts as a durable, replayable commit log that decouples CDC capture
from downstream systems and guarantees recovery from failures.
