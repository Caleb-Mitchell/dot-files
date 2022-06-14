#!/bin/sh
# This script changes the defaul audio output device to my speakers, as well
# as moves all the current audio streams to my speakers

pactl set-default-sink alsa_output.pci-0000_0c_00.4.analog-stereo; for p in $(pactl list short sink-inputs | awk '{print $1}'); do pacmd move-sink-input "${p}" alsa_output.pci-0000_0c_00.4.analog-stereo; done
