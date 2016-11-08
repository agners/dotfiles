#
# ~/.bashrc
#

# https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_SHOW_UNTRACKED_FILES=no
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi=vim
alias cp='cp -i'

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
export EDITOR="vim"
