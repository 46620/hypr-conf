#!/bin/bash

# For some reason these keep unsetting (im assuming it's because i have like 4 different xdg things installed)
# This will run on boot every time until I fix it on my setup.

# Browser (this would randomly set to r2modman)
xdg-settings set default-web-browser firefox.desktop

# File manager 
xdg-mime default org.kde.dolphin.desktop inode/directory
xdg-mime default org.kde.ark.desktop application/zip

# Pictures
xdg-mime default org.kde.gwenview.desktop image/jpg
xdg-mime default org.kde.gwenview.desktop image/gif
xdg-mime default org.kde.gwenview.desktop image/png
xdg-mime default org.kde.gwenview.desktop image/webp

# Video
xdg-mime default mpv.desktop video/x-matroska
xdg-mime default mpv.desktop video/mp4