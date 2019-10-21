#!/bin/bash

if [[ "$1" == *"youtu"* ]]; then
    echo "Playing YouTube!"
    # MPV + youtube-dl for protected videos etc
    mpv $1 --no-border --autofit=400 &> /dev/null &

elif [[ "$1" == *"twitch"* ]]; then 
    echo "Playing Twitch!"
    streamlink -p "mpv --no-border --autofit=400" $1 best &>/dev/null&
fi

visualizer.sh
