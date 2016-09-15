# echo "####"                            
# echo "####   . B A S H _ P R O F I L E"
# echo "####"                            

BASHRC=${HOME}/.bashrc
[ -x $BASHRC ] && source $BASHRC

export PATH=${HOME}/.local/bin:$PATH
export LESS=-sXFRM
