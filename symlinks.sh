ln -sf ~/.dotfiles/dots/.aliases ~/.aliases
ln -sf ~/.dotfiles/dots/.functions ~/.functions
ln -sf ~/.dotfiles/dots/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/dots/.gitignore ~/.gitignore_global
mkdir -p ~/.ssh && ln -sf ~/.dotfiles/ssh/config ~/.ssh/config
mkdir -p ~/.config && ln -sf ~/.dotfiles/dots/starship.toml ~/.config/starship.toml
mkdir -p ~/.config/fish && ln -sf ~/.dotfiles/dots/config.fish ~/.config/fish/config.fish
mkdir -p ~/.warp/themes && ln -sf ~/.dotfiles/programs/warp/carbom.yaml ~/.warp/themes/carbom.yaml
mkdir -p ~/Library/Application\ Support/Rectangle && ln -sf ~/.dotfiles/programs/rectangle/rectangle.json ~/Library/Application\ Support/Rectangle/RectangleConfig.json
mkdir -p ~/Library/Application\ Support/Code/User && ln -sf ~/.dotfiles/programs/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
mkdir -p ~/Library/Application\ Support/Code/User && ln -sf ~/.dotfiles/programs/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

echo "Symlinks criados com sucesso!"