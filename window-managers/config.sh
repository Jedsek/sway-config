#!/usr/bin/env bash
path=~/sway-config
for file in $path/window-managers/*
do
  if [ -d "$file" ]
  then
    sh $file/config.sh
  fi
done
