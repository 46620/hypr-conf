#!/bin/bash

#set -x

# This script handles grabbing host specific configs, this can be turned off with the following toggle
readonly USE_HOST_SPECIFIC_CONFIGS=1

# TODO: MAKE BETTER

if [ $USE_HOST_SPECIFIC_CONFIGS -eq 1 ]
then
    echo " [*  ] Grabbing device specific configs before updating"
    cp -v hosts/"$HOSTNAME"/binds.conf hypr/binds.conf.d/999-device.conf
    cp -v hosts/"$HOSTNAME"/vars.conf hypr/vars.conf.d/999-device.conf
    cp -v hosts/"$HOSTNAME"/workspacerule.conf hypr/workspacerule.conf.d/999-device.conf
    cp -v hosts/"$HOSTNAME"/monitors.conf hypr/monitors.conf
    cp -v hosts/"$HOSTNAME"/hyprpaper.conf hypr/hyprpaper.conf
    cp -v hosts/"$HOSTNAME"/hypridle.conf hypr/hypridle.conf
    cp -v hosts/"$HOSTNAME"/hyprlock.conf hypr/hyprlock.conf
    cp -v hosts/"$HOSTNAME"/autostart.conf hypr/autostart.conf.d/999-device.conf
fi

echo " [*  ] Deploying configs"
rm -rvf ~/.config/hypr/* # Because of the amount of moving files, I nuke the hyprland folder just in case old symlinks stay
stow -v . -t ~/.config