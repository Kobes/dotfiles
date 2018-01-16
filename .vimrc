call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'tomtom/tcomment_vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-rails'

" Clojure
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'losingkeys/vim-niji'

call plug#end()

set nocompatible
set encoding=utf-8

" No swapfiles
set noswapfile
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set laststatus=2                  "Show statusbar
set number
set nowrap
set ttyfast
" set winwidth=90 "active window is at least this pixels wide
" autocmd WinEnter * wincmd =
" autocmd WinLeave * wincmd =
" autocmd VimResized * wincmd =
let g:ale_sign_column_always = 1

let mapleader = ","
map <leader>w :w<enter>
map <leader>q :q<enter>

map <leader>t :FZF<enter>
nmap <silent> <Leader>/ :noh<CR>

" Map tcomment plugin
map <leader>d gcc
vmap <leader>d gc

" Sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Syntax
syntax enable
filetype plugin indent on
set showmatch
set autoindent
set smartindent

" Autocomplete commands
set wildmenu
set wildmode=list:longest,full

" Tab options
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nosmarttab

" Search options
set hlsearch
set ignorecase

" Theming
set t_Co=16
set background=dark
colorscheme noctu
highlight VertSplit ctermfg=8
highlight StatusLine ctermbg=7 ctermfg=0
highlight StatusLineNC ctermbg=8 ctermfg=7
highlight Visual ctermbg=8 ctermfg=15

" Access system clipboard
set clipboard=unnamed

" Open splits to the bottom/right
set splitbelow
set splitright
