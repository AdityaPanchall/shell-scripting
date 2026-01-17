#!/bin/bash


#read the username as input from the user  
read -p "Write your name:" Name

#this function will print the current date and the current logged in user
user_date(){
date 
whoami
}

#Function calling
if ! user_date; then
	echo "something is wrong in the script"
fi



 
