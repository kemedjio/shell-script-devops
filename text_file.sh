#!/bin/bash
###########################
#
# Autor: Anicet Kemedjio
# Date: 04/06/2026
# This script is use to perform operation on texts and files

############################

# Count word occurrence in a flie
echo "Enter the word to search for: "
read target_word
echo "Enter the filename: "
read filename
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi
count=$(grep -o -w "$target_word" "$filename" | wc -l)
echo "The word '$target_word' appears '$count' times in '$filename' ."

###########################################
# Perform replacement with a backup
file="file"
find_text="one"
replace_text="two"
# Perform replacement with a backup
sed -i.bak "s/$find_text/$replace_text/g" "$file"
echo "Replaced all occurences of '$find_text' with '$replace_text' in $file"
