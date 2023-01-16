#!/bin/sh

# HOME path
loop="/home/loop"

# empty directory
rm -rf .local
rm $loop/.bash*

# pacman install
pacman --noconfirm -S openssh git neovim zsh fzf fd ripgrep bat highlight ranger sshfs unzip unrar p7zip trash-cli python-pip tree most lua man-db nodejs npm github-cli

# trash-cli completion
pip install 'trash-cli[completion]'
rm /usr/share/zsh/site-functions/_trash*

# ssh-service
systemctl enable sshd.service
systemctl start sshd.service

# github hosts
ssh-keyscan github.com >> .ssh/known_hosts
ssh-keyscan github.com >> $loop/.ssh/known_hosts

# git config
git config --system user.name orcheink
git config --system user.email 861640471@qq.com

# clone arch-profile repository
git clone --bare https://github.com/OrcheInk/.arch-profile.git $loop/.arch-profile

# alias for arhc-profile
function arch {
   git --git-dir=$loop/.arch-profile/ --work-tree=$loop $@
}
arch checkout -f
arch fetch

# carete symbol link
ln -s $loop/.config/zsh/zshenv /etc/zsh
ln -s $loop/.config/npm/npmrc /etc
rm /usr/lib/node_modules/tldr/config.json
ln -s $loop/.config/tldr/config.json /usr/lib/node_modules/tldr
ln -s $loop/.config
ln -s $loop/.local

# create work directory
mkdir -p $loop/Code/Individual
mkdir -p $loop/Code/Company

# modify user and shell
chown -R loop:loop $loop

chsh -s $(which zsh) root
chsh -s $(which zsh) loop

# finish
echo "The synchronization is complete !"
