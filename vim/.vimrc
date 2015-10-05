" Colors
colorscheme molokai
syntax enable

" Spaces and Tabs
set tabstop=4
set softtabstop=4
set expandtab
" Fixes backspace problems
" refer to http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

"UI Config
set ruler
set cursorline
set number
set showcmd
set wildmenu
set colorcolumn=80
" filetype indent on
" filetype plugin on

" Searching
set incsearch
set hlsearch
set showmatch
" turns off search highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>
