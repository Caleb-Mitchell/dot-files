#!/bin/sh
cd $HOME/my-music-notes \
&& python3 -m flask run --host=0.0.0.0 --port=443 &
