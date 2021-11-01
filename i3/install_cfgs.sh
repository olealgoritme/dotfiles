#!/bin/bash
ORIGIN=$(pwd)

echo "Installing i3 and picom configs"
cd $ORIGIN
mkdir ~/.config/i3/
mkdir ~/.config/picom/

ln -snfv $ORIGIN/config ~/.config/i3/config
ln -snfv $ORIGIN/picom.conf ~/.config/picom/picom.conf
killall picom
i3 restart
