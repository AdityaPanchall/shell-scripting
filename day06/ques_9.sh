#!/bin/bash 
read -p "Enter the number of employees:" n
for  (( i=1; i<=$n; i++))
do
        echo "Employee $i"

	read -p "Your name:" name
	read -p "Your Salary:" salary
	read -p "Your Company:" company

	echo "Name:$name | Salary:$salary | Company:$company" >> employee.txt
	echo "---------------------------------" >> employee.txt
done


