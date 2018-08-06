# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\u@\h \W\$ '

# Alias staff
alias 1="sudo loadkeys us"
alias 2="sudo loadkeys ru"
alias ls='ls --color=auto'
alias ll='ls -la'
alias vi=$EDITOR
alias s='sudo -E'
alias _refresh='source ~/.bashrc'
alias _clip='xclip -selection clipboard'
alias _iclip='xclip -selection clipboard -target image/png'

# Set default editor
export EDITOR='nvim'
export VISUAL=$EDITOR

# Stop polluting .lesshst
export LESSHISTFILE=/dev/null

# Maximize CPU usage on `make`
export MAKEFLAGS=-j8

bind "set completion-ignore-case on"
# completion treat - and _ as equivalent
bind "set completion-map-case on"
# completion on first tab
bind "set show-all-if-ambiguous on"

# Append to the history file, don't overwrite it
shopt -s histappend

# Save multi-line commands as one command
shopt -s cmdhist

# Record each line as it gets issued
PROMPT_COMMAND='history -a'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Useful timestamp format
HISTTIMEFORMAT='%F %T '

# Dir navigation
shopt -s autocd
shopt -s dirspell
shopt -s cdspell
alias -- -='cd -'

# Base16 color scheme
source ~/.timfayz/base16-shell/scripts/base16-default-dark.sh
