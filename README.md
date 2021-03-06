# dotfiles
My personal dotfiles for i3wm

## Requirements
- i3wm
- dunst
- [i3lock-color](https://github.com/Raymo111/i3lock-color)
- pactl (should work with both PulseAudio and Pipewire-Pulse)
- xautolock
- Alacritty
- i3blocks
- [latest picom](https://github.com/yshui/picom.git)
- rofi
- nvidia-smi for GPU temperature, unfortunately amd/intel gpus aren't supported
- xset
- feh
- IBM Plex Mono and FontAwesome5 

## Helpful Apps I use
- nm-applet
- blueman
- neovim with [SpaceVim](https://spacevim.org/) distro

## Two Versions
- palenight
- gruvbox

## Installation
First clone the repo and init the submodules. You can find the submodules by looking through the configs.
```
git clone --recurse-submodules https://github.com/jackm97/dotfiles.git
```

Then, choose a theme:
```
# palenight
cd dotfiles 
git checkout --recurse-submodules -b palenight
```
or
```
# gruvbox
cd dotfiles
git checkout --recurse-submodules -b gruvbox
```

Finally, install
```
sh install.sh 
```
The installation script will install [Oh My ZSH!](https://ohmyz.sh/) and create symlinks to the config files in the repo.
This is useful in the case that you fork my repo and want to make your own changes. It's very easy to then commit those changes
to the repo.

Note that the ``.zshenv`` and ``.zshrc`` files may not be desirable for you. Comment out the relevant code in the install script.
