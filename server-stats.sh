#!/bin/bash
set -euo pipefail

echo "==========SERVER STATS==========="

hostnamectl | awk -F': ' '/Operating System/ {print "OS Version:", $2}'

uptime
echo 

echo "CPU usage: $((100-$(vmstat 1 2|tail -1|awk '{print $15}')))%" # 15th column = %idle

free | awk '/Mem:/ {printf("Memory used: %.2f%%\n", $3/$2*100)}'

echo "Disk memory used: $(df -h /|tail -1|awk '{print $5}')"
echo

echo "Top 5 processes by CPU usage:"
ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 6

echo "Top 5 processes by memory usage:"
ps -eo pid,cmd,%mem --sort=-%mem | head -n 6
