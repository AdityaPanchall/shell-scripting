#!/bin/bash
check_file(){
read -p "Write the name of the file:" filename

#Check file exists or not
if [ -e $filename ]
then 
	echo "File exists"
	echo "Size of the file: $(ls -lh "$filename" | awk '{print $5}')"
else 
	echo "File does not exists"
fi
}
check_file 
echo "Exit Status: $?"
