#!/bin/sh

echo "===== Checking Prometheus configuration ====="
promtool check config /etc/prometheus/prometheus.yml

echo "===== Starting Prometheus ====="
exec "$@"
