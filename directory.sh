#!/bin/bash
###########################
#
# Autor: Anicet Kemedjio
# Date: 04/06/2026
# This script is use to perform operation on files and directories

############################

# Listing files with files types

for entry in *; do
if [ -d "$entry" ] ; then
echo "$entry/ (directory) "
else
    echo "$entry (file)"
fi
done

###############################
dir=new_dir
if [! -d "$dir" ]; then
    mkdir "$dir"
    echo "Directory '$dir' created"
else
    echo "Directory '$dir' already exist"
fi

####################################
# Create multiples directory at Once
mkdir -p {l1,l2}/{src,doc}
echo "Created l1,l2 and subdirectories"

####################################
# Copy files of certain type to a backup directory
src_pattern="*.txt"
dest_dir="backup"
[ ! -d "$dest_dir" ] && mkdir "$dest_dir"
for file in $src_pattern; do
    cp "$file" "$dest_dir/"
    echo "Copied $file to $dest_dir"
done

#######################################

# Rename file extension
old_ext=".txt"
new_ext=".bak"
for f in *$old_ext; do
    newname="${f%$old_ext}$new_ext"
    mv "$f" "$newname"
    echo "Renamed $f to $newname"
done

#######################################
# Delete files olders than 7 days

target_dir="pathdir"
find "$target_dir" -type f -mtime +7 -print -exec rm -f {} \;

#######################################
# Check if file exist and repot its permissions

file="new_file.bp"
if [ -e "$file" ]; then
    echo "$file exist"
    [ -r "$file" ] && echo "_ It is readable."
    [ -w "$file" ] && echo "_ It is writable."
else
    echo "$file does not exist."
fi
