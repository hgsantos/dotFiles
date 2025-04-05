#!/bin/bash

options=("Horizon" "Reverb" "Pail" "Vite dev"
)

# Seleção com fzf (multi-select com espaço)
selected=$(printf "%s\n" "${options[@]}" | fzf --multi --prompt="Selecionar serviços: " --header="Use espaço para marcar, Enter para confirmar")

if [[ -z "$selected" ]]; then
  echo "❌ Nenhum serviço selecionado."
  exit 1
fi

echo "🚀 Iniciando os serviços selecionados..."

# Rodar cada comando em uma nova janela do terminal
for service in $selected; do
  case $service in
    "Horizon")
      osascript -e 'tell application "Terminal" to do script "cd '$PWD' && php artisan horizon"' ;;
    "Reverb")
      osascript -e 'tell application "Terminal" to do script "cd '$PWD' && php artisan reverb:start"' ;;
    "Pail")
      osascript -e 'tell application "Terminal" to do script "cd '$PWD' && php artisan pail"' ;;
    "Vite dev")
      osascript -e 'tell application "Terminal" to do script "cd '$PWD' && yarn dev"' ;;
  esac
done
