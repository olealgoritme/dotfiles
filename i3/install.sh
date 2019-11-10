#!/bin/bash
git clone https://github.com/resloved/i3 i3-gaps-rounded
cd i3-gaps-rounded
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
mkdir ~/.config/i3/
cp config ~/.config/i3/



# https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783
