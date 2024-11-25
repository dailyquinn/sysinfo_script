#!/bin/bash
echo "Hello $USER. System specifications are as follows:"
echo ""
head -n1 /etc/issue
echo ""
uname -a
echo ""
grep "model name" /proc/cpuinfo | sort -u
grep MemTotal /proc/meminfo
echo ""
lsblk -o path,vendor,model,size,mountpoints,fsused,fsavail,fsuse%
