#!/bin/bash

# Shit quick script, fuck you <3

# Forced deps
#yay -S sdbus-cpp-git

# Hyprland specific
yay -S hyprland-git \
       hypridle-git \
       xdg-desktop-portal-hyprland-git
       #hyprlock-git \

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
