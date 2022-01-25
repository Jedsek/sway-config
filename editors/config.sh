#!/usr/bin/env bash
path=~/sway-config/editors
sh $path/languages.sh
for file in $path/*
do
  if [ -d "$file" ]
  then
    sh $file/config.sh
  fi
done
