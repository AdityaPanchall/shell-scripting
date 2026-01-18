#!/bin/bash
even_or_odd(){
read -p "Please Enter the number:" number
if (( $number %2 == 0)); then
	echo "The number is even"
else
     echo "The number is odd"
fi     
}
even_or_odd
