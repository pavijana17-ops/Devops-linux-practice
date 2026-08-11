#!/bin/bash

echo "============================="
echo "Web server health check"
echo "============================="

if systemctl is-active  --quiet nginx
then
echo "Nginx status: Running fine"
else
echo "Ngonx status:not running"
fi
