# Project 1: Automated System Maintenance

## Overview
A Bash script designed to automate routine server maintenance tasks, including patching, disk space monitoring, and package cleanup.

## Features
- **Auto-Patching**: Runs `apt-get update` and `upgrade`.
- **Threshold Alerting**: Checks if root disk usage exceeds 80%.
- **Logging**: Writes all activities to `/var/log/system_maintenance.log`.

## Usage
1. Make the script executable:
   ```bash
   chmod +x system_health.sh
