#!/usr/bin/env bash

yes " " | yay -S wofi

mkdir ~/.config/wofi
cp ~/sway-config/window-managers/sway/wofi/config     ~/.config/wofi/
cp ~/sway-config/window-managers/sway/wofi/style.css  ~/.config/wofi/
