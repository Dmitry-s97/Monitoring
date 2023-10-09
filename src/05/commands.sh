#!/bin/bash

function command() {
  COUNT_OF_DIRECTORIES=`sudo find $VAR -type d | wc -l`
  FIVE_BIG_FOLDERS=`du -h /home | sort -rh | head -n 5`
  COUNT_OF_FILES=`sudo find $VAR -type f | wc -l`
  CONF_FILES=`sudo find $VAR -name "*.conf" | wc -l`
  TXT_FILES=`sudo find $VAR -name "*.txt" | wc -l`
  EXEC_FILES=`sudo find $VAR -name "*.exe" | wc -l`
  LOG_FILES=`sudo find $VAR -name "*.log" | wc -l`
  ZIP=`sudo find $VAR -name "*.zip" | wc -l`
  TAR=`sudo find $VAR -name "*.tar" | wc -l`
  ARCH_FILES=$(( $ZIP + $TAR ))
  SYM_LINKS=`sudo find $VAR -type l | wc -l`
}

function topTen() {
    TOP_EXEC=`find $dir -type f -exec du -h {} \; | sort -hr | head -n 10 | awk '{ printf "%s|%s\n", $2, $1}'`
  COUNT=1

  for v in $TOP_EXEC
  do
  if [[ -n $v ]]
  then
    echo -n "$COUNT - "
    PWD_FILE=`echo $v | cut -d '|' -f1`
    echo -n "$PWD_FILE, "
    SIZE=`echo $v | cut -d '|' -f2`
    echo -n "$SIZE, "
    TYPE=`find $dir -type f`
    echo "${TYPE##*.}"

    COUNT=$(( $COUNT + 1 ))
  fi
  done
}

function topTenExec() {
    TOP_EXEC=`find $dir -type f -exec du -h {} \; | sort -hr | head -n 10 | awk '{ printf "%s|%s\n", $2, $1}'`
  COUNT=1

  for var in $TOP_EXEC
  do
  if [[ -n $var ]]
  then
    echo -n "$COUNT - "
    PWD_FILE=`echo $var | cut -d '|' -f1`
    echo -n "$PWD_FILE, "
    SIZE=`echo $var | cut -d '|' -f2`
    echo -n "$SIZE, "
    HASH=`md5sum $PWD_FILE | awk '{  print $1 }'`
    echo $HASH

    COUNT=$(( $COUNT + 1 ))
  fi
  done
}