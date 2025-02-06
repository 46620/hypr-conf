#!/bin/bash

readonly USER_HAS_BRAIN_DAMAGE=1 # Set this to 0 to use stable builds, set to 1 to use git builds.

if [ $USER_HAS_BRAIN_DAMAGE -eq 1 ]
then
    yay -S --cleanafter --noconfirm hypr{cursor,graphics,idle,land,land-protocols,land-qtutils,lang,lock,paper,polkitagent,utils,wayland-scanner,picker,shot}-git \
       aquamarine-git \
       xdg-desktop-portal-hyprland-git
else
    sudo pacman -S hyprland
fi
#systemctl --user enable --now hyprpaper.service
#systemctl --user enable --now hypridle.service

# Other AUR shit
yay -S --cleanafter --noconfirm uwsm \
       tofi
       #flameshot-git \ # Currently not used in any config, don't install for now

# Fucking everything else
sudo pacman -S --noconfirm kitty \
               dunst \
               waybar \
               otf-font-awesome \
               grim \
               slurp \
               wl-clipboard \
               brightnessctl \
               swappy \
               thunar \
               stow \
               gwenview
