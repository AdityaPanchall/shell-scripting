#!/bin/bash


read -p "Write a number: " number 

if (( $number < 0 )); then
	echo "The number is negative"
elif (( $number == 0 )); then 
        echo " The number is Zero"
else 
        echo " The number is positive" 
fi 	
       	
