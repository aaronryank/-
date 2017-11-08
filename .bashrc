if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

export rvm_silence_path_mismatch_check_flag=1

alias apt-get='sudo apt-get'
export PATH=$PATH:/usr/games:.

PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1="\n"

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local Yel='\[\e[0;33m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}[\$?]${RCol} ";      # Add red if exit code non 0
    fi

    PS1+="${Pur}aaronryank${RCol}@${BBlu}\w${Yel}"
    PS1+="$(__git_ps1 ' (%s)')"
    PS1+="${RCol}\n${Gre}bash${RCol}\\$ "
}

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -A'

alias :q="echo 'This is not vim ye daft idiot!' && sleep 2 && exit"
alias note='start notepad'

export PATH=$PATH:~/workspace/MinGW-64/mingw64/bin/

export PATH=$PATH:~/workspace/7-Zip/
export PATH=$PATH:~/workspace/cmder/bin/alias note='start notepad'
