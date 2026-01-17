#!/bin/bash
commands_based_function(){
echo "Current Directory:"
pwd

echo
echo "List of the contents in the current directory:"
ls -l

echo
echo "Print Disk usage:"
df -h 
}

if ! commands_based_function; then
	echo "Oops, Something went wrong"
fi	
