#!/bin/bash
check_existence(){
read -p  "Write the name of the file" file
DIR="/home/aditya"
if [[ -f "$DIR/$file" ]]; then 
	echo "File exists in $DIR"
else 
	echo "File does not exists in $DIR"
fi
}
check_existence
