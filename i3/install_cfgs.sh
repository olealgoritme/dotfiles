#!/bin/bash
ORIGIN=$(pwd)

echo "Installing i3 and picom configs"
cd $ORIGIN
mkdir ~/.config/i3/ &>/dev/null
mkdir ~/.config/picom/ &>/dev/null

if [ -f ~/.config/i3/config ]; then
    echo "i3 config exists, saving as 'config.bak'"
    mv ~/.config/i3/config ~/.config/i3/config.bak
    ln -snfv $ORIGIN/config ~/.config/i3/config
else
    ln -snfv $ORIGIN/config ~/.config/i3/config
fi


if [ -f ~/.config/picom/picom.conf ]; then
    echo "picom config exists, saving as 'picom.conf.bak'"
    mv ~/.config/picom/picom.conf ~/.config/picom/picom.conf.bak
    ln -snfv $ORIGIN/picom.conf ~/.config/picom/picom.conf
else
    ln -snfv $ORIGIN/picom.conf ~/.config/picom/picom.conf
fi

killall picom &>/dev/null
i3 restart &>/dev/null
