#!/usr/bin/env bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.sh
yes " " | sh rustup.sh
rm rustup.sh
touch ~/.cargo/config
cat > ~/.cargo/config << EOF
[source.crates-io]
registry = "https://github.com/rust-lang/crates.io-index"
replace-with = 'ustc'
[source.ustc]
registry = "git://mirrors.ustc.edu.cn/crates.io-index"
EOF
yes " " | yay -S rust-analyzer