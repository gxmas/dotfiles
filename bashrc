[ -n "$BASHRC_DBG" ] && echo "####   . B A S H R C"

##  Utility functions
__is_loginshell () { (( SHLVL == 1 )); }
__do_ifexec () { [ -x "$1" ] && eval ${@:2}; }
__do_ifread () { [ -r "$1" ] && eval ${@:2}; }

##  Execute config scripts
for script in ${BASHRC_PATH:-$HOME/.bashrc.d}/*
do
    rpath=$(realpath $script)
    [ -d $rpath ] && continue
    __do_ifexec $script source $script
done

##  Setup shell prompt
if type -t __git_ps1 2>&1 >/dev/null
then
    export PS1='$(__git_ps1 " (%s)") \$ '
else
    export PS1='\$ '
fi
