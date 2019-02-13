# if not running interactively, don't do anything
[[ $- == *i* ]] || return

export HISTSIZE="1024"
export HISTFILE="~/.ksh_history"
export HISTEDIT="vim"
export HISTCONTROL="ignoredups:ignorespace"

export PATH="$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games"
export TERM="xterm"
export EDITOR="vim"
export PAGER="most"
export VISUAL="vim"
export BROWSER="firefox"
export LANG="en_US.UTF-8"

export GOROOT="$HOME/bin/go"
export GOPATH="$HOME/.go"

# prompt
export PS1="$ "

# set emacs editing mode
set -o emacs

umask 077

# no core files
ulimit -c 0

export GDK_USE_XFT=1
export QT_XFT=true

export NO_AT_BRIDGE=1