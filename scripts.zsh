#!/bin/zsh

cd

brew tap sambadevi/powerlevel9k
brew install powerlevel9k zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions .oh-my-zsh/custom/plugins/zsh-autosuggestions
curl --create-dirs https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf -Lo ~/Library/Fonts/Meslo_LG_M_Regular_Powerline.ttf
