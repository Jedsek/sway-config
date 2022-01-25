#!/usr/bin/env bash

yes " " | yay -S alacritty

mkdir ~/.config/alacritty/
cp ~/sway-config/terminals/alacritty/alacritty.yml ~/.config/alacritty/
