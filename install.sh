#!/bin/bash -x 
set -o errexit
DIR="$(dirname $(realpath '$0'))"

#https://github.com/Bash-it/bash-it.git
[[ -d ~/bin ]] || mkdir -pf ~/bin/
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/bin/git-completion.bash

ln -fs ${DIR?}/.bash_profile ~/

[[ -d ~/.config/git/ ]] || mkdir -p ~/.config/git
pip install git-remote-dropbox
ln -sf ~/Private/dotfiles/git-remote-dropbox.json ~/.config/git/git-remote-dropbox.json


npm config set prefix ~/npm


ecryptfs-mount-private
ln -sf ~/Private/dotfiles/.aws ~/.aws
ln -sf ~/Private/dotfiles/.ssh ~/.ssh

