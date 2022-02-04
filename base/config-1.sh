#!/usr/bin/env bash

echo "==========================================================================================================================================================="
echo "[SCRIPT] 正在同步时间..."
sudo timedatectl set-timezone Asia/Shanghai
sudo timedatectl set-ntp true

echo "============================================================================================================================================================"
echo "[SCRIPT] 正在更新源中..."

if ! grep -q "\[archlinuxcn\]" /etc/pacman.conf
then
  sudo chmod o=rw /etc/pacman.conf
  cat >> /etc/pacman.conf << EOF

[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/\$arch

[options]
SigLevel = TrustAll
EOF
fi


sudo chmod o=rw /etc/pacman.d/mirrorlist
cat > /etc/pacman.d/mirrorlist << EOF

## Country : China
Server = https://mirrors.sjtug.sjtu.edu.cn/manjaro/stable/\$repo/\$arch
Server = https://mirrors.ustc.edu.cn/manjaro/stable/\$repo/\$arch

EOF

yes " " | sudo pacman -Syyu
yes " " | sudo pacman -S archlinuxcn-keyring
yes " " | sudo pacman -S base-devel
yes " " | sudo pacman -S net-tools iproute2 iputils

# 调用manjaro-config/fcitx5下的脚本, 安装fcitx5并进行自动地配置主题配置, 字体选择等
# 在这调用是为了让你重启之后就能直接使用输入法了
# 详情请阅读fcitx5文件夹下的README.md
sh ~/sway-config/fcitx5/config.sh
