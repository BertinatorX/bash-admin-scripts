#!/usr/bin/env bash

# Purpose: Collect a basic network baseline for Linux troubleshooting.
# Usage: ./network-baseline.sh
# Notes: Intended for personal lab and learning use.

set -u

echo "Network Baseline"
echo "================"
date
echo

echo "IP addresses:"
ip addr 2>/dev/null || echo "ip command not available."
echo

echo "Routes:"
ip route 2>/dev/null || echo "ip route not available."
echo

echo "DNS test:"
ping -c 4 example.com 2>/dev/null || echo "DNS or network test failed."
echo

echo "IP connectivity test:"
ping -c 4 1.1.1.1 2>/dev/null || echo "IP connectivity test failed."
echo

echo "Listening ports:"
ss -tulpen 2>/dev/null || echo "ss command not available."
