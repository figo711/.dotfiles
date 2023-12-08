# install makedeb
bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"

# install pipe-viewer
mkdir -p ~/github
cd ~/github

git clone 'https://mpr.makedeb.org/pipe-viewer'
cd pipe-viewer/
makedeb -si
