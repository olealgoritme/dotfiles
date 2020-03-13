#!/bin/bash
ORIGIN=$(pwd)

# git clone i3 gaps
mkdir ~/src
git clone https://github.com/resloved/i3 ~/src/i3-gaps-rounded
cd ~/src/i3-gaps-rounded
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

# copy cfgs
cd $ORIGIN
mkdir ~/.config/i3/
mkdir ~/.config/compton/
cp config ~/.config/i3/
cp compton.config ~/.config/compton/


# themes: https://github.com/unix121/i3wm-themer
# install: https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783
