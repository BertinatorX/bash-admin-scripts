#!/usr/bin/env bash

# Purpose: Print a simple disk usage report for a Linux system.
# Usage: ./disk-usage-check.sh
# Notes: Intended for personal lab and learning use.

set -u

echo "Disk Usage Report"
echo "================="
date
echo

echo "Mounted filesystems:"
df -h

echo
echo "Largest items in current directory:"
du -ah . 2>/dev/null | sort -hr | head -n 10
