#!/bin/sh
# This script changes the defaul audio output device to my headphones, as well
# as moves all the current audio streams to my headphones

pactl set-default-sink alsa_output.usb-Focusrite_Scarlett_Solo_USB_Y73NW7W09A42B6-00.analog-stereo; for p in $(pactl list short sink-inputs | awk '{print $1}'); do pacmd move-sink-input "${p}" alsa_output.usb-Focusrite_Scarlett_Solo_USB_Y73NW7W09A42B6-00.analog-stereo; done
