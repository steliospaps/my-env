#!/bin/bash -x
DIR="$(dirname $(realpath '$0'))"
#https://github.com/Bash-it/bash-it.git
mkdir ~/bin/
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/bin/git-completion.bash

ln -fs ${DIR?}/.bash_profile ~/

npm config set prefix ~/npm

pip install git-remote-dropbox
