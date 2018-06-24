#!/bin/bash
# https://subicura.com/2017/11/22/mac-os-development-environment-setup.html

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-completions
chsh -s `which zsh`

# powerlevel9k theme
# add ZSH_THEME="powerlevel9k/powerlevel9k"
# change powerline fonts in iTerm2 (D2 Coding 1.3)
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# zsh-syntax-highlighting zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# add into ~/.zshrc file
# plugins=(
#   git
#   zsh-syntax-highlighting
#   zsh-autosuggestions
# )

brew install fzf fasd tree jq wget
$(brew --prefix)/opt/fzf/install

# install pyenv
brew install pyenv pyenv-virtualenv
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
source ~/.zshrc