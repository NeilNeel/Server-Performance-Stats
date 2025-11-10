#!/bin/bash

echo "==============================================="
echo "		SERVER PERFORMANCE REPORT!	     "
echo "==============================================="
echo ""


echo ">>>> CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo ""

echo ">>>> Memory Usage:"
free -h
echo ""

echo ">>>>> Disk Usage:"
df -h --total | grep "total"
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
