#!/bin/sh

pacman -Sy
pacman --noconfirm -S openssh git neovim zsh fzf fd ripgrep bat highlight ranger sshfs unzip unrar p7zip trash-cli python-pip tree most lua man-db nodejs npm github-cli

# trash-cli completion
pip install 'trash-cli[completion]'
rm /usr/share/zsh/site-functions/_trash*

git config --system user.name orcheink
git config --system user.email 861640471@qq.com
git config --system --add url."git@github.com:".insteadOf "https://github.com/"

cat $HOME/.config/npm/npmrc | sudo tee /etc/npmrc
npm install -g tldr
rm /usr/lib/node_modules/tldr/config.json
cat $HOME/.config/tldr/config.json | sudo tee /usr/lib/node_modules/tldr/config.json

cat $HOME/.config/zsh/zshenv | sudo tee /etc/zsh/zshenv

# finish
echo "The installation is complete !"
