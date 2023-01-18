#!/bin/sh

ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone --bare https://github.com/OrcheInk/.arch-profile.git $HOME/.arch-profile

# alias for arhc-profile
function arch {
   git --git-dir=$HOME/.arch-profile/ --work-tree=$HOME $@
}

arch checkout -f
arch fetch

rm $HOME/.arch-profile/info/exclude
ln -s $HOME/.config/arch-profile/exclude .arch-profile/info/
rm $HOME/.arch-profile/config
ln -s $HOME/.config/arch-profile/config .arch-profile/

# create work directory
mkdir -p $HOME/.cache/history
mkdir -p $HOME/Code/Individual
mkdir -p $HOME/Code/Company

sudo chsh -s $(which zsh)

# finish
echo "The synchronization is complete !"
