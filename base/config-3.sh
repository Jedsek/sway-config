echo "==========================================================================================================================================================="
echo "[SCRIPT] 正在安装常用工具, npm, nodejs, hexo, vlc, tree, fd, bat, exa, ripgrep..."
yes " " | yay -S npm nodejs
npm config set registry https://registry.npm.taobao.org
sudo npm install -g npm hexo
yes " " | yay -S vlc mpv tree fd bat exa ripgrep 
yes " " | yay -S neofetch feh geary
yes " " | yay -S steam dingtalk
