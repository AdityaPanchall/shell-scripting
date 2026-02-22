#!/bin/bash 
#Health checkup script 
LOG_FILE="/tmp/healthcheck.log"
echo "===================$(date)====================" >> $LOG_FILE

#Disk space check 
df -h >> $LOG_FILE

#RAM free and available check 
free -m >> $LOG_FILE

#Nginx status check 
if  systemctl is-active --quiet nginx
then 
	echo "nginx is running" >>$LOG_FILE
else 
	echo "nginx is not running" >> $LOG_FILE
fi

