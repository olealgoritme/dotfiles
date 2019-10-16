#!/bin/bash
# install mpv, youtube-dl and xfce4-terminal first
# run: ./youtube_play.sh https://youtube.com/watch?v=id
# Playlist?
#args="-shuffle --ytdl-raw-options=yes-playlist= --force-window=immediate"

pkill mpv
mpv $1 --no-border --autofit=800 &> /dev/null &
./visualizer.sh
