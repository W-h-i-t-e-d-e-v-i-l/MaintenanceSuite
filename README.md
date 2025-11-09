🧰 System Maintenance Suite
A lightweight collection of Bash scripts for performing basic system maintenance tasks using Git Bash.
This project helps automate routine actions such as backups, cleanups, and log monitoring - all through a simple terminal menu interface.

📁 Project Structure
|
├── backup.sh              # Creates a timestamped backup of your Documents folder
├── update_cleanup.sh      # Cleans temp files and empties recycle bin
├── log_monitor.sh         # Checks Windows Event Logs for recent errors
└── maintenance_menu.sh    # Main menu to run all tasks

⚙️ Features
✅ Backup Documents – Automatically compresses your Documents folder into a backup archive.
✅ System Cleanup – Deletes temp files and clears the Recycle Bin to free space.
✅ Log Monitoring – Scans recent Windows system logs for any errors.
✅ Interactive Menu – A simple terminal interface for easy navigation.

🚀How to use it
1️⃣Open Git Bash
open Git Bash and navigate to my project folder:
cd /c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite

2️⃣ Give Execute Permissions (only needed once)
chmod +x *.sh

3️⃣ Run the Suite
./maintenance_menu.sh

4️⃣ Follow the Menu
==============================
   🧰 System Maintenance Suite
==============================
1) Backup Documents
2) System Cleanup
3) Log Monitoring
4) Exit
------------------------------
Choose an option [1-4]:

💾Output & Log Locaions
1.Backups: /c/Users/HP/Backup/
2.Logs: /c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite/logs/
Error Alerts:	/c/Users/HP/Desktop/AbhijitBehura/MaintenanceSuite/logs/errors_found.txt

🧩 Requirements
Git Bash (installed on Windows)
PowerShell (used to clear the Recycle Bin and fetch Event Logs)
Basic understanding of shell commands

🧑‍💻 Author
Abhijit Behura
Capstone Project: System Maintenance Automation using Git Bash
