#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#8ec07ccc'
TEXT='#8ec07cee'
WRONG='#fb4934bb'
VERIFYING='#fabd2f'

if [[ "$DESKTOP_SESSION" == "i3"  ||  "$DESKTOP_SESSION" == "/usr/share/xsessions/i3" ]]; then
  i3lock -n \
  --insidever-color=$CLEAR     \
  --ringver-color=$VERIFYING   \
\
  --insidewrong-color=$CLEAR   \
  --ringwrong-color=$WRONG     \
\
  --inside-color=$BLANK        \
  --ring-color=$DEFAULT        \
  --line-color=$BLANK          \
  --separator-color=$DEFAULT   \
\
  --verif-color=$VERIFYING     \
  --wrong-color=$WRONG         \
  --time-color=$TEXT           \
  --date-color=$TEXT           \
  --layout-color=$TEXT         \
  --keyhl-color=$WRONG         \
  --bshl-color=$WRONG          \
\
  --screen 1                   \
  --blur 5                     \
  --clock                      \
  --indicator                  \
  --time-str="%H:%M:%S"        \
  --date-str="%A, %m %Y"       
elif [[ "$DESKTOP_SESSION" == "sway"  ||  "$DESKTOP_SESSION" == "/usr/share/wayland-sessions/sway" ]]; then
  swaylock -f \
  --inside-ver-color=$CLEAR     \
  --ring-ver-color=$VERIFYING   \
\
  --inside-wrong-color=$CLEAR   \
  --ring-wrong-color=$WRONG     \
\
  --inside-color=$BLANK        \
  --ring-color=$DEFAULT        \
  --line-color=$BLANK          \
  --separator-color=$DEFAULT   \
\
  --text-ver-color=$VERIFYING     \
  --text-wrong-color=$WRONG       \
  --image "~/.config/i3/wallpaper.jpg"
fi
