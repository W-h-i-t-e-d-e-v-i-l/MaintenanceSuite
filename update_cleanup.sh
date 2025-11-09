#!/bin/bash
# update_cleanup.sh - Simulated cleanup for Git Bash

LOG_DIR="/c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite/logs"
LOG_FILE="$LOG_DIR/cleanup.log"
mkdir -p "$LOG_DIR"

echo "[ $(date) ] Starting cleanup..." | tee -a "$LOG_FILE"

echo "🧹 Cleaning temporary files..." | tee -a "$LOG_FILE"
rm -rf /c/Users/HP/AppData/Local/Temp/* >>"$LOG_FILE" 2>&1

echo "🗑️  Emptying Recycle Bin..." | tee -a "$LOG_FILE"
powershell.exe -NoProfile -Command "Clear-RecycleBin -Confirm:\$false" >>"$LOG_FILE" 2>&1

echo "✅ Cleanup completed!" | tee -a "$LOG_FILE"
