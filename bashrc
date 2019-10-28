# .bashrc

 

# Source global definitions

if [ -f /etc/bashrc ]; then

        . /etc/bashrc

fi

 

# Uncomment the following line if you don't like systemctl's auto-paging feature:

# export SYSTEMD_PAGER=

 

# User specific aliases and functions

 

parse_git_branch() {

     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \[\033[32m\]\W\[\033[36m\]\$(parse_git_branch)\[\033[00m\] $ "

shopt -s histappend

 

export HISTSIZE=20000

export HISTFILESIZE=20000

#export HISTTIMEFORMAT="%d/%m/%y %T "

MY_BASH_BLUE="\033[0;34m" #Blue

MY_BASH_GREEN="\033[0;33m" #Green

MY_BASH_NOCOLOR="\033[0m"

HISTTIMEFORMAT=`echo -e ${MY_BASH_BLUE}[%F ${MY_BASH_GREEN}%T] $MY_BASH_NOCOLOR `

 

alias diskspace="du -S | sort -n -r |more"

alias hs="history"
