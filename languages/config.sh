#!/usr/bin/env bash

# rust
{curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh}&{xdotool key return}
touch ~/.cargo/config
cat > ~/.cargo/config << EOF
[source.crates-io]
registry = "https://github.com/rust-lang/crates.io-index"
replace-with = 'ustc'
[source.ustc]
registry = "git://mirrors.ustc.edu.cn/crates.io-index"
EOF
yes " " | yay -S rust-analyzer

# vala
yes " " | yay -S vala
yes " " | yay -S vala-language-server

# lua
yes " " | yay -S lua-language-server

# bash
yes " " | yay -S bash-language-server

# css
npm i -g vscode-langservers-extracted

# typescript
npm i -g typescript 
npm i -g typescript-language-server

# vimscript
npm i -g vim-language-server
