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

echo "Creating topic 'payment.succeeded'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic payment.succeeded \
  --partitions 3 \
  --replication-factor 1

echo "Creating topic 'payment.failed'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic payment.failed \
  --partitions 3 \
  --replication-factor 1

echo "Creating topic 'stock.reserved'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic stock.reserved \
  --partitions 3 \
  --replication-factor 1

echo "Creating topic 'stock.reservation.failed'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic stock.reservation.failed \
  --partitions 3 \
  --replication-factor 1

echo "Creating topic 'orders.created'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic orders.created \
  --partitions 3 \
  --replication-factor 1

echo "Creating topic 'orders.confirmed'..."
kafka-topics \
  --create \
  --if-not-exists \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --topic orders.confirmed \
  --partitions 3 \
  --replication-factor 1

echo "All topics created successfully."