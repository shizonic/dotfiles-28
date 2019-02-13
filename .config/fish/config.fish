set -gx fish_greeting ''

set -gx fish_prompt_pwd_dir_length 0

set -gx GOPATH $HOME/go
set -gx PATH $HOME/bin /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin
set -gx LANG en_US.UTF-8
set -gx VISUAL vim
set -gx EDITOR vim
set -gx PAGER most

# Silence warnings from Gtk applications about the accessibility bus.
set -gx NO_AT_BRIDGE 1

function fish_prompt
    printf '%s %s %s' (set_color magenta) (prompt_pwd) (set_color normal)
end

alias ls "exa"
alias rm "rm -i"
