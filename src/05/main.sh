#!/bin/bash

START_TIME=$(date +%s)

if [ $# == 1 ]; then

  if [[ ! "$1" =~ .*/$ ]]; then
    echo "Error! Directory path must end with '/' character."
    exit 1
  fi

VAR="$1"

source commands.sh;
command
topTen
topTenExec

source show.sh
show

END_TIME=$(date +%s)
difference=$(( $END_TIME - $START_TIME ))
echo "Script execution time (in seconds) = $difference"

else 
  echo "The script works with one parameter" 
fi
