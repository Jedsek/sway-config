#!/usr/bin/env bash

path=~/sway-config/

sh $path/base/config-1.sh
sh $path/base/config-2.sh
sh $path/base/config-3.sh

sh $path/shells/config.sh
sh $path/terminals/config.sh

sh $path/editors/config.sh
sh $path/languages/config.sh

sh $path/window-managers/config.sh


echo "============================================================================================================================================================"
echo "[SCRIPT] Rebooting now..."
sleep 2s
reboot
