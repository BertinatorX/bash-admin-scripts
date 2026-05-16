#!/usr/bin/env bash

# Purpose: Review failed login messages from system logs in a lab environment.
# Usage: ./failed-login-review.sh
# Notes: Log formats vary by distribution.

set -u

echo "Failed Login Review"
echo "==================="
date
echo

if command -v journalctl >/dev/null 2>&1; then
  echo "Recent failed password or authentication messages:"
  journalctl --no-pager 2>/dev/null | grep -Ei "failed password|authentication failure" | tail -n 20 || true
else
  echo "journalctl not found. Review /var/log/auth.log or /var/log/secure depending on distribution."
fi
