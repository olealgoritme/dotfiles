#!/bin/sh

WALLPAPER_DIR="/home/xuw/Pictures/wallpapers"
WALLPAPER=$(find ${WALLPAPER_DIR} -type f -regex ".*\jpg" | shuf -n 1)


# run set wallpaper cmd
feh --bg-scale $WALLPAPER

