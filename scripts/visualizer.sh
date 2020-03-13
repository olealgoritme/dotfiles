#!/bin/bash
# install cava first and xfce4-terminal
# cava visualizer:

if ! pgrep -x "cava" > /dev/null
then
    alacritty -e cava &> /dev/null &
fi

