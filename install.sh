#!/usr/bin/bash

# rofi launcher setup
# sh -c "cd .config/rofi && sh setup.sh"

rm -rf ~/.config/kitty ~/.config/easyeffects ~/.config/omf ~/.config/fish ~/.config/nvim ~/.bash_profile
ln -s $PWD/.config/kitty ~/.config/kitty
ln -s $PWD/.config/easyeffects ~/.config/easyeffects
ln -s $PWD/.config/omf ~/.config/omf
ln -s $PWD/.config/fish ~/.config/fish
ln -s $PWD/.config/nvim ~/.config/nvim
ln -s $PWD/.bash_profile ~/.bash_profile

#oh my zsh
# rm -rf ~/.oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# rm ~/.zshrc
# ln -s $PWD/.zshrc ~/.zshrc

#.zshenv
# rm ~/.zshenv
# ln -s $PWD/.zshenv ~/.zshenv
