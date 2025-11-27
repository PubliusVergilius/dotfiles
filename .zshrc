# Aliases
alias lzd='lazydocker'
alias lzg="lazygit"
alias dck="docker"
alias lvim="~/.local/bin/lvim"

# Functons
fo() {
  fd --type f --exclude '.*' --exclude node_modules --exclude .git | fzf | xargs -r "$1"
}


tnv() {
  local session="${1:-dev}"
  shift

  # If calling from inside tmux, run nvim directly
  if [ -n "$TMUX" ]; then
    nvim "$@"
    return
  fi

  # Create session if it doesn't exist; start nvim with the remaining args
  if tmux has-session -t "$session" 2>/dev/null; then
    tmux attach -t "$session"
  else
    tmux new -s "$session" "nvim $*"
  fi
}


# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"

# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"

# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"

COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git vi-mode tmux docker docker-compose)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$PATH:/usr/sbin
# export PATH="$PATH:$(go en GOPATH)/bin"

# bun completions
[ -s "/home/vini/.bun/_bun" ] && source "/home/vini/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Go environment variables
export GOPATH=$HOME/go # Or wherever your GOPATH actually is
export PATH=$PATH:$GOPATH/bin

# FZF integration
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND="fd --type f --exclude '.*' --exclude node_modules --exclude .git"

# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

