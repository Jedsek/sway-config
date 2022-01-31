#!/usr/bin/env bash
path=~/sway-config
for file in $path/languages/*
do 
  if [[ -f "$file" && $file != "$path/languages/config.sh" ]]
  then
    sh $file
  fi
done
    
