#!/bin/bash

# This will set a bunch of xdg-mime shit
# Mostly to keep my setup the same
# Will not make this look good, will not do it clean, fuck you :3

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