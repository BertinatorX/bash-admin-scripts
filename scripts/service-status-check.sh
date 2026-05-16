#!/usr/bin/env bash

# Purpose: Check status for one or more Linux services.
# Usage: ./service-status-check.sh sshd NetworkManager
# Notes: Intended for personal lab and learning use.

set -u

if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <service-name> [service-name...]"
  exit 1
fi

for service in "$@"; do
  echo "Service: $service"
  echo "----------------"
  systemctl is-active "$service" 2>/dev/null || true
  systemctl is-enabled "$service" 2>/dev/null || true
  echo
done
