#!/usr/bin/env bash
yes " " | yay -S grim slurp jq scdoc wl-clipboard
yes " " | yay -S wf-recorder

mkdir ~/.config/sway/scripts/
cp -r ~/sway-config/window-managers/sway/scripts/ ~/.config/sway/
rm -rf ~/.config/sway/scripts/config.sh
chmod +x ~/.config/sway/scripts/*
