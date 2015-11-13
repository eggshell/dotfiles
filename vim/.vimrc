"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Cullen Taylor
"       https://github.com/CullenTaylor
"
" Sections:
"    -> Colors
"    -> Spaces and Tabs
"    -> UI Config
"    -> Searching
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
syntax enable


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spaces and Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set expandtab
" Fixes backspace problems
" refer to http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"UI Config
set ruler
set cursorline
set number
set showcmd
set wildmenu
set colorcolumn=80
" filetype indent on
" filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch
set hlsearch
set showmatch
" turns off search highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sets fd combo to function like esc
set timeout timeoutlen=1000 ttimeoutlen=100
set <f13>=fd
imap <F13> <esc>
