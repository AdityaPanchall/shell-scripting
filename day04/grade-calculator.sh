#!/bin/bash

read -p "Enter the Total marks: " total

if (($total >100 || $total < 0 )); then 
      echo "Total Marks is not valid" 	
elif (( $total >= 90  && $total <= 100 )); then
	echo "A"

elif (( $total >=75 && $total < 90 )); then 
	echo "B"

elif (( $total >=55 && $total <75 )); then 
       echo "C"

elif (( $total >=30 && $total < 55 )); then 
       echo "D"

else        
	echo "Fail"

fi 
