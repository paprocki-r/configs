#!!/bin/bash



installi3wmgaps(){
#following https://github.com/Airblader/i3/wiki/Compiling-&-Installing

    #install dependencies for ubuntu 16.10+

    sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
    libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
    libstartup-notification0-dev libxcb-randr0-dev \
    libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
    libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
    autoconf libxcb-xrm0 libxcb-xrm-dev automake

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


}

installextras(){
    sudo apt-get install ranger feh

    feh --bg-scale wall.jpg
}

installBrightness(){
#default bright app doesn't work, so brightlight for the win
 mkdir ~/tmp
 cd ~/tmp
 git clone https://github.com/multiplexd/brightlight.git
 sudo apt install libbsd-dev
 cd brightlight && make
 mv ./brightlight /usr/local/bin
 cd $_ && sudo chown root:root brightlight
 sudo u+s brightlight
}

x=$(lsb_release -r -s)

if [ "$x" = "17.10" ]
then
    echo i3wm-gaps ready to install
    installi3wmgaps
    installextras
    installBrightness
else
    echo i3wm-gaps not ready here for this version of ubuntu
fi
