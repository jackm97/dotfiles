#!/usr/bin/bash

rm -rf ~/.config/rofi ~/.config/i3 ~/.config/i3blocks ~/.config/picom ~/.config/dunst ~/.config/alacritty
ln -s $PWD/.config/rofi ~/.config/rofi
ln -s $PWD/.config/i3 ~/.config/i3
ln -s $PWD/.config/i3blocks ~/.config/i3blocks
ln -s $PWD/.config/picom ~/.config/picom
ln -s $PWD/.config/dunst ~/.config/dunst
ln -s $PWD/.config/alacritty ~/.config/alacritty
