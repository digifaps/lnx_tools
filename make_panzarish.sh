#!/bin/bash

cd ~
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get remove vim-tiny && sudo apt-get install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/digifaps/rc_files.git
sudo apt-get install exuberant-ctags
