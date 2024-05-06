#!/bin/bash
# Script that change all the filename in a folder where it is executed to 
# First letter in Uppercase and the rest in lowercase
# Usage / Ex :
# "ARTIST - TITLE" to "Artist - Title"

for file in *; do
       newname=$(echo "$file" | LC_ALL=C.UTF-8 awk '{for (i=1; i<=NF; i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')
       mv "$file" "$newname"
done
