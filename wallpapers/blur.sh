#!/bin/bash
# blurs the current feh set background
# ~/.fehbg file contains the file name

eval "set -- $(sed 1d "$HOME/.fehbg")"

WALLPAPER_PATH=$4
FOLDER=$(dirname $WALLPAPER_PATH)
WALLPAPER_FILE=$(basename $4)
WALLPAPER_EXT=${WALLPAPER_FILE#*.}
BLUR_APPEND="_blur"
WALLPAPER_BLUR_FILENAME=${WALLPAPER_FILE%.*}
WALLPAPER_BLUR_PATH=${FOLDER}/${WALLPAPER_BLUR_FILENAME}

function blur() {
    # Create blurred if it doesn't already exist
    if [ -f "$WALLPAPER_BLUR_PATH$BLUR_APPEND.$WALLPAPER_EXT" ]; then
        echo "Blurry version already exist. Switching to original wallpaper"
        ORIG_WP=$(echo $WALLPAPER_PATH | sed -E 's/_blur//g')
        feh --bg-scale $ORIG_WP
    else
        echo "Creating: $WALLPAPER_BLUR_PATH"
        CONVERT_CMD=$(convert $WALLPAPER_PATH -blur 0x6 $WALLPAPER_BLUR_PATH$BLUR_APPEND.$WALLPAPER_EXT)
        $CONVERT_CMD
    fi
}

# Is this a blurred wallpaper?
if [[ $WALLPAPER_FILE == *"$BLUR_APPEND"* ]];
then
  echo "$WALLPAPER_FILE is already a blurred wallpaper. Switching to original wallpaper"
  ORIG_WP=$(echo $WALLPAPER_PATH | sed -E 's/_blur//g')
  feh --bg-scale $ORIG_WP
  exit
else 
  blur
  # set blurred wallpaper
  feh --bg-scale $WALLPAPER_BLUR_PATH$BLUR_APPEND.$WALLPAPER_EXT
fi

