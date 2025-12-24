Scenario 1: Debezium downtime recovery

- Paused Debezium while DB writes continued
- WAL accumulated safely due to replication slot
- No data reached Kafka during outage
- After resuming connector, all changes streamed correctly
- No re-snapshot required


Scenario 2: Kafka Connect sink failure

- Kafka Connect stopped mid-stream
- Debezium and Kafka continued producing data
- Kafka retained backlog using offsets
- Sink resumed consumption after restart
- No data loss or duplication observed

Scenario 3: Task crash & offset poisoning

- Introduced a poison record that sink could not process
- Task failed while connector remained RUNNING
- Offsets stopped advancing, blocking all downstream data
- Restarting connector did not resolve the issue
- Learned why DLQ or topic redirection is required for recovery
“The most dangerous Kafka Connect failures are plugin mismatches — because everything looks healthy.

In production, Kafka Connect configs are treated like application code — versioned, reviewed, and updated via REST, never manuall