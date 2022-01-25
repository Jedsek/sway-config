#!/usr/bin/env bash

echo "============================================================================================================================================================"
echo -e "[SCRIPT] 正在配置zsh, 主题: powerlevel10k...\n完成后请打开一个新终端, 体验效果..."

# git clone http://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com.cnpmjs.org/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com.cnpmjs.org/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com.cnpmjs.org/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com.cnpmjs.org/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

rm -f ~/.zshrc ~/.p10k.zsh
cp ~/sway-config/shells/zsh/.p10k.zsh ~/
cp ~/sway-config/shells/zsh/.zshrc ~/
