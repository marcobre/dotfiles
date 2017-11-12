#!/bin/bash

echo "\nSetup Starting now...\n"
echo "\nStarting to add repositories...\n"
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:remmina-ppa-team/remmina-next -y
sudo add-apt-repository ppa:linphone/release -y
sudo add-apt-repository ppa:wereturtle/ppa -y
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo add-apt-repository ppa:eviltwin1/feedreader-stable -y
sudo add-apt-repository ppa:noobslab/themes -y
sudo add-apt-repository ppa:noobslab/icons -y
sudo add-apt-repository ppa:papirus/papirus -y
sudo add-apt-repository ppa:clipgrab-team/ppa -y
sudo apt-add-repository ppa:tista/adapta -y
sudo add-apt-repository ppa:oranchelo/oranchelo-icon-theme -y
sudo add-apt-repository ppa:no1wantdthisname/ppa -y
sudo add-apt-repository ppa:nextcloud-devs/client -y
## Mate repository
sudo apt-add-repository ppa:ubuntu-mate-dev/xenial-mate -y
## conky manager repository
sudo add-apt-repository ppa:teejee2008/ppa -y
## new pidgin repository
sudo apt-add-repository ppa:sipe-collab -y

echo "\nStarting to update...\n"
sudo apt update

echo "\nStarting to upgrade...\n"
sudo apt dist-upgrade

echo "\nStarting installation...\n"

sudo apt install -y mc
sudo apt install -y terminator
sudo apt install -y evolution-ews
sudo apt install -y sublime-text-installer
sudo apt install -y linphone
sudo apt install -y linphone-plugin-openh264
sudo apt install -y vlc
sudo apt install -y gimp
sudo apt install -y neofetch
sudo apt install -y feedreader
sudo apt install -y unity-tweak-tool
sudo apt install -y arc-theme
sudo apt install -y papirus-icon-theme
sudo apt install -y libreoffice-style-papirus
sudo apt install -y clipgrab
sudo apt install -y tree
sudo apt install -y adapta-gtk-theme
sudo apt install -y oranchelo-icon-theme
sudo apt install -y flatabulous-theme
sudo apt install -y ultra-flat-icons
sudo apt install -y ttf-mscorefonts-installer
sudo apt install -y breeze-cursor-theme
sudo apt install -y xmlstarlet
sudo apt install -y htop
sudo apt install -y filezilla
sudo apt install -y password-gorilla
sudo apt install -y fontconfig-infinality
sudo apt install -y cmatrix
sudo apt install -y git
sudo apt install -y pidgin-sipe
sudo apt install -y rxvt

# optional packages

sudo apt install -y mate-core
sudo apt install -y mate-desktop-environment
sudo apt install -y conky
sudo apt install -y conky-all
sudo apt install -y conky-manager
sudo apt install -y sensors
sudo apt install -y nextcloud-client
sudo apt install -y calibre
#sudo apt install -y fetchmail
#sudo apt install -y fetchmailconf
#sudo apt install -y neomutt
#sudo apt install -y mutt


#sudo apt install -y keepnote
sudo apt install -y liferea
#sudo apt install -y synapse

# bash-it installation
git clone http://github.com/revans/bash-it.git ~/.bash_it
~/.bash_it/install.sh


# install pycharm
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -sc)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

sudo apt update

sudo apt install pycharm -y



## i3 install

mkdir i3-source
cd i3-source/
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps/
sudo add-apt-repository ppa:aguignard/ppa -y
sudo apt-get update -y
sudo apt-get install libxcb-xrm-dev -y

sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm-dev
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
sudo apt install feh -y
sudo apt install i3lock -y
sudo apt install arandr -y
sudo apt install lxappearance
sudo apt install compton -y
sudo apt install i3blocks -y
#so lock screen capture works
sudo apt install scrot -y
sudo apt install ranger -y

#$ /usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
#/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2017.01.02_all.deb keyring.deb SHA256:4c3c6685b1181d83efe3a479c5ae38a2a44e23add55e16a328b8c8560bf05e5f
#apt install ./keyring.deb
#sudo apt install ./keyring.deb
#sudo touch /etc/apt/sources.list.d/sur5r-i3.list
#su
#echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
#sudo echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
#sudo echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe"s
#sudo vim /etc/apt/sources.list.d/sur5r-i3.list
#sudo apt-get update
#sudo apt-get install i3 -y






# spotify client installation
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# play on linux repo for amazon workspaces
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget "http://deb.playonlinux.com/playonlinux_$(lsb_release -cs).list" -O /etc/apt/sources.list.d/playonlinux.list

## cool retro termin
sudo add-apt-repository ppa:bugs-launchpad-net-falkensweb/cool-retro-term
sudo apt update
sudo apt install cool-retro-term -y


# buku installation
#sudo apt-get install python3-cryptography python3-bs4
#cd /tmp/
#git clone https://github.com/jarun/Buku.git
#cd Buku/
#sudo make install
#sudo cp buku-completion.bash /etc/bash_completion.d/


# testing new kernel
#cd /tmp
#kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.6/linux-headers-4.9.6-040906-generic_4.9.6-040906.201701260330_amd64.deb \
#kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.6/linux-image-4.9.6-040906-generic_4.9.6-040906.201701260330_amd64.deb
#wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.6/linux-headers-4.9.6-040906_4.9.6-040906.201701260330_all.deb
#wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.6/linux-headers-4.9.6-040906-generic_4.9.6-040906.201701260330_amd64.deb
#wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.6/linux-image-4.9.6-040906-generic_4.9.6-040906.201701260330_amd64.deb
#sudo dpkg -i linux-headers-4.9*.deb linux-image-4.9*.deb

# numix icons
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo add-apt-repository ppa:numix/ppa
sudo apt update
sudo apt install numix-gtk-theme numix-icon-theme-circle -y

## mutt installation

#sudo add-apt-repository ppa:jonathonf/backports -y
#sudo apt update
#sudo apt install mutt -y
#sudo apt install libsasl2-modules-gssapi-heimdal -y



## rofi install

#sudo apt-get install rofi

#### rofi command
#rofi -modi drun -show drun
#rofi -combi-modi window,drun -show combi -color-window "#000000, #000000, #000000" -color-normal "#000000, #b3e774, #000000, #b3e774, #000000" -color-active "#000000, #b3e774, #000000, #b3e774, #000000" -color-urgent "#000000, #b3e774, #000000, #b3e774, #000000"
#rofi -modi window,drun -show combi -color-window "#000000, #000000, #000000" -color-normal "#000000, #b3e774, #000000, #b3e774, #000000" -color-active "#000000, #b3e774, #000000, #b3e774, #000000" -color-urgent "#000000, #b3e774, #000000, #b3e774, #000000"
#rofi -modi window,drun,ssh -show drun -color-window "#000000, #000000, #000000" -color-normal "#000000, #b3e774, #000000, #b3e774, #000000" -color-active "#000000, #b3e774, #000000, #b3e774, #000000" -color-urgent "#000000, #b3e774, #000000, #b3e774, #000000"
#rofi -combi-modi window,drun,run,ssh -modi combi -show combi -color-window "#000000, #000000, #000000" -color-normal "#000000, #b3e774, #000000, #b3e774, #000000" -color-active "#000000, #b3e774, #000000, #b3e774, #000000" -color-urgent "#000000, #b3e774, #000000, #b3e774, #000000"


######################


echo "\n\nInstallation finished..."
echo "\nPlease reboot the system!"
