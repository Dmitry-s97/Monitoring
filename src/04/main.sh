#!/bin/bash

# pattern
re='^[0-9]+$'
default="0"
# variables for colors
BACKGROUND_LEFT=""
FONT_LEFT=""
BACKGROUND_RIGHT=""
FONT_RIGHT=""

BACKGROUND_LEFT_TEXT=""
FONT_LEFT_TEXT=""
BACKGROUND_RIGHT_TEXT=""
FONT_RIGHT_TEXT=""

if [ $# == 4 ] && [[ $1 =~ $re ]] && [[ $2 =~ $re ]] && [[ $3 =~ $re ]] && [[ $4 =~ $re ]];
  then
    if [ $1 != $2 ] && [ $1 != $3 ] && [ $1 != $4 ] && [ $2 != $3 ] && [ $2 != $4 ] && [ $3 != $4 ];
    then
      VAR1="$1"
      VAR2="$2"
      VAR3="$3"
      VAR4="$4"
    else
      source default.conf

      VAR1="column1_background"
      VAR2="column1_font_color"
      VAR3="column2_background"
      VAR4="column2_font_color"
      default="1"
  fi
  else
    source default.conf

    VAR1=$column1_background
    VAR2=$column1_font_color
    VAR3=$column2_background
    VAR4=$column2_font_color
    default="1"
fi


# call functions
source color.sh; color
source show.sh; show
source extra_show.sh;
if [ $default == "1" ];
then
  extra_show_def
else
  extra_show
fi

