#!/bin/bash
#system-monitor.sh
#Description: Monitor CPU, RAM, DISK Usage

LOG_FILE="system-monitor,log"

#Cpu Usage
echo "----------CPU Usage----------" | tee -a $LOG_FILE
top bn-1 | grep "Cpu(S)" | awk '{print "Cpu usage: "$2 +$4 "%"}' | tee -a $LOG_FILE


#Ram Usage 
echo "----------RAM Usage----------" |tee -a $LOG_FILE
free -h | awk 'NR==1{print $1, $2, $3, $4, $5, $6, $7}' | tee -a $LOG_FILE
free -h | awk 'NR==2{print "used: "$3, "free: "$4, "Available: "$7}' | tee -a $LOG_FILE


#Disk Usage 
echo "----------Disk Usage----------" |tee -a $LOG_FILE
df -h | awk 'NR===1 || /^\/dev\//{print $1, $2, $3, $4, $5, %6}' | tee -a $LOG_FILE














