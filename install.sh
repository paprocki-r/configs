#!/bin/sh
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s  $PWD/vim/.vimrc ~/.vimrc
ln -s  $PWD/zsh/.zshrc ~/.zshrc
ln -s  $PWD/tmux/.tmux.conf ~/.tmux.conf
