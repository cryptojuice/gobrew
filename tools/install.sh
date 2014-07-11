if [ -d "$HOME/.gobrew" ]
then
  echo -e "\033[0;33mYou already have gobrew installed.\033[0m You'll need to remove ~/.gobrew if you want to install"
  exit
fi

echo -e "\n\033[0;34mCloning gobrew...\033[0m"

hash git >/dev/null && /usr/bin/env git clone https://github.com/cryptojuice/gobrew.git ~/.gobrew || {
  echo "You have to install git first"
  exit
}

shell="$1"
if [ -z "$shell" ]; then
  shell="$(basename "$SHELL")"
fi

export_command='export PATH="$HOME/.gobrew/bin:$PATH"'
eval_command='eval "$(gobrew init -)"'

case "$shell" in
  bash )
    profile=bash_profile
    ;;
  zsh )
    profile=zshrc
    ;;
  ksh )
    profile=profile
    ;;
esac

echo "${export_command}" >> "$HOME/.$profile"
echo "${eval_command}" >> "$HOME/.$profile"

source "$HOME/.$profile"

echo "Gobrew is now installed."
echo "Run 'gobrew' command for information."
