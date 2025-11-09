#!/bin/bash
# backup.sh - Backup Documents folder

SOURCE_DIR="/c/Users/HP/Documents"
BACKUP_DIR="/c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite/backups"
LOG_DIR="/c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite/logs"
LOG_FILE="$LOG_DIR/backup.log"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR" "$LOG_DIR"

echo "[ $(date) ] Starting backup..." | tee -a "$LOG_FILE"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR" >>"$LOG_FILE" 2>&1
if [ $? -eq 0 ]; then
    echo "✅ Backup successful: $BACKUP_FILE" | tee -a "$LOG_FILE"
else
    echo "❌ Backup failed! Check $LOG_FILE for details." | tee -a "$LOG_FILE"
fi
