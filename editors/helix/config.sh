#!/usr/bin/env bash

yes " " | yay -S helix

path=~/sway-config/editors/helix
cp -r $path/ ~/.config/
rm    ~/.config/helix/config.sh
