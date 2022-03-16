# dotfiles
My personal dotfiles for i3wm

## Requirements
- i3wm
- dunst
- [i3lock-color](https://github.com/Raymo111/i3lock-color)
- pactl (should work with both PulseAudio and Pipewire-Pulse)
- xautolock
- Kitty
- i3blocks
- [latest picom](https://github.com/yshui/picom.git)
- rofi
- nvidia-smi for GPU temperature, unfortunately amd/intel gpus aren't supported
- xset
- feh 
- playerctl
- lm\_sensors
- mpstat
- perl
- perl-Env
- gnome-calendar
- clipit
- gnome-polkit

## Helpful Apps I use
- nm-applet
- blueman
- neovim with [SpaceVim](https://spacevim.org/) distro
- glow for readmes
- lazydocker
- evolution
- font manager (flatpak)
- gnome-software
- system-config-printer
- meld
- dconf-editor
- file roller
- shotwell
- gnome-screenshot
- gnome-keyring
- gnome-online-accounts
- Kvantum + qt5ct
- cpupower/powertop/tlp
- xinput


## Fonts
- JetBrains Mono
- Cantarell
- Font Awesome 5


## Suspend Hook
A suspend hook can be used to call ``i3lock`` through the included ``suspend-lock.sh`` script.

The following example hook works, write it to ``/etc/systemd/system/suspend@user.service`` replacing ``user`` with your username
in both the filename and in the contents below:
```
[Unit]
Description=User suspend actions
Before=sleep.target

[Service]
User=%I
Type=forking
Environment=DISPLAY=:0
ExecStart=/bin/sh /home/user/.config/i3/lock.sh
```

## Three Versions
- palenight (unmaintained)
- gruvbox (unmaintained)
- hemisu  

## Installation
First clone the repo and init the submodules. You can find the submodules by looking through the configs.
```
git clone --recurse-submodules https://github.com/jackm97/dotfiles.git
```

Then, choose a theme:
```
# palenight
cd dotfiles 
git checkout --recurse-submodules palenight
```
or
```
# gruvbox
cd dotfiles
git checkout --recurse-submodules gruvbox
```
or 
```
# hemisu
cd dotfiles
git checkout --recurse-submodules hemisu
```

Finally, install
```
sh install.sh 
```
The installation script create symlinks to the config files in the repo.
This is useful in the case that you fork my repo and want to make your own changes. It's very easy to then commit those changes
to the repo.

### Extras
Note that the installation also add some **extras** aside from just config files
- [Oh My ZSH!](https://ohmyz.sh/)
- [SpaceVim](https://spacevim.org/)

## GTK Theme
I make a note here to help with remembering how to properly set themes.

1. Use lxappearance which works for most apps (e.g. not flatpak)
2. For flatpak run 
```
flatpak override --filesystem=xdg-config/gtk-3.0
flatpak override --filesystem=$HOME/.themes
flatpak override --filesystem=$HOME/.icons 
```

## TODOS:
Here are some things I'd like to add/change:
- Better brightness notification
- Do not disturb keybinding
- Change lock enable/disable to caffeine enable and disable and add blocklet for it
- Write a curses app for dunst notification tray
