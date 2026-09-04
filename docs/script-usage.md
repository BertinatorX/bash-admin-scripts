# Script Usage

## Disk usage check

```bash
./scripts/disk-usage-check.sh
```

I use this when I'm practicing disk-space troubleshooting.

## System inventory

```bash
./scripts/system-inventory.sh
```

I run this to collect basic system information before I start troubleshooting.

## Service status check

```bash
./scripts/service-status-check.sh sshd NetworkManager
```

This checks whether the services I name are active and enabled.

## Network baseline

```bash
./scripts/network-baseline.sh
```

I run this to collect basic network information before troubleshooting connectivity, DNS, or listening-port issues.

## Failed login review

```bash
./scripts/failed-login-review.sh
```

This one is for a personal lab, it reviews authentication failure messages.
