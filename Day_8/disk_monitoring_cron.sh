#!/bin/bash

THRESHOLD=80
LOG_FILE="/root/disk_monitor.log"

DISK_USAGE=$(/bin/df / | /usr/bin/awk 'NR==2 {print $5}' | /usr/bin/sed 's/%//')
DATE=$(/bin/date "+%Y-%m-%d %H:%M:%S")

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
  echo "$DATE ALERT: Disk usage is ${DISK_USAGE}% (Threshold: ${THRESHOLD}%)" >> "$LOG_FILE"
else
  echo "$DATE Disk usage is normal: ${DISK_USAGE}%" >> "$LOG_FILE"
fi
