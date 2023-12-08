#!/bin/zsh
sudo apt install -y i3 aerc \
		    arandr feh mpv gimp \
		    calc imagemagick dunst \
		    wget maim scrot xclip pulseaudio-utils \
		    brightnessctl kitty dmenu nitrogen \
		    polybar vlc qbittorrent libreoffice texstudio \
		    zsh ranger rofi udiskie nm-tray zathura

# install rofi themes
mkdir -p ~/github
cd ~/github

if [ -d "$HOME/github/custom-rofi" ]; then
    echo "custom-rofi already exist."
else
    git clone https://github.com/figo711/custom-rofi.git
fi
cd custom-rofi
chmod +x setup.sh
./setup.sh

# install maxfetch
mkdir -p ~/figo-dl
cd ~/figo-dl
wget https://raw.githubusercontent.com/jobcmax/maxfetch/main/install.sh -O maxfetch_install.sh
chmod +x maxfetch_install.sh
./maxfetch_install.sh
./maxfetch

sudo mv maxfetch /usr/bin
