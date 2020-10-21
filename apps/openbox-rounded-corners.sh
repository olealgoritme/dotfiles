#!/bin/sh
sudo apt install libxml2-dev obconf obsession libobrender32v5
git clone https://github.com/olealgoritme/openbox-rounded-corners
cd openbox-rounded-corners
./configure
make
sudo make install
