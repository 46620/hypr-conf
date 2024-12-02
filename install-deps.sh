#!/bin/bash

# Shit quick script, fuck you <3

# Forced deps
#yay -S sdbus-cpp-git

# Hyprland specific
yay -S hypr{cursor,graphics,idle,land,land-protocols,land-qtutils,lang,lock,paper,polkitagent,utils,wayland-scanner}-git \
       xdg-desktop-portal-hyprland-git

# Other AUR shit
yay -S flameshot-git \
       uwsm

# Fucking everything else
sudo pacman -S kitty \
               wofi \
               dunst \
               waybar \
               otf-font-awesome \
               grim \
               slurp \
               wl-clipboard \
               brightnessctl
