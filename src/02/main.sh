#!/bin/bash

echo "HOSTNAME="`hostname`
echo "TIMEZONE="`timedatectl | grep 'Time zone' | awk '{print $3, $4, $5}'`
echo "USER="`whoami`
echo "OS="`cat /etc/issue | awk '{print $1, $2, $3}'`
echo "DATE="`date | awk '{print $2, $3, $4, $5}'`
echo ""UPTIME=`uptime | awk '{print $2, $3}' | sed 's/.$//'`
echo "UPTIME_SEC="`cat /proc/uptime | awk '{print $1}'`
VAR=`ip a | grep 'dynamic enp0s3' | awk '{print $2}'`
echo "IP="$VAR | sed 's/...$//'
echo "MASK="`ipcalc $VAR | grep Netmask | awk '{print $2}'`
echo "GATEWAY="`ip r | grep default | awk '{print $3}'`
VARTOTAL=`grep MemTotal /proc/meminfo` 
VARFREE=`grep MemFree /proc/meminfo`
echo "RAM_TOTAL="$VARTOTAL | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'
echo "RAM_USED="`free | grep Mem | awk '{printf("%.3f %s\n", $3/1024^2, $4="GB")}'`
echo "RAM_FREE="$VARFREE | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'
echo "SPACE_ROOT="`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $2, $3="MB")}'`
echo "SPACE_ROOT_USED="`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $3, $4="MB")}'`
echo "SPACE_ROOT_FREE="`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $4, $5="MB")}'`