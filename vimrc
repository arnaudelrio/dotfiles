" Set compativility to Vim only
set nocompatible

" Automatically wrap text that extends beyond the screen length
set wrap

" Show line numbers relatively
set number relativenumber

" Status bar
set laststatus=2

" Tab indent with 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Remove markdown error highlighting
autocmd FileType markdown syntax clear markdownError
