#!/bin/sh

loop="/home/loop"

rm -rf .* 2>/dev/null
rm -rf $loop/.* 2>/dev/null

pacman --noconfirm -S openssh git neovim zsh fzf fd ripgrep bat highlight ranger sshfs unzip unrar p7zip trash-cli python-pip tree most lua

pip install 'trash-cli[completion]'

rm /usr/share/zsh/site-functions/_trash*

systemctl enable sshd.service
systemctl start sshd.service

git config --system user.name orcheink
git config --system user.email 861640471@qq.com

git clone --bare https://github.com/OrcheInk/.arch-profile.git $loop/.arch-profile
function arch {
   git --git-dir=$loop/.arch-profile/ --work-tree=$loop $@
}
arch checkout
arch config status.showUntrackedFiles no

ln -s $loop/.config/zsh/zshenv /etc/zsh
ln -s $loop/.config
ln -s $loop/.local

chown -R loop:loop $loop/.config
chown -R loop:loop $loop/.local

chsh -s $(which zsh) root
chsh -s $(which zsh) loop

echo "The synchronization is complete !"
