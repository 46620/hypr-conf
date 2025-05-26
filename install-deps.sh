#!/bin/bash

sudo pacman -S hyprland aquamarine hypr{cursor,graphics,lock,paper,land-protocols,land-qtutils,lang,utils,wayland-scanner,picker,land-qt-support,idle} xdg-desktop-portal-hyprland # don't ask why this is 30 years long, will remove stuff later when testing is done
yay -S hyprshot

# Other AUR shit
yay -S --cleanafter --noconfirm uwsm \
       tofi \
       pwvucontrol \
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
               dolphin \
               stow \
               gwenview \
               helvum \
               polkit-kde-agent