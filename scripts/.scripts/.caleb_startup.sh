#!/bin/sh
# This script is used to mimic xinitrc to some degree

# Remap escape key to caps lock
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

# Set monitors in correct order
xrandr --output HDMI-0 --left-of DP-0

# Start sxhkd
sxhkd &

# Start unclutter
unclutter &

# Start Status Bar
slstatus &

# Start picom
picom &

# Load Wallpaper
feh --bg-scale ~/Pictures/1920x1080-dark-popos.png

# Start st
alacritty &

# Launch dwm
exec dwm
