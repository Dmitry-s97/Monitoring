#!/bin/bash

function extra_show_def() {
  echo ""
  echo "Column 1 background = default 6 (black)"
  echo "Column 1 font color = default 1 (white)"
  echo "Column 2 background = default 3 (red)"
  echo "Column 2 font color = default 4 (blue)"
}

function extra_show() {
  echo ""
  echo "Column 1 background = $VAR1 ($BACKGROUND_LEFT_TEXT)"
  echo "Column 1 font color = $VAR2 ($FONT_LEFT_TEXT)"
  echo "Column 2 background = $VAR3 ($BACKGROUND_RIGHT_TEXT)"
  echo "Column 2 font color = $VAR4 ($FONT_RIGHT_TEXT)"
}
