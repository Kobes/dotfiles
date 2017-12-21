call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0ng/vim-hybrid'

" Clojure
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'losingkeys/vim-niji'

call plug#end()

set background=dark
colorscheme hybrid

let mapleader = ","
map <leader>w :w<enter>
map <leader>q :q<enter>

map <leader>t :FZF<enter>

" No swapfiles
set noswapfile
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set number

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

