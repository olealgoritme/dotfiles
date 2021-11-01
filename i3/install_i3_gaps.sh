#!/bin/bash

# git clone i3 gaps
mkdir ~/src
rm -rf ~/src/i3-gaps-rounded
git clone https://github.com/resloved/i3 ~/src/i3-gaps-rounded
cd ~/src/i3-gaps-rounded
export CFLAGS=" -fcommon"
export CPPFLAGS="-U_FORTIFY_SOURCE"
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
