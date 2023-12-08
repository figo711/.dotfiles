mkdir -p ~/figo-dl
cd ~/figo-dl

sudo apt-get install linux-headers-$(uname -r)

wget https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo add-apt-repository contrib
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-3

sudo apt-get install -y nvidia-kernel-open-dkms
sudo apt-get install -y cuda-drivers cuda

echo "DONE, need to sudo reboot..."
