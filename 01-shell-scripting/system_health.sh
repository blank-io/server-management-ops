#!/bin/bash

# Define log file
LOG_FILE="/var/log/system_maintenance.log"

echo "Starting System Maintenance: $(date)" | tee -a "$LOG_FILE"

# 1. Update and Upgrade System
echo "[1] Updating package lists..."
sudo apt-get update -y && sudo apt-get upgrade -y
if [ $? -eq 0 ]; then
    echo "Updates completed successfully." | tee -a "$LOG_FILE"
else
    echo "Error updating system." | tee -a "$LOG_FILE"
fi

# 2. Disk Space Check
echo "[2] Checking Disk Space..."
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
THRESHOLD=80

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "WARNING: Disk usage is above $THRESHOLD%!" | tee -a "$LOG_FILE"
else
    echo "Disk usage is normal: $DISK_USAGE%" | tee -a "$LOG_FILE"
fi

# 3. Cleanup
echo "[3] Cleaning up..."
sudo apt-get autoremove -y
sudo apt-get clean

echo "Maintenance finished: $(date)" | tee -a "$LOG_FILE"
