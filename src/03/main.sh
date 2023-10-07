#!/bin/bash

if [ $# != 4 ];
then
  echo "should be four parameters!"
else 
  re='^[0-9]+$'
  if [[ $1 =~ $re ]] && [[ $2 =~ $re ]] && [[ $3 =~ $re ]] && [[ $4 =~ $re ]];
  then
    BACKGROUND_LEFT=""
    FONT_LEFT=""
    VAR1="$1"
    VAR2="$2"
    source color.sh; color
    source show.sh; show
  else 
    echo "should be number"
  fi
fi 