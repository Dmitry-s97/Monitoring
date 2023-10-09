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
#-------------------------------------------------
# BACK
  if [ "$VAR3" = "1" ];
    then
    BACKGROUND_RIGHT=$WHITEBACK
  elif [ "$VAR3" = "2" ];
    then
    BACKGROUND_RIGHT=$REDBACK
  elif [ "$VAR3" = "3" ];
    then
    BACKGROUND_RIGHT=$GREENBACK
  elif [ "$VAR3" = "4" ];
    then
    BACKGROUND_RIGHT=$BLUEBACK
  elif [ "$VAR3" = "5" ];
    then
    BACKGROUND_RIGHT=$PURPUREBACK
  elif [ "$VAR3" = "6" ];
    then
    BACKGROUND_RIGHT=$BLACKBACK
  fi

# FONT
  if [ "$VAR4" = "1" ];
    then
    FONT_RIGHT=$WHITEFONT
  elif [ "$VAR4" = "2" ];
    then
    FONT_RIGHT=$REDFONT
  elif [ "$VAR4" = "3" ];
    then
    FONT_RIGHT=$GREENFONT
  elif [ "$VAR4" = "4" ];
    then
    FONT_RIGHT=$BLUEFONT
  elif [ "$VAR4" = "5" ];
    then
    FONT_RIGHT=$PURPUREFONT
  elif [ "$VAR4" = "6" ];
    then
    FONT_RIGHT=$BLACKFONT
  fi
}