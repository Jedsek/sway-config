#!/usr/bin/env bash

echo "==========================================================================================================================================================="
echo "[SCRIPT] 正在安装输入法, fcitx5, 中文支持, 词库， material系列主题..."
yes " " | sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-zhwiki fcitx5-material-color
sudo chmod o=rw /etc/environment
sudo cat > /etc/environment << EOF
GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=\@im=fcitx
SDL_IM_MODULE DEFAULT=fcitx
EOF

echo "==========================================================================================================================================================="
echo "[SCRIPT] 正在安装字体, ttf-fira-code..."
yes " " | sudo pacman -S ttf-fira-code

mkdir -p ~/.config/fcitx5/conf
cp -f   ~/sway-config/fcitx5/conf/classicui.conf  ~/.config/fcitx5/conf/
cp -f   ~/sway-config/fcitx5/conf/pinyin.conf     ~/.config/fcitx5/conf/
cp -f   ~/sway-config/fcitx5/config               ~/.config/fcitx5/
cp -f   ~/sway-config/fcitx5/profile              ~/.config/fcitx5/
