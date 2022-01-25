#/usr/bin/env bash

mako_path=~/sway-config/window-managers/sway/mako
yes " " | yay -S mako

mkdir ~/.config/mako/
cp $mako_path/config      ~/.config/mako/
