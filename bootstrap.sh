sudo apt install -y i3 aerc \ # aerc - mail client
		    arandr feh mpv gimp \ # feh - image viewer ; arandr = for multiple screen setup
		    calc imagemagick dunst \ # dunst - notifications
		    wget maim scrot xclip pulseaudio-utils \ # maim - for screenshots
		    brightnessctl kitty dmenu nitrogen \ # nitrogen - wallpaper on background
		    polybar vlc qbittorrent libreoffice texstudio \
		    zsh ranger rofi udiskie nm-tray zathura

# install rofi themes
mkdir -p ~/github
cd ~/github

git clone https://github.com/figo711/custom-rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

# install maxfetch
wget -qO - https://raw.githubusercontent.com/jobcmax/maxfetch/main/install.sh | sh

maxfetch
