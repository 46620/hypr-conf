#!/bin/bash

# Shit quick script, fuck you <3

# Forced deps
#yay -S sdbus-cpp-git

# Hyprland specific
yay -S hypr{land,idle,paper,lock}-git \
       xdg-desktop-portal-hyprland-git

# Other AUR shit
yay -S flameshot-git

# Fucking everything else
sudo pacman -S kitty \
               wofi \
               dunst \
               waybar \
               otf-font-awesome \
               grim \
               slurp \
               wl-clipboard
