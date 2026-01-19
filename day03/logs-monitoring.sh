#!/bin/bash

logs_monitoring(){
awk '/WARN/ {print}' /home/aditya/shell-scripting/day03/logs.txt
}

logs_monitoring
