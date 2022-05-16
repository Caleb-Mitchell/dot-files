#!/usr/bin/env bash

feh --bg-center /home/caleb/Pictures/Wallpapers/bluearch.png &
wal -i /home/caleb/Pictures/Wallpapers/bluearch.png &
xrdb -merge ~/.Xresources &
# picom &

exec bspwm

