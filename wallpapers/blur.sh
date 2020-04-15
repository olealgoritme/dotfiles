#!/bin/bash
# blurs the current feh set background
# ~/.fehbg file contains the file name
# deps: sudo apt install feh imagemagick

eval "set -- $(sed 1d "$HOME/.fehbg")"

WALLPAPER_PATH=$4
FOLDER=$(dirname $WALLPAPER_PATH)
WALLPAPER_FILE=$(basename $4)
WALLPAPER_EXT=${WALLPAPER_FILE#*.}
BLUR_APPEND="_blur"
WALLPAPER_BLUR_FILENAME=${WALLPAPER_FILE%.*}
WALLPAPER_BLUR_PATH=${FOLDER}/${WALLPAPER_BLUR_FILENAME}

function check_blur() {
    if [ -f "$WALLPAPER_BLUR_PATH$BLUR_APPEND.$WALLPAPER_EXT" ]; then
        switch_to_blurry
    else
        create_blurry
        switch_to_blurry
    fi
}

function create_blurry() {
    #echo "Creating blurry wallpaper: $WALLPAPER_BLUR_PATH"
    CONVERT_CMD=$(convert $WALLPAPER_PATH -blur 0x6 $WALLPAPER_BLUR_PATH$BLUR_APPEND.$WALLPAPER_EXT)
    $CONVERT_CMD
}

function switch_to_original() {
    #echo "Switching to original wallpaper"
    ORIG_WP=$(echo $WALLPAPER_PATH | sed -E 's/_blur//g')
    feh --bg-scale $ORIG_WP
}

function switch_to_blurry() {
    #echo "Switching to blurry wallpaper"
    feh --bg-scale $WALLPAPER_BLUR_PATH$BLUR_APPEND.$WALLPAPER_EXT
}



# is current feh wallpaper blurry? Eg: some_wallpaper_blur.png
if [[ $WALLPAPER_FILE == *"$BLUR_APPEND"* ]];
then
  switch_to_original
  exit
else 
  check_blur
  exit
fi

