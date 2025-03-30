#!/bin/bash

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Configurando ambiente..."

# Executar scripts de configuração do macOS
"$DOTFILES_DIR/macos/macos.sh"

# Executar scripts de instalação
"$DOTFILES_DIR/install/brew.sh"

# Executar scripts de linkagem
"$DOTFILES_DIR/symlinks.sh"

# Add keys from keychain to ssh agent
ssh-add -A 2>/dev/null;

echo "Setup concluído!"