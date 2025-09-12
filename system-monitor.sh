#!/bin/bash
#system-monitor.sh
#Description: Monitor CPU, RAM, DISK Usage



# Add a header with timestamp
echo "==================== $(date '+%Y-%m-%d %H:%M:%S') ===================="


# ---- CPU Usage ----
echo -e "\n---- CPU Usage ----"
top -b -n1 | head -n 5


# ---- Memory Usage ----
echo -e "\n---- Memory Usage ----"
free -h


# ---- Disk Usage ----
echo -e "\n---- Disk Usage ----"
df -h


# ---- Top 5 Memory Consuming Processes ----
echo -e "\n---- Top 5 Memory Consuming Processes ----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6


# Footer for clarity
echo -e "\n==================== End of Report ====================\n"



