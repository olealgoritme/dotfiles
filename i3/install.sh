#!/bin/bash
ORIGIN=$(pwd)

function install_i3_gaps() {
    echo ""
    while true; do
        read -p "Do you wish to install i3 gaps ? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_i3_gaps.sh; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_picom() {
    echo ""
    while true; do
        read -p "Do you wish to install picom ? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_picom.sh; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_cfgs() {
    echo ""
    while true; do
        read -p "Do you wish to install i3/picom cfg files? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_cfgs.sh; break;;
            [Nn]* ) break;;
        esac
    done
}

# run installers
install_i3_gaps
install_picom
install_cfgs
