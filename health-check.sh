#!/bin/bash

BASE_DIR="/home/jpdevops/practice/devops-practice"

echo "================================"
echo "      SERVER HEALTH CHECK"
echo "================================"

"$BASE_DIR/scripts/cpu-check.sh"
"$BASE_DIR/scripts/disk-check.sh"
"$BASE_DIR/scripts/memory-check.sh"
"$BASE_DIR/scripts/process-check.sh"
"$BASE_DIR/scripts/service-check.sh"
"$BASE_DIR/scripts/network-check.sh"
"$BASE_DIR/scripts/log-check.sh"

echo "================================"
echo "      HEALTH CHECK COMPLETE"
echo "================================"
