#!bin/sh

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
ln -s  $PWD/zsh/.aliases ~/.aliases

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
apt install python3-dev python3-pip
#thefuck
pip3 install thefuck


#i3wm-gaps installation 
sh i3gapsinstall/install.sh
sudo apt-get install dmenu
#i3wm-gaps config
mv ~/.config/i3/config ~/.config/i3/config_bak
ln -s $PWD/i3-gaps-conf/config ~/.config/i3/config 
#for transparency
ln -s $PWD/i3-gaps-conf/.compton.conf ~/.compton.conf

### extra software
mkdir software
## Pycharm
# download
curl https://download-cf.jetbrains.com/python/pycharm-community-2018.2.3.tar.gz --output ~ /software/pycharm.tar.gz
# unpack
tar -xzf pycharm.tar.gz
rm pycharm-community-2018.2.3.tar.gz
# add alias - pycharm will make it with first run
#sudo ln -s  $PWD/software/pycharm-community-2018.2.3/bin/pycharm.sh /usr/local/bin/pycharm

## sublime
#download
curl https://download.sublimetext.com/sublime_text_3_build_3176_x64.tar.bz2 --output sublime.tar.bz2
#unpack
tar xvjf sublime.tar.bz2
rm sublime.tar.bz2
#make a link
sudo ln -s  $PWD/software/sublime_text_3/sublime_text /usr/local/bin/subl

