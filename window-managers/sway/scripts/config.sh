#!/usr/bin/env bash
yes " " | yay -S grim slurp jq scdoc wl-clipboard
yes " " | yay -S python-ipc
yes " " | yay -S wf-recorder


path=~/.config/sway/scripts

cp -r ~/sway-config/window-managers/sway/scripts/ ~/.config/sway/
rm    $path/config.sh

for file in $path/*
do
  if [ -f $file ]
  then 
    chmod +x $file
  fi
done
