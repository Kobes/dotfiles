call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'noahfrederick/vim-noctu'
Plug 'tomtom/tcomment_vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-eunuch'
Plug 'benmills/vimux'

Plug 'w0ng/vim-hybrid'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Clojure
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'losingkeys/vim-niji'

call plug#end()

set nocompatible
set backupcopy=yes
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
autocmd VimResized * wincmd =
let g:ale_sign_column_always = 1

let mapleader = ","
map <leader>w :w<enter>
map <leader>q :q<enter>

map <leader>t :FZF<enter>
nmap <silent> <Leader>/ :noh<CR>

" Map tcomment plugin
map <leader>d gcc
vmap <leader>d gc

" Map vimux
map <silent> <leader>r :call RunSpec()<CR>
" nmap <silent> <CR> :call RunSpec()<CR>
" autocmd CmdwinEnter * nunmap <silent> <CR>
map <silent> <leader>vq :call VimuxCloseRunner()<CR>

function! RunSpec()
  if match(bufname("%"), "_spec.rb$") != -1
    let s:current_spec = bufname("%") . ":" . line(".")
  endif
  call VimuxRunCommand("clear; rspec " . s:current_spec)
endfunction

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
" set t_Co=16
set background=dark
" colorscheme noctu
" highlight VertSplit ctermfg=8
" highlight StatusLine ctermbg=7 ctermfg=0
" highlight StatusLineNC ctermbg=8 ctermfg=7
" highlight Visual ctermbg=8 ctermfg=15

let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid

" Access system clipboard
set clipboard=unnamed

" Open splits to the bottom/right
set splitbelow
set splitright

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
map <leader>s :%s/\s\+$//g<CR>
