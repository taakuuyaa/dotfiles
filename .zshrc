# Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
fpath=(/usr/local/share/zsh-completions $fpath)

# alias
## git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gc='git commit'
alias gl='git log'
## docker
alias d='docker'
alias dc='docker-compose'

alias ls='clear && ls -G'
alias ll='clear && ls -alF'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='pbcopy'
alias o='open'
alias s='ssh'
alias v='vim'
alias r='clear'

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'

## setting
setopt nonomatch
export PATH="/usr/local/opt/openssl/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# === cool-peco init ===
FPATH="$FPATH:$HOME/dotfiles/cool-peco"
autoload -Uz cool-peco
cool-peco
# ======================

bindkey '^r' cool-peco-history # ctrl+r
bindkey '^h' cool-peco-ssh
bindkey '^p' cool-peco-ps

alias ff=cool-peco-filename-search
alias gbb=cool-peco-git-checkout
alias gll=cool-peco-git-log
alias ta=cool-peco-tmux-session
alias cg=cool-peco-ghq
