#!/bin/bash

log_dir="/var/log/myapp"
backup_dir="/backup/logs"

mkdir -p "$backup_dir"

find "$log_dir" -type f -mtime +7 -exec mv {} "$backup_dir" \;

echo " Old logs archived successfully"

