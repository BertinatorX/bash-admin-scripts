#!/usr/bin/env bash

# Purpose: Collect basic Linux system information for documentation.
# Usage: ./system-inventory.sh
# Notes: Intended for personal lab and learning use.

set -u

echo "System Inventory"
echo "================"
date
echo

echo "Hostname:"
hostnamectl 2>/dev/null || hostname
echo

echo "Kernel:"
uname -a
echo

echo "Operating system:"
cat /etc/os-release 2>/dev/null || echo "OS release file not found."
echo

echo "Uptime:"
uptime
echo

echo "Disk usage:"
df -h
echo

echo "Memory:"
free -h 2>/dev/null || echo "free command not available."
echo

echo "Network interfaces:"
ip addr 2>/dev/null || ifconfig 2>/dev/null || echo "No network command available."
