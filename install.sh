#!/bin/sh
apt install terminator
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mv  $PWD/vim/.vimrc ~/.vimrc_bak
mv  $PWD/zsh/.zshrc ~/.zshrc_bak
mv  $PWD/tmux/.tmux.conf ~/.tmux.conf_bak

ln -s  $PWD/vim/.vimrc ~/.vimrc
ln -s  $PWD/zsh/.zshrc ~/.zshrc
ln -s  $PWD/tmux/.tmux.conf ~/.tmux.conf

#set up terminator as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

#@TODO: set up shortcut to terminator


#set ZSH as default shell
chsh -s $(zsh)

#TMUX PLUGIN MANAGER installation
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
