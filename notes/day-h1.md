- Kafka advertised.listeners must be reachable by all clients, not just the host machine.
- Using localhost in advertised.listeners breaks containerized and distributed setups.
- Kafka Connect REST advertised hostname is important for distributed and cloud deployments.
Kafka Connect cannot start without Kafka because it stores connector configs, offsets,
and statuses in Kafka internal topics. Kafka advertised listeners must be reachable
by all clients; using localhost breaks containerized and distributed environments.
