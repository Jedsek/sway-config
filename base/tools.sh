echo "==========================================================================================================================================================="
echo "[SCRIPT] 正在安装常用工具, npm, nodejs, hexo, vlc, tree, fd, bat, exa, ripgrep..."
yes " " | yay -S npm nodejs
npm config set registry https://registry.npm.taobao.org
sudo npm install -g npm hexo
yes " " | yay -S vlc mpv tree fd bat exa ripgrep axel
yes " " | yay -S neofetch feh geary xdotool
yes " " | yay -S steam dingtalk

git config --global url."https://github.com.cnpmjs.org/".instendOf "https://github.com/"
