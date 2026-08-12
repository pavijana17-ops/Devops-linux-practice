#!/bin/bash

echo "=============================="
echo "       Log health check"
echo "=============================="

log_file="/home/jpdevops/cpu-monitoring.log"

error_count=$(grep -i "error" "$log_file" | wc -l)

echo "errorcount: $error_count"

if [ "$error_count" -ge 1 ]; then
    echo "status:warning - Errors found in log"
else
    echo "status:ok - No errors found in log"
fi
