#!/bin/bash

# Folders
log_dir="$HOME/myapp/logs"
backup_dir="$HOME/myapp/backup"
log_file="$HOME/myapp/backup_log.txt"

# Create folders if not exist
mkdir -p "$log_dir"
mkdir -p "$backup_dir"

# Start log
echo "Backup started at: $(date)" >> "$log_file"

# Move files older than 7 days
find "$log_dir" -type f -mtime +7 -print -exec mv {} "$backup_dir" \; >> "$log_file" 2>&1

# End log
echo "Backup finished at: $(date)" >> "$log_file"
echo "----------------------------" >> "$log_file"

# Message on screen
echo "Backup done. Check log file: $log_file"
