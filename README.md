# Bash Admin Scripts

Small Bash scripts I'm writing to practice Linux system administration. Nothing fancy here, the point is simple, readable scripts for common entry-level IT tasks such as checking disk usage, reviewing logs, collecting system information, and putting together basic reports.

## Purpose

I'm building command-line skills for entry-level IT support, Linux administration, and cybersecurity fundamentals. These scripts are for learning, documentation, and lab use, that's it.

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

Checks disk usage and prints directories or files that may need a look. This covers the common support case where a user reports a full disk or a slow system.

### `system-inventory.sh`

Collects basic system details such as OS version, kernel version, uptime, disk usage, memory, and network interface information.

### `failed-login-review.sh`

Goes through the authentication logs in a lab environment, pulls out the failed login attempts, and summarizes the basic patterns.

### `service-status-check.sh`

Checks whether selected services are active and prints a simple status report.

### `network-baseline.sh`

Collects a basic network troubleshooting baseline, including IP addresses, routes, a DNS test, an IP connectivity test, and listening ports.

### `package-inventory.sh`

Creates a basic package inventory for documentation and for planning a rebuild.

### `backup-folder.sh`

Makes a timestamped backup of a folder you point it at, for lab use. This one will get safety checks so it doesn't overwrite existing files.

## Script standards

Every script should have:

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

Before a script goes into the repo I'll test it in my own Linux lab and write down:

- What system it was tested on
- What command was run
- What output was expected
- Any limitations or assumptions

## Career relevance

This repo backs up my applications for:

- IT Support Specialist
- Help Desk Technician
- Linux Support Technician
- NOC Technician
- Junior System Administrator
- Cybersecurity Intern

The goal is to show I can actually work at the command line and that I'm willing to automate the support tasks that keep repeating.

## Current certification status

I'm studying for CompTIA Tech+ right now and plan to have the exam done by October 2026.

## Safety note

These scripts are for the lab and for learning. Read through them before running any of them on a production or work system.

## Development note

Parts of this repo were worked through with Claude (Anthropic's AI assistant, via Claude Code), which I used as a pair-programming, debugging, and writing aid. I ran every command, made every decision, and verified every result myself on my own hardware.
