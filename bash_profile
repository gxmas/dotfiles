# echo "####   . B A S H _ P R O F I L E"

BASHRC=${HOME}/.bashrc
[ -x $BASHRC ] && source $BASHRC

export PATH=${HOME}/.local/bin:$PATH
export TERM=xterm-256color
export LESS=-sXFRM
