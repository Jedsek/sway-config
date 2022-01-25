#!/usr/bin/env bash
notify-send -a "wf-recorder" "Stop recording"
swaymsg mode "default"
for pid in $(ps -ef | awk '/[w]f-recorder/{print $2}')
do
  kill $pid
done
