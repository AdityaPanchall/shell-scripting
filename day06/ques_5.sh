#!/bin/bash

#For all files that exists 
for i in *
do 
	echo "$i" >> ques5_op.txt
done

#For particular format file 
for j in *.txt
do 
	echo "$j" >> ques5_op.txt
done

#When files is in other directory 
for k in /var/log/*.log
do 
	echo "$k" >> ques5_op.txt
done
