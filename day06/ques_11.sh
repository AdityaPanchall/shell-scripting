#!/bin/bash
check_file(){
read -p "Write the name of the file: $1"

#Check file exists or not
if [ -e $1 ]
then 
	echo "File exists"
	echo "Size of the file: $(ls -lh "$1" | awk '{print $5}')"
else 
	echo "File does not exists"
fi
}
check_file 
echo "Exit Status: $?"
