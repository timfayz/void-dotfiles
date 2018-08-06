# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Start X session
if [[ $(tty) == /dev/tty1 ]]; then
	startx -- &> /tmp/log_xsession
fi
