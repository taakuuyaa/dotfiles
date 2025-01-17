# homebrew
export PATH="/opt/homebrew/bin:$PATH"
# mise
eval "$(mise activate zsh)"

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
alias dc='docker compose'
alias tf='terraform'

alias ls='eza $eza_params'
alias ll='eza --all --header --long $eza_params'
alias tree='eza --tree $eza_params'

alias cat='bat'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='pbcopy'
alias o='open'
alias v='idea'
alias r='clear'

alias f=anyframe-widget-cdr
alias r=anyframe-widget-execute-history
alias b=anyframe-widget-checkout-git-branch
alias g=anyframe-widget-cd-ghq-repository
alias k=anyframe-widget-kil

## zsh
alias sz='source ~/.zshrc'
alias vz='v ~/.zshrc'

## zsh opt
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

# 開始・終了時刻を記録する
setopt extended_history
# 重複を記録しない
setopt hist_ignore_dups
# 重複の場合、古い履歴を削除する
setopt hist_ignore_all_dups
# historyを共有
setopt share_history
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 余分な空白は詰めて記録
setopt hist_reduce_blanks

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
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit light mollifier/anyframe

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

bindkey '^f' anyframe-widget-cdr
bindkey '^r' anyframe-widget-execute-history
bindkey '^b' anyframe-widget-checkout-git-branch
bindkey '^g' anyframe-widget-cd-ghq-repository
bindkey '^k' anyframe-widget-kill

autoload -Uz compinit && compinit
autoload bashcompinit && bashcompinit
complete -C '/opt/homebrew/bin/aws_completer' aws

extra_functions_file="$HOME/.extra_functions.sh"
if [ -f "$extra_functions_file" ]; then
    source "$extra_functions_file"
fi
