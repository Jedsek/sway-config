#!/usr/bin/env bash
path=~/sway-config/terminals
for file in $path/*
do
  if [ -d $file ]
  then
    sh $file/config.sh
  fi
done
