#!/bin/sh

pkill swayidle

swayidle -w \
	timeout 600 'swaymsg "output * dpms off"' \
	timeout 605 '~/.config/i3/lock.sh' \
	resume 'swaymsg "output * dpms on"' \
  timeout 900 'systemctl suspend'
