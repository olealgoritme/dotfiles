#!/bin/bash
ORIGIN=$(pwd)

./install_i3_gaps.sh
./install_picom.sh

# copy cfgs
cd $ORIGIN
mkdir ~/.config/i3/
mkdir ~/.config/picom/
cp config ~/.config/i3/
cp picom.config ~/.config/picom/
