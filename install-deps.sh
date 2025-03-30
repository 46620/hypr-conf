#!/bin/bash

sudo pacman -S hyprland aquamarine hypr{cursor,graphics,lock,paper,land-protocols,land-qtutils,lang,utils,wayland-scanner,picker,land-qt-support,idle} xdg-desktop-portal-hyprland # don't ask why this is 30 years long, will remove stuff later when testing is done
yay -S hyprshot

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
