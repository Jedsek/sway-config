#!/usr/bin/env bash
sh ~/.config/sway/scripts/grimshot/grimshot --notify save screen ~/Pictures/$(echo $RANDOM$RANDOM$RANDOM).png
swaymsg mode "default"
