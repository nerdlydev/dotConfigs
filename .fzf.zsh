# Setup fzf
# ---------
if [[ ! "$PATH" == */home/devx/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/devx/.fzf/bin"
fi

source <(fzf --zsh)
