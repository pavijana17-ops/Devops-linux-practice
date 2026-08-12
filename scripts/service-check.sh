#!/bin/bash

echo "=============================="
echo "     Service health check"
echo "=============================="

service_name="nginx"

if systemctl is-active --quiet "$service_name"; then
    echo "status:ok - $service_name is running"
else
    echo "status:warning - $service_name is not running"
fi
