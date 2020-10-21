#!/bin/sh
sudo apt install cairo \
libxcb \
python \
xcb-proto \
xcb-util-image \
xcb-util-wm \
xcb-util-cursor \
xcb-util-xrm \
xcb-xkb  \
alsa-lib  \
libpulse \
i3-wm \
jsoncpp \
libmpdclient \
libcurl  \
libnl-genl \

git clone https://github.com/polybar/polybar
cd polybar
./build.sh

