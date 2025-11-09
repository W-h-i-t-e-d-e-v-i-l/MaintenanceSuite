#!/bin/bash
# maintenance_menu.sh - Main menu for Maintenance Suite

BASE_DIR="/c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite"

while true; do
    clear
    echo "=============================="
    echo "   🧰 System Maintenance Suite"
    echo "=============================="
    echo "1) Backup Documents"
    echo "2) System Cleanup"
    echo "3) Log Monitoring"
    echo "4) Exit"
    echo "------------------------------"
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1) bash "$BASE_DIR/backup.sh" ;;
        2) bash "$BASE_DIR/update_cleanup.sh" ;;
        3) bash "$BASE_DIR/log_monitor.sh" ;;
        4) echo "👋 Exiting..."; exit 0 ;;
        *) echo "❌ Invalid option, try again." ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
done
