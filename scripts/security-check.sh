#!/bin/bash

LOG_DIR="$HOME/security-logs"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
CURRENT_LOG="$LOG_DIR/security-$DATE.log"
LAST_LOG=$(ls -t "$LOG_DIR"/security-*.log 2>/dev/null | sed -n '2p')
DIFF_LOG="$LOG_DIR/diff-$DATE.log"

mkdir -p "$LOG_DIR"

echo "======================================" | tee -a "$CURRENT_LOG"
echo " Security Check: $DATE" | tee -a "$CURRENT_LOG"
echo "======================================" | tee -a "$CURRENT_LOG"

echo "" | tee -a "$CURRENT_LOG"
echo "--- arch-audit ---" | tee -a "$CURRENT_LOG"
arch-audit 2>/dev/null | tee -a "$CURRENT_LOG"

echo "" | tee -a "$CURRENT_LOG"
echo "--- rkhunter ---" | tee -a "$CURRENT_LOG"
sudo rkhunter --update --quiet 2>/dev/null
sudo rkhunter --check --skip-keypress --report-warnings-only 2>/dev/null | tee -a "$CURRENT_LOG"

echo "" | tee -a "$CURRENT_LOG"
echo "--- lynis (summary only) ---" | tee -a "$CURRENT_LOG"
sudo lynis audit system --quick 2>/dev/null | grep -E "(Suggestion|Warning|Hardening index)" | tee -a "$CURRENT_LOG"

echo "" | tee -a "$CURRENT_LOG"
echo "--- UFW Status ---" | tee -a "$CURRENT_LOG"
sudo ufw status verbose 2>/dev/null | tee -a "$CURRENT_LOG"

echo "" | tee -a "$CURRENT_LOG"
echo "--- ClamAV Scan ---" | tee -a "$CURRENT_LOG"
clamscan -r /home \
  --exclude-dir=^/proc \
  --exclude-dir=^/sys \
  --exclude-dir=^/dev \
  --exclude-dir=^/run \
  --move="$HOME/quarantine" \
  -l "$LOG_DIR/clamscan-$DATE.log" 2>/dev/null | grep -E "(FOUND|ERROR|Infected)" | tee -a "$CURRENT_LOG"

echo "" | tee -a "$CURRENT_LOG"
echo "--- Failed Login Attempts ---" | tee -a "$CURRENT_LOG"
journalctl _SYSTEMD_UNIT=sshd.service --since "7 days ago" | grep -i "failed\|invalid" | tail -20 | tee -a "$CURRENT_LOG"

if [ -n "$LAST_LOG" ]; then
    echo "" | tee -a "$CURRENT_LOG"
    echo "======================================" | tee -a "$CURRENT_LOG"
    echo " NEW ISSUES vs LAST RUN" | tee -a "$CURRENT_LOG"
    echo " Last run: $(basename $LAST_LOG)" | tee -a "$CURRENT_LOG"
    echo "======================================" | tee -a "$CURRENT_LOG"
    diff <(grep -E "(affected|Warning|Suggestion)" "$LAST_LOG") \
         <(grep -E "(affected|Warning|Suggestion)" "$CURRENT_LOG") \
         | grep "^>" | sed 's/^> /NEW: /' | tee -a "$DIFF_LOG" | tee -a "$CURRENT_LOG"
    if [ ! -s "$DIFF_LOG" ]; then
        echo "No new issues since last run." | tee -a "$CURRENT_LOG"
    fi
else
    echo "" | tee -a "$CURRENT_LOG"
    echo "No previous log found. This is the baseline run." | tee -a "$CURRENT_LOG"
fi

echo "" | tee -a "$CURRENT_LOG"
echo "Log saved to: $CURRENT_LOG"
