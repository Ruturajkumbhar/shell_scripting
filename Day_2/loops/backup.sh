#!/bin/bash

backup_dir="/backup"
folders="/etc /var/log /home"

# Create backup directory if it does not exist
if [ ! -d "$backup_dir" ]; then
  mkdir -p "$backup_dir"
  echo "Backup directory created at $backup_dir"
fi

for folder in $folders
do
  archive_name="$backup_dir/$(basename $folder).tar.gz"
  tar -czf "$archive_name" "$folder"
  
  if [ $? -eq 0 ]; then
    echo "✅ Backup successful for $folder"
  else
    echo "❌ Backup failed for $folder"
  fi
done

