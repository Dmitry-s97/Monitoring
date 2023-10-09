#!/bin/bash

if [ $# != 4 ];
  then
  echo "should be four parameters!"
else 
  re='^[0-9]+$'
  if [[ $1 =~ $re ]] && [[ $2 =~ $re ]] && [[ $3 =~ $re ]] && [[ $4 =~ $re ]];
    then
    if [ $1 != $2 ] && [ $1 != $3 ] && [ $1 != $4 ] && [ $2 != $3 ] && [ $2 != $4 ] && [ $3 != $4 ];
      then
# variables for colors
      BACKGROUND_LEFT=""
      FONT_LEFT=""
      BACKGROUND_RIGHT=""
      FONT_RIGHT=""
# variables for parameters
      VAR1="$1"
      VAR2="$2"
      VAR3="$3"
      VAR4="$4"
# call functions
      source color.sh; color
      source show.sh; show
      else
      echo "Should be different numbers!"
      fi
  else 
    echo "should be number"
  fi
fi 