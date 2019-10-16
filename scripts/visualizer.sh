#!/bin/bash
# install cava first and xfce4-terminal
# cava visualizer:

if ! pgrep -x "cava" > /dev/null
then
    xfce4-terminal --hide-borders -e cava --geometry 70x15 &> /dev/null &
fi

