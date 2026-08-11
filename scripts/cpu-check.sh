#!/bin/bash

echo "==============================="
echo "CPU health check"
echo "==============================="

Cpu_usage=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')

echo "Cpu usage: ${Cpu_usage}%"

if (( $(echo "$Cpu_usage <80" | bc -l) ))
then
echo "status:Cpu usage is healthy"
else
echo " Status : High CPU usage"
fi

