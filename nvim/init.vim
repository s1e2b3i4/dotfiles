set hlsearch    " highlight all search results
set ignorecase  " do case insensitive search 
set incsearch   " show incremental search results as you type
set number      " display line number

set tabstop=4       " The width of a TAB is set to 4. Still it is a \t. It is just that Vim will interpret it to be having a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'arcticicestudio/nord-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme nord " Nordtheme

" custom syntax-highlighting
au BufReadPost Dockerfile.* set syntax=dockerfile

command! -nargs=0 Sw w !sudo tee % > /dev/null

