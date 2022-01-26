#!/usr/bin/env bash
yes " " | yay -S grim slurp jq scdoc wl-clipboard
yes " " | yay -S wf-recorder

path=~/.config/sway/scripts

mkdir $path/
cp    ~/sway-config/window-managers/sway/scripts/ ~/.config/sway/
rm    $path/config.sh

chmod +x $path/autotiling-rs

