#!/bin/bash
# install mpv, youtube-dl and xfce4-terminal first
# run: ./youtube_play.sh https://youtube.com/watch?v=id
# Playlist?
#args="-shuffle --ytdl-raw-options=yes-playlist= --force-window=immediate"
mpv $1 --no-border --autofit=500 &> /dev/null &
visualizer.sh
