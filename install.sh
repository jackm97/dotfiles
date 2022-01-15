#!/usr/bin/bash

#i3 related stuff + alacritty
rm -rf ~/.config/rofi ~/.config/i3 ~/.config/i3blocks ~/.config/picom ~/.config/dunst ~/.config/alacritty
ln -s $PWD/.config/rofi ~/.config/rofi
ln -s $PWD/.config/i3 ~/.config/i3
ln -s $PWD/.config/i3blocks ~/.config/i3blocks
ln -s $PWD/.config/picom ~/.config/picom
ln -s $PWD/.config/dunst ~/.config/dunst
ln -s $PWD/.config/alacritty ~/.config/alacritty

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp .zshrc ~/.zshrc
