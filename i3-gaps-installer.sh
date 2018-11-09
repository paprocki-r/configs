#!/bin/bash
#for Ubuntu 16+
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

cd /tmp

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

###

sudo apt-get install dmenu
apt install compton
apt install i3status
apt install feg

### curl some wallpapers into ~/Pictures


### 

#i3wm-gaps config
mv ~/.config/i3/config ~/.config/i3/config_bak
ln -s $PWD/i3-gaps-conf/config ~/.config/i3/config 
#for transparency
ln -s $PWD/i3-gaps-conf/.compton.conf ~/.compton.conf
