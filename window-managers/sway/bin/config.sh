#!/usr/bin/env bash
path=~/.config/sway/bin
mkdir $path
axel -n 125 -o $path/DevSidecar.AppImage https://gh.api.99988866.xyz/https://github.com/docmirror/dev-sidecar/releases/download/v1.7.2/DevSidecar-1.7.2.AppImage
chmod +x $path/*
