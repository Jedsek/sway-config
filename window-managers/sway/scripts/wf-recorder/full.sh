#!/usr/bin/env bash
swaymsg mode "default"
FILENAME=~/Videos/$(echo $RANDOM$RANDOM$RANDOM)
notify-send -a "wf-recorder" "Full: $FILENAME.mpv"
exec wf-recorder -f $FILENAME.mkv
