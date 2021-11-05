#!/bin/bash
ORIGIN=$(pwd)

function install_deps() {
    echo ""
    while true; do
        read -p "Install DEPENDENCIES for i3 gaps / picom? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_deps.sh; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_i3_gaps() {
    echo ""
    while true; do
        read -p "Install i3 gaps ? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_i3_gaps.sh; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_picom() {
    echo ""
    while true; do
        read -p "Install picom ? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_picom.sh; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_cfgs() {
    echo ""
    while true; do
        read -p "Install i3/picom cfg files? (y/n): " yn
        case $yn in
            [Yy]* ) ./install_cfgs.sh; break;;
            [Nn]* ) break;;
        esac
    done
}


# run installers
install_deps
install_i3_gaps
install_picom
install_cfgs
