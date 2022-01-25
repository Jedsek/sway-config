#!/usr/bin/env bash
path=~/sway-config
for file in $path/shells/*
do
  if [ -d "$file" ]
  then
    sh $file/config.sh
  fi
done
