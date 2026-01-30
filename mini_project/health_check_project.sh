#!/bin/bash

# --------------------------------
# Project Paths (AUTO-DETECTED)
# --------------------------------
BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LOG_DIR="$BASE_DIR/logs"
LOG_FILE="$LOG_DIR/health.log"

# --------------------------------
# Create folders & files if missing
# --------------------------------
mkdir -p "$LOG_DIR"
touch "$LOG_FILE"

# --------------------------------
# Configuration
# --------------------------------
DISK_THRESHOLD=80
MEM_THRESHOLD=500   # in MB
SERVICES=("ssh" "nginx")
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "===================================" >> "$LOG_FILE"
echo "$DATE - System Health Check Start" >> "$LOG_FILE"

# --------------------------------
# Disk Usage Check
# --------------------------------
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
  echo " Disk Usage HIGH: ${DISK_USAGE}%" >> "$LOG_FILE"
else
  echo " Disk Usage OK: ${DISK_USAGE}%" >> "$LOG_FILE"
fi

# --------------------------------
# Memory Usage Check
# --------------------------------
FREE_MEM=$(free -m | awk 'NR==2 {print $7}')

if [ "$FREE_MEM" -lt "$MEM_THRESHOLD" ]; then
  echo " Memory LOW: ${FREE_MEM} MB" >> "$LOG_FILE"
else
  echo " Memory OK: ${FREE_MEM} MB" >> "$LOG_FILE"
fi

# --------------------------------
# Service Status Check
# --------------------------------
for SERVICE in "${SERVICES[@]}"; do
  if systemctl is-active --quiet "$SERVICE"; then
    echo " Service '$SERVICE' is running" >> "$LOG_FILE"
  else
    echo " Service '$SERVICE' is NOT running" >> "$LOG_FILE"
  fi
done

echo "$DATE - System Health Check End" >> "$LOG_FILE"

