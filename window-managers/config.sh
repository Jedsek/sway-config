#!/usr/bin/env bash

echo "============================================================================================================================================================"
echo "[SCRIPT] 正在配置sway-wm"

path=~/sway-config/window-managers/sway

## Install some tools
yes " " | yay -S otf-font-awesome
yes " " | yay -S sway swaylock brightnessctl wob


## Sway
mkdir -p ~/.config/sway/wallpapers
cp -r  $path/wallpapers/  ~/.config/sway/
cp     $path/config       ~/.config/sway/


## Plugins
sh $path/scripts/config.sh


## Bin
sh $path/bin/config.sh


## Waybar
sh $path/waybar/config.sh


## Mako
sh $path/mako/config.sh


## Wofi
sh $path/wofi/config.sh
