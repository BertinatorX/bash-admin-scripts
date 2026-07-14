# Bash Admin Scripts

Small Bash scripts for Linux system administration practice. This repository is focused on simple, readable scripts that support common entry-level IT tasks such as checking disk usage, reviewing logs, collecting system information, and creating basic reports.

## Purpose

I am building practical command-line skills for entry-level IT support, Linux administration, and cybersecurity fundamentals. These scripts are written for learning, documentation, and lab use.

## Skills demonstrated

- Bash scripting basics
- Linux command-line troubleshooting
- File and directory operations
- System information collection
- Log review workflows
- Clear script documentation
- Safe administrative habits
- Git version control

## Repository structure

```text
bash-admin-scripts/
├── README.md
├── scripts/
│   ├── disk-usage-check.sh
│   ├── system-inventory.sh
│   ├── failed-login-review.sh
│   ├── service-status-check.sh
│   ├── network-baseline.sh
│   ├── package-inventory.sh
│   └── backup-folder.sh
├── docs/
│   ├── script-usage.md
│   └── testing-notes.md
└── examples/
    └── sample-output.md
```

## Planned scripts

### `disk-usage-check.sh`

Checks disk usage and prints directories or files that may need review. This supports common support tasks where a user reports a full disk or slow system.

### `system-inventory.sh`

Collects basic system details such as OS version, kernel version, uptime, disk usage, memory, and network interface information.

### `failed-login-review.sh`

Reviews authentication logs in a lab environment to identify failed login attempts and summarize basic patterns.

### `service-status-check.sh`

Checks whether selected services are active and prints a simple status report.

### `network-baseline.sh`

Collects a basic network troubleshooting baseline, including IP addresses, routes, DNS test, IP connectivity test, and listening ports.

### `package-inventory.sh`

Creates a basic package inventory for documentation and rebuild planning.

### `backup-folder.sh`

Creates a timestamped backup of a selected folder for lab use. This script will include safety checks to avoid overwriting existing files.

## Script standards

Each script should include:

- A short purpose statement
- Usage instructions
- Input validation where needed
- Comments explaining important commands
- Safe defaults
- Example output

## Example script header

```bash
#!/usr/bin/env bash

# Purpose: Check disk usage and print a simple report.
# Usage: ./disk-usage-check.sh
# Notes: Intended for personal lab and learning use.
```

## Testing approach

Before adding a script, I will test it in a personal Linux lab environment and document:

- What system it was tested on
- What command was run
- What output was expected
- Any limitations or assumptions

## Career relevance

This repository supports applications for:

- IT Support Specialist
- Help Desk Technician
- Linux Support Technician
- NOC Technician
- Junior System Administrator
- Cybersecurity Intern

The goal is to show practical command-line ability and a willingness to automate repeatable support tasks.

## Current certification status

I am currently studying for CompTIA Tech+ and plan to complete the exam by October 2026.

## Safety note

These scripts are for lab use and learning. They should be reviewed before running on any production or work system.

## Development note

Portions of this repository were worked through in collaboration with Claude (Anthropic's AI assistant, via Claude Code), used as a pair-programming, debugging, and writing aid. All commands were run, all decisions made, and all results verified by me on my own hardware.
