mkdir -p ~/figo-dl
cd ~/figo-dl

# PLUGINS
mkdir -p ~/.config/xplr/plugins
git clone https://github.com/prncss-xyz/icons.xplr ~/.config/xplr/plugins/icons
git clone https://github.com/sayanarijit/zentable.xplr ~/.config/xplr/plugins/zentable
git clone https://github.com/sayanarijit/tree-view.xplr ~/.config/xplr/plugins/tree-view

wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz

tar xzvf xplr-linux.tar.gz

sudo mv xplr /usr/local/bin/
