#!/bin/bash

read -p "Write a number: " number 


for (( i =1; i<=10; i++ )); do
    echo " $((number * i))"
done 
