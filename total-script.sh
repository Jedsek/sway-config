#!/usr/bin/env bash

path=~/sway-config/

for file in $path/base/*
do
  if [ -f $file ]
  then 
    sh $file
  fi
done

sh $path/shells/config.sh
sh $path/terminals/config.sh

sh $path/editors/config.sh
sh $path/languages/config.sh

sh $path/window-managers/config.sh



echo "============================================================================================================================================================"
echo "[SCRIPT] Rebooting now..."
sleep 2s
reboot
