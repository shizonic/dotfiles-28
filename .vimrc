let loaded_matchparen = 1

syntax enable
filetype indent on

set laststatus=2 
set showtabline=2 
set noshowmode
set t_Co=256
set backspace=2
set number
set tabstop=4
set softtabstop=4
set expandtab
set nobackup
set showcmd
set cursorline
set wildmenu
set lazyredraw
set incsearch
set hlsearch

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
	\ if v:insertmode == 'i' | 
	\   silent execute '!echo -ne "\e[6 q"' | redraw! |
	\ elseif v:insertmode == 'r' |
	\   silent execute '!echo -ne "\e[4 q"' | redraw! |
	\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
