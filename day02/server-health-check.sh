#!/bin/bash

LOG_FILE="/var/log/server-health.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "======= Server Health Check Started at $DATE =======" >> $LOG_FILE

#1. Check if user is root or not
if [[ $EUID -ne 0 ]]; then
       echo "$DATE ERROR: Script must be run as root" | tee -a $LOG_FILE
       exit 1
else
       echo "$DATE INFO: Running as root" >> $LOG_FILE

fi

#2. Disk Usage check
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//') 

if [[ $DISK_USAGE -ge 80 ]]; then
	echo "$DATE WARNING: Disk Usage is critical (${DISK_USAGE}%)" | tee -a $LOG_FILE


elif [[ $DISK_USAGE -ge 60 ]]; then
	echo "$DATE INFO: Disk Usage is moderate (${DISK_USAGE}%)" >> $LOG_FILE
else
	echo "$DATE INFO: Disk Usage is normal (${DISK_USAGE}%)" >> $LOG_FILE
fi

#3.Memory Check

FREE_MEM=$(free -m | awk '/Mem/ {print $4}')


if [[ $FREE_MEM -le 500 ]]; then
	echo "$DATE WARNING: Low Memory available (${FREE_MEM}MB)" | tee -a $LOG_FILE
else
	echo "$DATE INFO: Suffiecient memory available (${FREE_MEM}MB)" >> $LOG_FILE
fi

#4. SSH Service Check

if systemctl is-active --quiet ssh; then
	echo "$DATE INFO: SSH Service is Running" >> $LOG_FILE
else 
	echo "$DATE ERROR: SSH Service is not Running" | tee -a $LOG_FILE

fi

echo "===== Server Health Check Completed =====" >> $LOG_FILE


