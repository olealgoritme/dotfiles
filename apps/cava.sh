#!/bin/sh
git clone https://github.com/karlstav/cava
cd cava
./autogen.sh; ./configure ; make ; sudo make install
