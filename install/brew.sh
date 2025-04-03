#!/bin/bash

echo "Installing Brew..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"

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
brew install imagemagick
pecl install imagick
brew install redis
brew install mailpit
brew install yarn
brew install herd
brew install gh
brew install starship
brew install bat
brew install zoxide
brew install fzf
brew install eza

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish
fisher install jorgebucaran/nvm.fish
nvm install lts
composer global require laravel/installer

# Start services
brew services start php
brew services start mysql
brew services start redis
brew services start mailpit

# Cask
echo "Installing Brew Cask..."

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

# Remove outdated versions from the cellar.
brew cleanup

echo "Success! Brew additional applications are installed."