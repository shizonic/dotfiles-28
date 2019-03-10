# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin/golang/go/bin"
export TERM=xterm
export GOPATH="$HOME/.go"
export GOROOT="$HOME/bin/golang/go"

umask 077

ulimit -S -c 0 # Don't want any coredumps

set -o notify # Tell me about background jobs right away

export EDITOR=nano
export PAGER=most
export MANPAGER=most
export VISUAL=vim
export BROWSER=firefox
export TZ='Europe/Berlin'
export GREP_COLOR='1;36'

export LANG=en_US.UTF-8

#export CLICOLOR=1
#export LSCOLORS=DxGxcxdxCxegedabagacad

export DOTFILES="~/dotfiles"

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Disable CTRL-S and CTRL-Q and control character echoing
[[ $- =~ i ]] && stty -ixoff -ixon; stty -ctlecho 

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups

shopt -s autocd

# correct cd typos
shopt -s cdspell

# no empty command completion
shopt -s no_empty_cmd_completion

# append to the history file, don't overwrite it
shopt -s histappend

# set size and length to infinite
HISTSIZE=
HISTFILESIZE=

# ignore this history entries
HISTIGNORE="ls:l:history"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features
if [ -f /usr/share/bash-completion/bash_completion ]; then
   . /usr/share/bash-completion/bash_completion
fi

# complete sudo
complete -cf sudo

export PS1="\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\[\033[01;31m\]\$\[\033[00m\] "
export PS2="\[\033[01;31m\] > \[\033[00m\]"

# aliases

# general stuff
alias ls='ls --color=auto'
alias l='ls -lAh'
alias rrc='source ~/.bashrc'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
alias du='du -h'
alias df='df -h'
alias free='free -m'
alias cp='cp -v'
alias mv='mv -v'
alias xkeymap='setxkbmap -layout de -variant nodeadkeys'
alias ctrlcaps='setxkbmap -option ctrl:nocaps'
alias sl=ls
alias beroot='sudo -i'
alias ping='ping -c 2'
alias mx='chmod u+x'

# git
alias gits='git status'
alias gitc='git commit -m'
alias gitp='git push origin master'
alias gitpu='git pull'

# dev stuff
alias irb='irb --simple-prompt'
alias p2='python2'
alias p3='python3'

# package management
alias apti='sudo apt install'
alias apts='aptitude search'
alias aptu='sudo apt update && sudo apt upgrade'
alias aptd='sudo apt update && sudo apt dist-upgrade'

# fun stuff
alias enter_matrix='echo -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done'

# server stuff
alias srv='ssh x@srv.irk.jp'
alias srv2='ssh x@srv2.irk.jp'
alias x240='ssh x@x240.irk.jp'

# functions
pubip() {
	echo "Public IP: `curl -s4 icanhazip.com`"
}

# Make a directory and move to it
md() {
    mkdir $1
    cd $1
}

pss() {
	ps ax | grep "$1" | grep -v "grep"
}

title() {
    printf "\\033]2;$1\\033\\\\"
}

# set title
title "Terminal"
