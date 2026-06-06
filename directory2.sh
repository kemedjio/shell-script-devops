#!/bin/bash
###########################
#
# Autor: Anicet Kemedjio
# Date: 04/06/2026
# This script is use to perform operation on files and directories

############################

# Count Files and Directories separetly
count_files=$(find . -maxdepth 1 -type f | wc -l)
count_dirs=$(find . -maxdepth 1 -type d | wc -l)
# Exclude the current directory
count_dirs=$(( count_dirs - 1 ))
echo "Files: $count_files"
echo "Directory: $count_dirs"

# Find the largest file in a directory
largest=$(ls -S | head -n 1)
echo "Largest File: $largest"

# ls -S sort on size
# Total size of a directory
directory="."
total_size=$(du -sh "$directory")
echo "Total size of $directory: $total_size"

# Find all empty file in a directory
for file in *; do
    if [ -f "$file" ] && [ ! -s "$file" ]; then
        echo "$file is empty."
    else 
        echo "$file is not empty"
    fi
done

# Backup file with Timestamp
file="database.db"
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="${file}.${timestamp}.bak"
cp "$file" "$backup_file"
echo "Created backup: $backup_file"