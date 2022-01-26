#!/usr/bin/env bash

yes " " | yay -S wofi
cp -r ~/sway-config/window-managers/sway/wofi  ~/.config/
rm    ~/.config/wofi/config.sh
