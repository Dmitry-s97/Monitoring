#!/bin/bash

echo `hostname`
echo `timedatectl | grep 'Time zone' | awk '{print $3, $4, $5}'`
echo `whoami`
echo `cat /etc/issue | awk '{print $1, $2, $3}'`
echo `date | awk '{print $2, $3, $4, $5}'`
echo `uptime | awk '{print $2, $3}' | sed 's/.$//'`
echo `cat /proc/uptime | awk '{print $1}'`
VAR=`ip a | grep 'dynamic enp0s3' | awk '{print $2}'`
echo $VAR | sed 's/...$//'
echo `ipcalc $VAR | grep Netmask | awk '{print $2}'`
echo `ip r | grep default | awk '{print $3}'`
VARTOTAL=`grep MemTotal /proc/meminfo` 
VARFREE=`grep MemFree /proc/meminfo`
echo $VARTOTAL | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'
echo `free | grep Mem | awk '{printf("%.3f %s\n", $3/1024^2, $4="GB")}'`
echo $VARFREE | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'