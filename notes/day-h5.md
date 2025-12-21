## Day H5 — Kafka Connect Sink & Debugging

Goal:
Land CDC data into a downstream system using Kafka Connect Sink.

Key Learnings:
- Kafka Connect has connector-level and task-level states; tasks can fail silently.
- Debezium emits CDC events in an envelope format (before/after/op).
- PostgreSQL NUMERIC types become Base64-encoded with Debezium + JSON.
- Source and sink converters must agree on schema usage.
- Failed tasks do not auto-recover; offsets remain stuck.
- Creating a new topic resets offsets and can resolve poisoned pipelines.

Outcome:
Successfully streamed CDC data from Postgres to a sink table after debugging
connector configs, converters, SMTs, and Kafka offsets.
