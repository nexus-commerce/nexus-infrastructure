#!/bin/bash

set -e

BOOTSTRAP_SERVER="kafka:29092"

echo "Kafka is ready. Proceeding with topic creation..."

echo "Creating topic 'users.registered'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic users.registered \
  --partitions 3 \
  --replication-factor 1

echo "All topics created successfully."