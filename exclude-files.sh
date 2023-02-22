#!/usr/bin/env bash

targetDir=$1

cat dependency-excludes.txt | while read line || [ -n "$line" ]
do
  if [ "${line:0:1}" != "#" ]; then
    echo "Evaluating RegEx \"$line\" for possible matching exclusions..."
    count=$(find ${targetDir} -regex ${line} | wc -l)
    if [ "$count" -ne "0" ]; then 
      echo "Found the following file(s): "
      find ${targetDir} -regex ${line}
      find ${targetDir} -regex ${line} | xargs rm -r
      echo "$count file(s) excluded."
    else
      echo "No files were matched to be excluded."
    fi
  fi
done
