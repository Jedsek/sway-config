#!/usr/bin/env bash
yes " " | yay -S neovim
path=~/.config/nvim
git clone --depth 1 https://github.com.cnpmjs.org/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com.cnpmjs.org/jedsek/nvim-config $path
