#!/bin/bash

# commands to run on server startup
(sudo ufw reload) &&
(sudo qbittorrent-nox &) &&
(sudo node /home/caleb/foundryvtt/resources/app/main.js --dataPath=$HOME/foundrydata &) &&
($HOME/.local/bin/launch_my_music_notes.sh)

