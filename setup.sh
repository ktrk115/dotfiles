#!/bin/bash

rm_ln () {
    rm ~/.$2
    ln -s $1/$2 ~/.$2
}

# install brew (2017/02/08)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install zsh
brew install zsh zsh-completions
# You should do followings:
# 1. add '/usr/local/bin/zsh' into /etc/shells
# 2. chsh -s /usr/local/bin/zsh

# install tmux
brew install tmux

# install vim + lua
brew install lua
brew install vim --with-lua

# link
rm_ln `pwd` zshrc
rm_ln `pwd` zprofile
rm_ln `pwd` vimrc
rm_ln `pwd` tmux.conf

# install pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# install Python 3.6.0 / 2.7.13
pyenv install 3.6.0
pyenv install 2.7.13
pyenv global 3.6.0

# install NeoBundle
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
