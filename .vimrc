let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

augroup MyCmds
au!
autocmd VimEnter * silent !echo -ne &t_EI
augroup END

set nocompatible
filetype off
filetype plugin indent on
syntax on
set cursorline
set number
set ruler
set visualbell
set encoding=utf-8
set modelines=0
set colorcolumn=80
set wrap
set autoindent
set smartindent
set tabstop=2 shiftwidth=2 expandtab
set wildmenu
set wildmode=list:longest
set hidden
set ttimeout
set ttimeoutlen=1
set ttyfast
set laststatus=2
set showmode
set showcmd
colorscheme evening
