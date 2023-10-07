#!/bin/bash

WHITEFONT="\033[97m"
REDFONT="\033[31m"
GREENFONT="\033[92m"
BLUEFONT="\033[94m"
PURPUREFONT="\033[95m"
BLACKFONT="\033[30m"

WHITEBACK="\033[97m"
REDBACK="\033[41m"
GREENBACK="\033[101m"
BLUEBACK="\033[104m"
PURPUREBACK="\033[105m"
BLACKBACK="\033[107m"

function color() {
# BACK
  if [ "$VAR1" = "1" ];
    then
    BACKGROUND_LEFT=$WHITEBACK
  elif [ "$VAR1" = "2" ];
    then
    BACKGROUND_LEFT=$REDBACK
  elif [ "$VAR1" = "3" ];
    then
    BACKGROUND_LEFT=$GREENBACK
  elif [ "$VAR1" = "4" ];
    then
    BACKGROUND_LEFT=$BLUEBACK
  elif [ "$VAR1" = "5" ];
    then
    BACKGROUND_LEFT=$PURPUREBACK
  elif [ "$VAR1" = "6" ];
    then
    BACKGROUND_LEFT=$BLACKBACK
  fi

# FONT
  if [ "$VAR2" = "1" ];
    then
    FONT_LEFT=$WHITEFONT
  elif [ "$VAR2" = "2" ];
    then
    FONT_LEFT=$REDFONT
  elif [ "$VAR2" = "3" ];
    then
    FONT_LEFT=$GREENFONT
  elif [ "$VAR2" = "4" ];
    then
    FONT_LEFT=$BLUEFONT
  elif [ "$VAR2" = "5" ];
    then
    FONT_LEFT=$PURPUREFONT
  elif [ "$VAR2" = "6" ];
    then
    FONT_LEFT=$BLACKFONT
  fi

}