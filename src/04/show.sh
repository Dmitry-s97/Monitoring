#!/bin/bash

function show() {
  LEFT=${FONT_LEFT}${BACKGROUND_LEFT}
  RIGHT=${FONT_RIGHT}${BACKGROUND_RIGHT}

  echo -e "${LEFT}HOSTNAME=\e[0m""${RIGHT}"`hostname`"\e[0m"
  echo -e "${LEFT}TIMEZONE=\e[0m""${RIGHT}"`timedatectl | grep 'Time zone' | awk '{print $3, $4, $5}'`"\e[0m"
  echo -e "${LEFT}USER=\e[0m""${RIGHT}"`whoami`"\e[0m"
  echo -e "${LEFT}OS=\e[0m""${RIGHT}"`cat /etc/issue | awk '{print $1, $2, $3}'`"\e[0m"
  echo -e "${LEFT}DATE=\e[0m""${RIGHT}"`date | awk '{print $2, $3, $4, $5}'`"\e[0m"
  echo -e "${LEFT}UPTIME=\e[0m""${RIGHT}"`uptime | awk '{print $2, $3}' | sed 's/.$//'`"\e[0m"
  echo -e "${LEFT}UPTIME_SEC=\e[0m""${RIGHT}"`cat /proc/uptime | awk '{print $1}'`"\e[0m"
  echo -e "${LEFT}IP=\e[0m""${RIGHT}"`ip a | grep 'dynamic enp0s3' | awk '{print $2}' | sed 's/...$//'`"\e[0m"
  VAR=`ip a | grep 'dynamic enp0s3' | awk '{print $2}'`
  echo -e "${LEFT}MASK=\e[0m""${RIGHT}"`ipcalc $VAR | grep Netmask | awk '{print $2}'`"\e[0m"
  echo -e "${LEFT}GATEWAY=\e[0m""${RIGHT}"`ip r | grep default | awk '{print $3}'`"\e[0m"
  echo -e "${LEFT}RAM_TOTAL=\e[0m""${RIGHT}"`grep MemTotal /proc/meminfo| awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'`"\e[0m"
  echo -e "${LEFT}RAM_USED=\e[0m""${RIGHT}"`free | grep Mem | awk '{printf("%.3f %s\n", $3/1024^2, $4="GB")}'`"\e[0m"
  echo -e "${LEFT}RAM_FREE=\e[0m""${RIGHT}"`grep MemFree /proc/meminfo | awk '{printf("%.3f %s\n", $2/1024^2, $3="GB")}'`"\e[0m"
  echo -e "${LEFT}SPACE_ROOT=\e[0m""${RIGHT}"`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $2, $3="MB")}'`"\e[0m"
  echo -e "${LEFT}SPACE_ROOT_USED=\e[0m""${RIGHT}"`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $3, $4="MB")}'`"\e[0m"
  echo -e "${LEFT}SPACE_ROOT_FREE=\e[0m""${RIGHT}"`df -m /root/ | grep / | awk '{printf("%.2f %s\n", $4, $5="MB")}'`"\e[0m"
}