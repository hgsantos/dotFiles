# Inicializar o Starship no Fish
starship init fish | source

set fish_greeting

# Adicionar diretórios ao PATH
set -Ux PATH $HOME/bin /usr/local/bin $PATH
set -Ux PATH $PATH $HOME/.composer/vendor/bin

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