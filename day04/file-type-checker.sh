#!/bin/bash

read -p "Write the path of the file: " file

if [ -e "$file" ]; then
	if [ -f "$file" ]; then
		echo "It is a file"
        elif [ -d "$file" ]; then 
       	         echo "It is a directory"
	fi		 
else 
	echo "Invalid Path"

fi 
