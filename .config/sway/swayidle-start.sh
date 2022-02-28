#!/bin/sh

pkill swayidle

swayidle -w \
	timeout 600 '~/.config/i3/lock.sh' \
	timeout 605 'swaymsg "output * dpms off"' \
	timeout 1200 'systemctl suspend' \
	resume 'swaymsg "output * dpms on"'
