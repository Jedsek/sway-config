#!/usr/bin/env bash
yes " " | yay -S neovim
path=~/.config/nvim
git clone https://github.com.cnpmjs.org/jedsek/nvim-config $path
