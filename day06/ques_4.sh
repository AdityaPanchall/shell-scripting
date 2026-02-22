#!/bin/bash

if [[ -f  ques3_op.txt  ]]
then 
	echo "File Exists" > ques4_op.txt
	echo "File Exists"
else 
	echo "File Don't exists" > ques4_op.txt
	echo "File DOn't exists"
fi
