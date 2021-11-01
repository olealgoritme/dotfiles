#!/bin/bash

# deps
sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson

# git clone picom (next-rebase branch)
mkdir ~/src
rm -rf ~/src/picom-next
git clone --single-branch --branch next-rebase --depth=1 https://github.com/ibhagwan/picom ~/src/picom-next
cd ~/src/picom-next
meson --buildtype=release . build
ninja -C build
sudo cp build/src/picom /usr/bin/picom
sudo cp bin/picom-trans /usr/bin/picom-trans
