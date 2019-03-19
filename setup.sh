#!/bin/bash

brew install autojump
brew install grc
brew install coreutils
brew install rbenv
brew install watch
rm -rf ~/.bash_it
export BASH_IT="$HOME/.bash_it"
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
source ~/.bash_profile
source ~/.bash_it/bash_it.sh
bash-it enable completion git
bash-it enable plugin autojump
bash-it enable plugin ssh
bash-it enable plugin rbenv
bash-it enable completion ssh

brew install direnv
cp files/direnv.bash ~/.bash_it/custom/direnv.bash

if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    ~/.vim/bin/install
fi

