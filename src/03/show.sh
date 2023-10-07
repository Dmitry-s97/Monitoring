#!/bin/bash

function show() {
echo -e "${FONT_LEFT}${BACKGROUND_LEFT}HOSTNAME=\e[0m"`hostname`
echo -e "TIMEZONE="`timedatectl | grep 'Time zone' | awk '{print $3, $4, $5}'`
echo -e "USER="`whoami`
echo -e "OS="`cat /etc/issue | awk '{print $1, $2, $3}'`
echo -e "DATE="`date | awk '{print $2, $3, $4, $5}'`
echo -e "UPTIME="`uptime | awk '{print $2, $3}' | sed 's/.$//'`
echo -e "UPTIME_SEC="`cat /proc/uptime | awk '{print $1}'`
VAR=`ip a | grep 'dynamic enp0s3' | awk '{print $2}'`
echo -e "IP="$VAR | sed 's/...$//'
echo -e "MASK="`ipcalc $VAR | grep Netmask | awk '{print $2}'`
echo -e "GATEWAY="`ip r | grep default | awk '{print $3}'`
VARTOTAL=`grep MemTotal /proc/meminfo` 
VARFREE=`grep MemFree /proc/meminfo`
echo -e "RAM_TOTAL="$VARTOTAL | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'
echo -e "RAM_USED="`free | grep Mem | awk '{printf("%.3f %s\n", $3/1024^2, $4="GB")}'`
echo -e "RAM_FREE="$VARFREE | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'
echo -e "SPACE_ROOT="`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $2, $3="MB")}'`
echo -e "SPACE_ROOT_USED="`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $3, $4="MB")}'`
echo -e "SPACE_ROOT_FREE="`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $4, $5="MB")}'`
}