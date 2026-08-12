#!/bin/bash

echo "============================="
echo "      Process health check"
echo "============================="

process_count=$(ps -e --no-headers | wc -l)

echo "processcount: $process_count"

if [ "$process_count" -ge 300 ]; then
    echo "status: Warning - Too many processes running!"
else
    echo "status:ok - Process count is healthy"
fi
