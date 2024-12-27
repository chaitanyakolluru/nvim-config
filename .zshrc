source ~/.env.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then 
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::brew

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# Completion styling
zstyle ':completion:*' menu no

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
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

# From env.sh

## goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

export EDITOR=vim

# Aliases
alias gs='git status'
alias gl='git log --all --oneline --decorate --graph'
alias ga='git add -A'
alias gc='git commit'
alias gps='git push origin'
alias gpl='git pull'
alias gch='git checkout'
alias gb='git branch'

alias doc='~/Documents'
alias crp='~/Documents/Crossplane'
alias fnc='~/Documents/Crossplane/functions/'
alias tuna='~/Documents/tuna1'
alias dow='~/Downloads'

alias brew='arch -x86_64 /usr/local/homebrew/bin/brew'
alias brewARM='/opt/homebrew/bin/brew'
alias gg='gcloud'

alias kc='kubectl'
alias kb='kubebuilder'
alias ke='kubectl get events --sort-by=".metadata.creationTimestamp"'
alias kctx='kubectx'
alias xp='crossplane'
alias vim='nvim'
alias v='nvim'
alias vi='nvim'
alias f='fzf'
alias kx='kubectx'
alias earthly='arch -x86_64 /usr/local/homebrew/bin/earthly'

# alias `docker` to `podman` - this is nice to have when copy-pasting commands
alias docker=podman

#prefacing yarn with arch for m1 mac.
alias yarn='arch -x86_64 yarn'

# go test alias for coverage
alias gotc='go test -coverprofile cover.out ./... && go tool cover -html=cover.out'

# configure `kind` to use `podman` when managing local clusters
export KIND_EXPERIMENTAL_PROVIDER=podman

# configure the `DOCKER_HOST` variable to point to the podman socket
export DOCKER_HOST="unix://$(podman machine inspect | /usr/local/homebrew/bin/jq -r '.[0].ConnectionInfo.PodmanSocket.Path')"

export PATH=$PATH:/usr/local/homebrew/bin:/usr/local/go/bin:~/go/bin:~/nvim-macos/bin
export GOPATH=~/go
export GOPRIVATE='gitlab.com/heb-engineering/*'

## for zoxide
eval "$(zoxide init --cmd cd zsh)"
