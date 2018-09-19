bin/sh

apt install htop
apt install git
apt install lm-sensors
apt install redshift-gtk
apt intall terminator
#
apt install zsh
apt install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install fonts-powerline #fonts for omzsh agnoster theme
ln -s  $PWD/vim/.vimrc ~/.vimrc
ln -s  $PWD/zsh/.zshrc ~/.zshrc
ln -s  $PWD/tmux/.tmux.conf ~/.tmux.conf
ln -s  $PWD/vim/.aliases ~/.aliases

#set up terminator as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

#@TODO: set up shortcut to terminator


#set ZSH as default shell
chsh -s $(zsh)

apt install tmux
#TMUX PLUGIN MANAGER installation
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


apt install python-pip
#thefuck
pip install thefuck

#i3wm-gaps installation 
sh i3gapsinstall/install.sh
sudo apt-get install dmenu
#i3wm-gaps config
mv ~/.config/i3/config ~/.config/i3/config_bak
ln -s $PWD/i3-gaps-conf/config ~/.config/i3/config 
#for transparency
ln -s $PWD/i3gapsinstall/.compton.conf ~/.compton.conf


