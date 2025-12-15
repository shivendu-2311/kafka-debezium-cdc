\# Real-Time CDC Pipeline using Kafka \& Debezium



This project demonstrates a production-style Change Data Capture (CDC) pipeline

built using PostgreSQL, Debezium, Kafka, Kafka Connect, and Snowflake.



\## Architecture Overview



PostgreSQL  

→ WAL (Logical Replication)  

→ Debezium (Kafka Connect Source)  

→ Kafka Topics  

→ Kafka Connect Sink  

→ Snowflake  

→ dbt (Analytics Models)



\## Goals of This Project



\- Build a real-time CDC pipeline similar to production systems

\- Understand WAL, logical replication, and Debezium internals

\- Handle failures, offset recovery, and DLQ scenarios

\- Implement analytics-ready models using dbt



\## Status



Phase 4 — Hands-On Implementation (In Progress)



