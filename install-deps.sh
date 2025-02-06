#!/bin/bash

readonly USER_HAS_BRAIN_DAMAGE=1 # Set this to 0 to use stable builds, set to 1 to use git builds.

if [ $USER_HAS_BRAIN_DAMAGE -eq 1 ]
then
    yay -S --cleanafter --noconfirm hypr{cursor,graphics,idle,land,land-protocols,land-qtutils,lang,lock,utils,wayland-scanner,picker,shot}-git \
       aquamarine-git \
       xdg-desktop-portal-hyprland-git
else
    sudo pacman -S hyprland hypridle hyprlock hyprpaper
    yay -S hyprshot
fi

# Auto start systemd services
# UNUSED AS THEY ARE JUST SET TO LOAD ON HYPRLAND START (I use multiple DEs and it got annoying)
#systemctl --user enable --now hyprpaper.service
#systemctl --user enable --now hypridle.service

# Other AUR shit
yay -S --cleanafter --noconfirm uwsm \
       tofi \
       waypaper-engine-git

# Normal repo shit
sudo pacman -S --noconfirm \
               kitty \
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
               gwenview \
               polkit-kde-agent # This is borrowed from the archinstall command
