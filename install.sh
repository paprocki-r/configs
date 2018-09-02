#!/bin/sh
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install fonts-powerline #fonts for omzsh agnoster theme
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

#i3wm-gaps installation 
sh i3gapsinstall/install.sh

#i3wm-gaps config
mv ~/.config/i3/config ~/.config/i3/config_bak
ln -s $PWD/i3-gaps-conf/config ~/.config/i3/config 
#for transparency
ln -s $PWD/i3gapsinstall/.compton.conf ~/.compton.conf
