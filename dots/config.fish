# Inicializar o Starship no Fish
starship init fish | source

set fish_greeting

# Adicionar diretórios ao PATH
set -Ua fish_user_paths "$HOME/bin"
set -Ua fish_user_paths "$HOME/usr/local/bin"
set -Ua fish_user_paths "$HOME/.composer/vendor/bin"
set -Ua fish_user_paths "$HOME/Library/Application Support/Herd/bin"

# Inicializar fzf e zoxide no Fish
fzf --fish | source
zoxide init fish | source

# Definir opções personalizadas para FZF
set -x FZF_CTRL_T_OPTS "
    --style full
    --walker-skip .git,node_modules,vendor
    --preview 'bat -n --color=always {}'
    --bind 'ctrl-/:change-preview-window(down|hidden|)'
"

source ~/.aliases
source ~/.functions