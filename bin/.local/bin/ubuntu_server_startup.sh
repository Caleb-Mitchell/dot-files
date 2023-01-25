#!/bin/bash

# commands to run on server startup
(sudo ufw reload) &&
(sudo qbittorrent-nox &) &&
(sudo node /home/caleb/foundryvtt/resources/app/main.js --dataPath=$HOME/foundrydata &) &&
(python3 -m flask run --host=0.0.0.0 --port=7076)