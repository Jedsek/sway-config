#!/usr/bin/env bash
path=~/sway-config
for file in $path/terminals/*
do
  if [ -d "$file" ]
  then
    sh $file/config.sh
  fi
done
