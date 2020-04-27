#!/usr/bin/env zsh

###########################
# This script installs the dotfiles and runs all other system configuration scripts
###########################

export DOTDIR=$(PWD)

source $DOTDIR/lib_sh/echos.zsh
source $DOTDIR/lib_sh/requires.zsh

bot "Hi! I'm going to install tooling and tweak your system settings. Here I go..."

# 設定中
#source $DOTDIR/osx/index.zsh
source $DOTDIR/brew/index.zsh
source $DOTDIR/zsh/index.zsh


