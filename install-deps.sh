#!/bin/bash

# Shit quick script, fuck you <3

# Forced deps
#yay -S sdbus-cpp-git

# Hyprland specific
yay -S --cleanafter --noconfirm hypr{cursor,graphics,idle,land,land-protocols,land-qtutils,lang,lock,paper,polkitagent,utils,wayland-scanner,picker,shot}-git \
       aquamarine-git \
       xdg-desktop-portal-hyprland-git

systemctl --user enable --now hyprpaper.service
systemctl --user enable --now hypridle.service

# Other AUR shit
yay -S --cleanafter --noconfirm uwsm
       #flameshot-git \ # Currently not used in any config, don't install for now

# Fucking everything else
sudo pacman -S --noconfirm kitty \
               wofi \
               dunst \
               waybar \
               otf-font-awesome \
               grim \
               slurp \
               wl-clipboard \
               brightnessctl
