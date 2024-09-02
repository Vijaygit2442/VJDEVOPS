#!/bin/bash

input_file="sampletxtfile.txt"
temp_file="temp_file.txt"

line_num=0

while IFS= read -r line
do
  ((line_num++))  
 
  if [ $line_num -ge 5 ]; then
    if [[ "$line" == *"welcome"* ]]; then
             line=${line//give/learning}
    fi
  fi
  
  echo "$line" >> "$temp_file"

done < "$input_file"

mv "$temp_file" "$input_file"
