# install Aseprite + dark theme
# https://github.com/aseprite/aseprite/blob/main/INSTALL.md

sudo apt install -y clang cmake g++ make ninja-build unzip libc++-dev libc++abi-dev libx11-dev libxcursor-dev libxi-dev libgl1-mesa-dev libfontconfig1-dev

# Install skia using this link:
# https://github.com/aseprite/skia/releases
mkdir -p ~/deps
cd ~/deps
wget https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-Linux-Release-x64-libc++.zip -O ~/deps/skia.zip
unzip skia.zip

mkdir -p ~/github
cd ~/github

git clone --recursive https://github.com/aseprite/aseprite.git

cd aseprite
git pull
git submodule update --init --recursive

mkdir -p build
cd build
export CC=clang
export CXX=clang++
cmake \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DCMAKE_CXX_FLAGS:STRING=-stdlib=libc++ \
  -DCMAKE_EXE_LINKER_FLAGS:STRING=-stdlib=libc++ \
  -DLAF_BACKEND=skia \
  -DSKIA_DIR=$HOME/deps/skia \
  -DSKIA_LIBRARY_DIR=$HOME/deps/skia/out/Release-x64 \
  -DSKIA_LIBRARY=$HOME/deps/skia/out/Release-x64/libskia.a \
  -G Ninja \
  ..
ninja aseprite

echo "DONE."
