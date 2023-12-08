# Create a dir
mkdir -p ~/miniconda3
# Download installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
# Run installer
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
# Remove installer after installation
rm -rf ~/miniconda3/miniconda.sh

### INIT ###
# for zsh  #
# ~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
