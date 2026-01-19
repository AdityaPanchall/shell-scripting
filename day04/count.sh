#!/bin/bash

nums=(10 -5 78 -22 93 18)

count=0
for (( i=0; i<${#nums[@]}; i++)); do
	if (( nums[i] > 1 )); then
		((count++))
        fi
done 

echo "$count"
