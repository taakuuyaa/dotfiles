# Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
fpath=(/usr/local/share/zsh-completions $fpath)

# alias
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gc='git commit'
alias gl='git log'
alias d='docker'
alias dc='docker-compose'
alias ls='clear && exa'
alias ll='clear && ls -alF'
alias cat='bat'
alias fd='fd -H'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='pbcopy'
alias o='open'
alias s='ssh'
alias v='vim'
alias vi='vim'
alias r='clear'
alias tf='terraform'
alias vssh='vi ~/.ssh/config'

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'
alias ve='vi ~/.zshenv'

## zsh opt
# 履歴ファイルの保存先
HISTFILE=~/.zsh_history

# 重複を記録しない
setopt hist_ignore_dups
# historyを共有
setopt share_history
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# historyコマンドは履歴に登録しない
setopt hist_no_store

# === cool-peco init ===
FPATH="$FPATH:$HOME/dotfiles/zsh/cool-peco"
autoload -Uz cool-peco
cool-peco
# ======================
bindkey '^r' cool-peco-history
bindkey '^h' cool-peco-ssh
bindkey '^p' cool-peco-ps
bindkey '^f' cool-peco-ghq

alias ff=cool-peco-filename-search
alias gbb=cool-peco-git-checkout
alias gll=cool-peco-git-log
alias ta=cool-peco-tmux-session


source $HOME/.zshenv

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/Cellar/tfenv/2.0.0/versions/0.12.7/terraform terraform
complete -C '/usr/local/bin/aws_completer' aws
