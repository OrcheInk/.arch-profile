#!/bin/sh

loop="/home/loop"

rm -rf .local
rm $loop/.bash*

pacman --noconfirm -S openssh git neovim zsh fzf fd ripgrep bat highlight ranger sshfs unzip unrar p7zip trash-cli python-pip tree most lua

pip install 'trash-cli[completion]'

rm /usr/share/zsh/site-functions/_trash*

systemctl enable sshd.service
systemctl start sshd.service

ssh-keyscan github.com >> .ssh/known_hosts
ssh-keyscan github.com >> $loop/.ssh/known_hosts

git config --system user.name orcheink
git config --system user.email 861640471@qq.com

git clone --bare https://github.com/OrcheInk/.arch-profile.git $loop/.arch-profile
function arch {
   git --git-dir=$loop/.arch-profile/ --work-tree=$loop $@
}
arch checkout -f
arch fetch

ln -s $loop/.config/zsh/zshenv /etc/zsh
ln -s $loop/.config
ln -s $loop/.local

mkdir -p $loop/CodeWork/Individual
mkdir -p $loop/CodeWork/Company

chown -R loop:loop $loop

chsh -s $(which zsh) root
chsh -s $(which zsh) loop

echo "The synchronization is complete !"
