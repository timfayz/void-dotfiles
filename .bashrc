# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias vi='vis'
alias 1="sudo loadkeys us"
alias 2="sudo loadkeys ru"
alias _clip='xclip -selection clipboard'
alias _iclip='xclip -selection clipboard -target image/png'
alias s='sudo -E'

export EDITOR='vis'
export LESSHISTFILE=/dev/null
export MAKEFLAGS=-j8
PS1='[\u@\h \W]\$ '
