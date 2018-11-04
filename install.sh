#!/bin/bash -x 
set -o errexit
DIR="$(dirname $(realpath '$0'))"

#https://github.com/Bash-it/bash-it.git
[[ -d ~/bin ]] || mkdir -pf ~/bin/
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/bin/git-completion.bash

ln -fs ${DIR?}/.bash_profile ~/

npm config set prefix ~/npm

pip install git-remote-dropbox

ecryptfs-mount-private
ln -sf ~/Private/dotfiles/.aws ~/.aws
ln -sf ~/Private/dotfiles/.ssh ~/.ssh
[[ -d ~/.config/git/ ]] || mkdir -p ~/.config/git
ln -sf ~/Private/dotfiles/git-remote-dropbox.json ~/.config/git/git-remote-dropbox.json
