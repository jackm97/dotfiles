#!/usr/bin/bash

set -e
set -x

# rofi launcher setup
# sh -c "cd .config/rofi && sh setup.sh"

WORKDIR="${PWD}"

# Create symlinks to all pre-built configs/envs
rm -rf ~/.config/kitty ~/.config/easyeffects ~/.config/omf ~/.config/fish ~/.config/nvim ~/.bash_profile ~/.local/share/termenv/
ln -s "${WORKDIR}"/.config/kitty ~/.config/kitty
ln -s "${WORKDIR}"/.config/easyeffects ~/.config/easyeffects
ln -s "${WORKDIR}"/.config/omf ~/.config/omf
ln -s "${WORKDIR}"/.config/fish ~/.config/fish
ln -s "${WORKDIR}"/.config/nvim ~/.config/nvim
ln -s "${WORKDIR}"/.bash_profile ~/.bash_profile
ln -s "${WORKDIR}"/termenv ~/.local/share/termenv

source ~/.bash_profile

# install pixi
rm -rf $HOME/.pixi
curl -fsSL https://pixi.sh/install.sh | bash

# add custom pixi-termenv that will operate on termenv
if [ -f $HOME/.local/bin ]; then
	mkdir -p $HOME/.local/bin/
fi

cp "${WORKDIR}"/pixi-termenv "$HOME/.local/bin"

# enable termenv so we get access to fish
eval "$(pixi shell-hook)"

cd ${WORKDIR}

# install omf
rm -rf $HOME/.local/share/omf
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
