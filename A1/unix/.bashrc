        # Specify that ^D won't log you out.
set -o ignoreeof

        # don't let redirection clobber a file
set -o noclobber

        # make vi the command-line editor
        # comment out to use emacs mode (the default)
set -o vi

        # Uncomment to deny `talk' and `write' requests
# mesg n

nc="$(tput colors)"
if (( nc >= 8 )) ; then
        alias ls="ls --color=auto"
fi

## VARIABLES
        # set prompt, though maybe already done in /etc/bashrc
        #               see man or info pages for special characters (\u, etc.)
export PS1="\u@\h \W> "

        # things you don't want stored in your history list (consecutive
        # duplicates, ls, bg, fg, exit)
export HISTIGNORE="&:l:[bf]g:exit"

PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin/X11:/Library/Tex/texbin:.
export PATH

alias cls='clear'
alias gh='gv'
alias bc='bc -l'
alias cp='cp -i'
alias d='dirs'
alias f='finger'
alias h='history'
alias j='jobs'
alias l='ls -l'
alias ls='ls -F'
alias m='make'
alias mv='mv -i'
alias p='less'
alias rm='rm -i'
