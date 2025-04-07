#!/bin/bash

echo "Installing Brew..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Brew packages..."

brew update
brew upgrade

# Install packages
brew install php
brew install nvm
brew install openssl
brew install composer
brew install git
brew install mysql
brew install pkg-config
brew install imagemagick
brew install redis
brew install mailpit
brew install yarn
brew install node
brew install gh
brew install starship
brew install bat
brew install zoxide
brew install fzf
brew install eza

# Start services
brew services start php
brew services start mysql
brew services start redis
brew services start mailpit

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/nvm.fish
fisher install jorgebucaran/nvm.fish
nvm install lts

pecl install redis
pecl install imagick

composer global require laravel/installer

composer global require laravel/valet
valet install
valet trust

# Cask
echo "Installing Brew Cask..."

brew tap nicoverbruggen/homebrew-cask
brew tap homebrew/cask
brew tap laradumps/app

sudo xcodebuild -license accept

brew install --cask google-chrome
brew install --cask slack
brew install --cask spotify
brew install --cask sublime-text
brew install --cask appcleaner
brew install --cask whatsapp
brew install --cask monitorcontrol
brew install --cask jetbrains-toolbox
brew install --cask notion
brew install --cask rectangle
brew install --cask warp
brew install --cask insomnia
brew install --cask arc
brew install --cask visual-studio-code
brew install --cask font-fira-code
brew install --cask font-fira-code-nerd-font
brew install --cask fanny
brew install --cask laradumps/app/laradumps
brew install --cask sequel-ace
brew install --cask termius
brew install --cask phpmon

mkdir -p ~/codes/.valet && cd ~/codes/.valet && valet park

# Remove outdated versions from the cellar.
brew cleanup

echo "Success! Brew additional applications are installed."