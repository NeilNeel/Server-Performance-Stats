#!/bin/bash

echo "==============================================="
echo "		SERVER PERFORMANCE REPORT!	     "
echo "==============================================="
echo ""


echo ">>>> CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print ""100-$8"%"}'
echo ""

echo ">>>> Total memort usage is: "
free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)\n",$3,$2,$3*100/$2}'
echo ""

echo ">>>>> Disk Usage:"
df -h --total | grep "total" | awk '{printf "%s/%sMB (%s used)\n", $3,$2,$5}'
echo ""

echo ">>>> Top 5 processes by CPU Usage:"
ps aux --sort=-%cpu | head -n 6
echo ""

echo ">>>> Top 5 processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6
echo ""

echo "==============================================="
echo "   END OF SERVER PERFORMANCE REPORT!           "
echo "==============================================="
echo ""
