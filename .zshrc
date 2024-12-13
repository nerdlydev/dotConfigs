# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load (Powerlevel10k)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Powerlevel10k instant prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

alias c='clear'


# List of available themes for reference.
# awesomepanda, cloud, robbyrussell, avit, cypher, darkblood, dpoggi, edvardm, fino, fletcherm, fwalch, gozilla, half-life, jnrowe, juanghurtado, mortalscumbag, muse, sonicradish

# Set list of themes to pick from when loading at random.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior.
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution timestamp.
# HIST_STAMPS="mm/dd/yyyy"

# Custom folder for oh-my-zsh (optional).
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins to load.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-substring-search
  z
)

# History settings.
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Source oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# User configuration.

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment.
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions.
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags.
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases.
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM setup.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Bun completions.
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Bun setup.
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Enable mouse support
set -g mouse on


# zed setup
export PATH=$PATH:~/.local/bin


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# eza setup



#alias ld='eza -lD'
#alias lf='eza -lf --color=always | grep -v /'
#alias lh='eza -dl .* --group-directories-first'
#alias ll='eza -al --group-directories-first'
#alias ls='eza -alf --color=always --sort=size | grep -v /'
#alias lt='eza -al --sort=modified'


eval "$(gh copilot alias -- zsh)"
. "/home/devx/.deno/env"
# bun completions
[ -s "/home/devx/.bun/_bun" ] && source "/home/devx/.bun/_bun"
