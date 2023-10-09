#!/bin/bash

WHITEFONT="\033[97m"
REDFONT="\033[31m"
GREENFONT="\033[32m"
BLUEFONT="\033[34m"
PURPUREFONT="\033[35m"
BLACKFONT="\033[30m"

WHITEBACK="\033[107m"
REDBACK="\033[41m"
GREENBACK="\033[42m"
BLUEBACK="\033[44m"
PURPUREBACK="\033[45m"
BLACKBACK="\033[40m"

function color() {

# BACK
  if [ "$VAR1" = "1" ];
    then
    BACKGROUND_LEFT=$WHITEBACK
    BACKGROUND_LEFT_TEXT="white"
  elif [ "$VAR1" = "2" ];
    then
    BACKGROUND_LEFT=$REDBACK
    BACKGROUND_LEFT_TEXT="red"
  elif [ "$VAR1" = "3" ];
    then
    BACKGROUND_LEFT=$GREENBACK
    BACKGROUND_LEFT_TEXT="green"
  elif [ "$VAR1" = "4" ];
    then
    BACKGROUND_LEFT=$BLUEBACK
    BACKGROUND_LEFT_TEXT="blue"
  elif [ "$VAR1" = "5" ];
    then
    BACKGROUND_LEFT=$PURPUREBACK
    BACKGROUND_LEFT_TEXT="purpure"
  elif [ "$VAR1" = "6" ];
    then
    BACKGROUND_LEFT=$BLACKBACK
    BACKGROUND_LEFT_TEXT="black"
  fi

# FONT
  if [ "$VAR2" = "1" ];
    then
    FONT_LEFT=$WHITEFONT
    FONT_LEFT_TEXT="white"
  elif [ "$VAR2" = "2" ];
    then
    FONT_LEFT=$REDFONT
    FONT_LEFT_TEXT="red"
  elif [ "$VAR2" = "3" ];
    then
    FONT_LEFT=$GREENFONT
    FONT_LEFT_TEXT="green"
  elif [ "$VAR2" = "4" ];
    then
    FONT_LEFT=$BLUEFONT
    FONT_LEFT_TEXT="blue"
  elif [ "$VAR2" = "5" ];
    then
    FONT_LEFT=$PURPUREFONT
    FONT_LEFT_TEXT="purpure"
  elif [ "$VAR2" = "6" ];
    then
    FONT_LEFT=$BLACKFONT
    FONT_LEFT_TEXT="black"
  fi
#-------------------------------------------------
# BACK
  if [ "$VAR3" = "1" ];
    then
    BACKGROUND_RIGHT=$WHITEBACK
    BACKGROUND_RIGHT_TEXT="white"
  elif [ "$VAR3" = "2" ];
    then
    BACKGROUND_RIGHT=$REDBACK
    BACKGROUND_RIGHT_TEXT="red"
  elif [ "$VAR3" = "3" ];
    then
    BACKGROUND_RIGHT=$GREENBACK
    BACKGROUND_RIGHT_TEXT="green"
  elif [ "$VAR3" = "4" ];
    then
    BACKGROUND_RIGHT=$BLUEBACK
    BACKGROUND_RIGHT_TEXT="blue"
  elif [ "$VAR3" = "5" ];
    then
    BACKGROUND_RIGHT=$PURPUREBACK
    BACKGROUND_RIGHT_TEXT="purpure"
  elif [ "$VAR3" = "6" ];
    then
    BACKGROUND_RIGHT=$BLACKBACK
    BACKGROUND_RIGHT_TEXT="black"
  fi

# FONT
  if [ "$VAR4" = "1" ];
    then
    FONT_RIGHT=$WHITEFONT
    FONT_RIGHT_TEXT="white"
  elif [ "$VAR4" = "2" ];
    then
    FONT_RIGHT=$REDFONT
    FONT_RIGHT_TEXT="red"
  elif [ "$VAR4" = "3" ];
    then
    FONT_RIGHT=$GREENFONT
    FONT_RIGHT_TEXT="green"
  elif [ "$VAR4" = "4" ];
    then
    FONT_RIGHT=$BLUEFONT
    FONT_RIGHT_TEXT="blue"
  elif [ "$VAR4" = "5" ];
    then
    FONT_RIGHT=$PURPUREFONT
    FONT_RIGHT_TEXT="purpure"
  elif [ "$VAR4" = "6" ];
    then
    FONT_RIGHT=$BLACKFONT
    FONT_RIGHT_TEXT="black"
  fi
}