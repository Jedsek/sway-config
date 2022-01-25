#!/usr/bin/env bash

yes " " | yay -S helix

helix_path=~/sway-config/editors/helix
mkdir -p ~/.config/helix/themes/
cp $helix_path/config.toml ~/.config/helix/
