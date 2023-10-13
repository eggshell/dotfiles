"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Cullen Taylor
"       https://gitlab.com/eggshell
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

if $COLORTERM == 'truecolor'
    set t_Co=256
endif

colorscheme molokai
syntax enable
set background=dark
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spaces and Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4
set softtabstop=4
set expandtab

" Fixes backspace problems
" refer to http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

" fixes tabbing for bash scripts
autocmd Filetype sh setlocal ts=4 sw=4 expandtab

" highlights 80+ char lines and trailing whitespace in red
highlight ExtraWhitespace ctermbg=red guibg=red
call matchadd('ExtraWhitespace', '\s\+$')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ruler
set cursorline
set number
set showcmd
set wildmenu
set colorcolumn=80
set visualbell


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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" refer to: https://github.com/VundleVim/Vundle.vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'google/vim-jsonnet'
Plugin 'hashivim/vim-terraform'

call vundle#end()            " required
filetype plugin indent on    " required
