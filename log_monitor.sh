#!/bin/bash
# log_monitor.sh - Check Windows Event Logs for errors

LOG_DIR="/c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite/logs"
ALERT_FILE="$LOG_DIR/log_alerts.txt"
LOG_FILE="$LOG_DIR/log_monitor.log"

mkdir -p "$LOG_DIR"
echo "[ $(date) ] Checking Windows event logs..." | tee -a "$LOG_FILE"

powershell.exe -NoProfile -Command "Get-EventLog -LogName System -Newest 100" > "$ALERT_FILE" 2>>"$LOG_FILE"

grep -i "error" "$ALERT_FILE" > "$LOG_DIR/errors_found.txt" || true

if [ -s "$LOG_DIR/errors_found.txt" ]; then
    echo "⚠️  Errors found! Check: $LOG_DIR/errors_found.txt" | tee -a "$LOG_FILE"
else
    echo "✅ No recent errors found." | tee -a "$LOG_FILE"
fi
