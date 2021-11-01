#!/bin/bash
ORIGIN=$(pwd)

#./install_i3_gaps.sh
#./install_picom.sh

# copy cfgs
cd $ORIGIN
mkdir ~/.config/i3/
mkdir ~/.config/picom/

ln -snfv $ORIGIN/config ~/.config/i3/config
ln -snfv $ORIGIN/picom.conf ~/.config/picom/picom.conf

killall picom
i3 restart
