mkdir -p ~/figo-dl
cd ~/figo-dl

wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb

sudo dpkg -i discord.deb
