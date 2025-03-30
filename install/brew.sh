#!/bin/bash

echo "Installing Brew additional applications..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"

brew update
brew upgrade

# Install packages
brew install php
brew install nvm
nvm install --lts
brew install openssl
brew install composer
composer global require laravel/installer
brew install git
brew install mysql
brew install imagemagick
pecl install imagick
brew install redis
brew install mailpit
brew install yarn
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

# Cask
echo "Installing Cask..."

brew tap homebrew/cask
brew tap laradumps/app

sudo xcodebuild -license accept

brew install --cask herd
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