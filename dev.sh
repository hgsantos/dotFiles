#!/bin/bash

# Prompt for service
ask() {
  read -r -p "Start $1? (y/N): " answer
  case "$answer" in
    [yY]|[yY][eE][sS]) return 0 ;;
    *) return 1 ;;
  esac
}

# Run command in a new Terminal.app tab
run_in_new_tab() {
  name="$1"
  cmd="$2"
  full_cmd="cd $PWD; clear; echo '▶️ Running $name...'; $cmd; exec $SHELL"

  osascript <<EOF
tell application "Terminal"
  activate
  tell application "System Events" to tell process "Terminal" to keystroke "t" using {command down}
  delay 0.3
  do script "$full_cmd" in front window
end tell
EOF
}

echo "⚙️  Laravel Dev Setup"
echo "----------------------"

if ask "Horizon"; then
  run_in_new_tab "Horizon" "php artisan horizon"
fi

if ask "Reverb"; then
  run_in_new_tab "Reverb" "php artisan reverb:start"
fi

if ask "Pail"; then
  run_in_new_tab "Pail" "php artisan pail"
fi

if ask "Yarn Dev"; then
  run_in_new_tab "Yarn Dev" "yarn dev"
fi

echo "✅ All selected services started in Terminal.app tabs."
