#!/bin/bash

if [ $# != 1 ];
then
echo "should be one parameter!"
else
  re='^[0-9]+$'
  if [[ $1 =~ $re ]]; 
  then 
  echo "error! should be text"
  else
  echo "$1"
  fi
fi

# https://unix.stackexchange.com/questions/340440/bash-test-what-does-do