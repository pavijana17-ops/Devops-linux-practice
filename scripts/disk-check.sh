#!/bin/bash

echo "============================"
echo "     Disk health check "
echo "============================"

Disk_usage=$(df -h /|awk 'NR==2 {print $5}' | tr -d '%')

echo "diskusage: $Disk_usage%"

if [ "$Disk_usage" -ge 80 ]; then
echo "status: Warning - disk usage is high!"

else
echo "status:ok"

fi

