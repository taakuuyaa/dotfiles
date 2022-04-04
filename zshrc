alias change_profile='(){echo -e "\033]1337;SetProfile=$1\a"}'

if [ "$(uname -m)" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/bin:$PATH"

  . /opt/homebrew/opt/asdf/libexec/asdf.sh

  # coreutils
  export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

  # arm64
  change_profile ARM
else
  eval "$(/usr/local/bin/brew shellenv)"

  export ASDF_DATA_DIR=~/.asdf_x86
  . /usr/local/opt/asdf/libexec/asdf.sh

  # coreutils
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

  # x86_64
  change_profile Intel
fi

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
alias ..='cd ..'
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

alias arm='arch -arm64e zsh'
alias amd='arch -x86_64 zsh'

## zsh
alias sz='source ~/.zshrc'
alias vz='vi ~/.zshrc'

## zsh opt
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

# 開始・終了時刻を記録する
setopt extended_history
# 重複を記録しない
setopt hist_ignore_dups
# historyを共有
setopt share_history
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# historyコマンドは履歴に登録しない
setopt hist_no_store

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
  command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
  command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
    print -P "%F{33} %F{34}Installation successful.%f%b" || \
    print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit light johnhamelink/env-zsh
zinit light scmbreeze/scm_breeze
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit light mollifier/anyframe

bindkey '^f' anyframe-widget-cdr
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
bindkey '^r' anyframe-widget-execute-history
bindkey '^b' anyframe-widget-checkout-git-branch
bindkey '^g' anyframe-widget-cd-ghq-repository
bindkey '^k' anyframe-widget-kill

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
complete -C '/opt/homebrew/bin/aws_completer' aws

# starship
eval "$(starship init zsh)"
# direnv
eval "$(direnv hook zsh)"
