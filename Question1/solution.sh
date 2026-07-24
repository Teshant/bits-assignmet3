#!/bin/bash

mkdir -p backup

> report.txt
> errors.log

processed=0
duplicates=0
backedup=0

declare -A hashes

for file in submissions/*
do
    if [ -f "$file" ]; then
        ((processed++))
        hash=$(md5sum "$file" 2>>errors.log | awk '{print $1}')

        if [[ -n "${hashes[$hash]}" ]]; then
            ((duplicates++))
        else
            hashes[$hash]=1
            cp "$file" backup/ 2>>errors.log
            ((backedup++))
        fi
    fi
done

echo "Files Processed : $processed" > report.txt
echo "Duplicate Files : $duplicates" >> report.txt
echo "Backed Up Files : $backedup" >> report.txt

echo "Processing Completed Successfully."
