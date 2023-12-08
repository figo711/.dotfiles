sudo apt install -y pkg-config libuv1-dev libcairo2-dev libxcb1-dev \
		libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev \
		python3 python3-xcbgen xcb-proto libxcb-image0-dev \
		libxcb-ewmh-dev libxcb-icccm4-dev python3-sphinx \
		python3-packaging libxcb-cursor-dev libxcb-xrm-dev \
		libxcb-xkb-dev libpulse-dev libjsoncpp-dev \
		libmpdclient-dev libcurl4-openssl-dev libiw-dev \
		g++ git cmake cmake-data

mkdir -p ~/github
cd ~/github
wget https://github.com/polybar/polybar/releases/download/3.7.0/polybar-3.7.0.tar.gz

tar xvzf polybar-3.7.0.tar.gz
cd polybar-3.7.0

mkdir -p build
cd build
cmake -DWITH_LIBNL=OFF -DBUILD_CONFIG=OFF ..
make -j$(nproc)

sudo make install
