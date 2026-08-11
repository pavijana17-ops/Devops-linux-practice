#!/bin/bash
echo "=========================================="
echo "           System information"
echo "=========================================="

echo "hostname:"
hostname

echo "Current user:"
whoami

echo "Current directory:"
pwd

echo  "diskusage:"
df -h /

echo "memory usage:"
free -h

echo "system uptime:"
uptime

echo "Date:"
date
