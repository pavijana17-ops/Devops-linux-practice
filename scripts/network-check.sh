#!/bin/bash

echo "=============================="
echo "     Network health check"
echo "=============================="

if ping -c 1 -W 2 google.com > /dev/null 2>&1; then
    echo "status:ok - Network is healthy"
else
    echo "status:warning - Network is down"
fi
