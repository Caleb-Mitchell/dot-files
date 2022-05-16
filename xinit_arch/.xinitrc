#!/bin/sh

# Remap the escape key to caps lock
# xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
setxkbmap -option ctrl:nocaps
xcape -e '#66=Escape'

# Start sxhkd
sxhkd &

# Start unclutter
unclutter &

# Start status bar
slstatus &

# Start picom
picom &

# Load wallpaper
~/.fehbg &

# Launch terminal on login
st &

# Launch dwm
exec dwm
