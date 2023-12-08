# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install starship
curl -sS https://starship.rs/install.sh | sh

# + fonts to install (TODO)
# link: https://www.nerdfonts.com/font-downloads
