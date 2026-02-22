#!/bin/bash 
#Health checkup script 
LOG_FILE="/tmp/healthcheck.log"
echo "===================$(date)====================" >> $LOG_FILE

#Disk space check 
df -h >> $LOG_FILE

#RAM free and available check 
free -m >> $LOG_FILE

#Nginx status check 
if sudo systemctl is-active nginx
then 
	echo "nginx is running"
else 
	echo "nginx is not running"
fi

