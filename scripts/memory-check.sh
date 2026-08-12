#!/bin/bash

echo "===================================="
echo "         Memory health check"
echo "===================================="

Memory_usage=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "memoryusage: $Memory_usage%"

if [ "$Memory_usage" -ge 80 ]; then
echo "status: Warning - Memory usage is high!"

else
echo "status: Ok - memory usage is healthy"
fi
