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
Plug 'guns/vim-clojure-static'
Plug 'losingkeys/vim-niji'

Plug 'slim-template/vim-slim'

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

augroup resizes
  autocmd!
  autocmd VimResized * wincmd =
augroup END

let g:ale_sign_column_always = 1

let mapleader = ","
map <leader>w :w<enter>
map <leader>q :q<enter>

map <leader>t :FZF<enter>
nmap <silent> <Leader>/ :noh<CR>

" Map tcomment plugin
map <leader>d gcc
vmap <leader>d gc

" Map reload vimrc
map <leader>vi :source ~/.vimrc<CR>

" Map vimux
map <silent> <leader>rr :call RunSpec()<CR>
" nmap <silent> <CR> :call RunSpec()<CR>
" autocmd CmdwinEnter * nunmap <silent> <CR>
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

" Clojure
function! VimuxSlime(...)
  let l:cmd = a:0 == 1 ? a:1 : @v

  call VimuxStartRepl()
  call VimuxRunCommand(l:cmd)
endfunction

function! VimuxStartRepl()
  if !exists("g:VimuxRunnerIndex") || _VimuxHasRunner(g:VimuxRunnerIndex) == -1
    call VimuxOpenRunner()
  endif

  call _VimuxUnzoomVim()

  let l:parent_pid = substitute(_VimuxTmux("display-message -p -t ".g:VimuxRunnerIndex." '#{pane_pid}'"), '\n\+$', '', '')
  let l:child_pid = substitute(system("pgrep -P ".l:parent_pid), '\n\+$', '', '')
  let l:running_command = split(system("ps -p ".l:child_pid." -o command="), "/")[-1]

  let l:repl_command = _VimuxReplCommand()

  if substitute(l:running_command, '\n\+$', '', '') == l:repl_command
    return
  endif

  call VimuxRunCommand(l:repl_command)
endfunction

function! VimuxZoomVim()
  call _VimuxTmux("resize-pane -Z")
endfunction

function! VimuxZoomRunner2()
  call _VimuxUnzoomVim()
  call VimuxZoomRunner()
endfunction

function! _VimuxReplCommand()
  let l:commandFile = ".repl-command"
  if filereadable(l:commandFile)
    return readfile(l:commandFile)[0]
  else
    return "lein repl"
  endif
endfunction

function! _VimuxUnzoomVim()
  if exists("g:VimuxRunnerIndex")
    call _VimuxTmux("select-pane -t ".g:VimuxRunnerIndex)
    call _VimuxTmux("last-pane")
  endif
endfunction

function! VimuxOpenNamespace()
  let l:cmd = "(in-ns '"._GetNamespace().")"
  call VimuxSlime(l:cmd)
endfunction

function! _GetNamespace()
  let l:fileLength = line("$")
  let l:nr = 1

  while l:nr <= l:fileLength
    let l:line = getline(l:nr)
    let l:match = matchlist(l:line, '\v\s*\(s*ns\s+(\S+)\s*')
    if !empty(l:match)
      return l:match[1]
    endif
    let l:nr += 1
  endwhile
endfunction

augroup clojure
  autocmd!

  autocmd FileType clojure nmap <silent> <Leader>rs :call VimuxStartRepl()<CR>
  autocmd FileType clojure nmap <silent> <leader>rz :call VimuxZoomRunner2()<CR>
  autocmd FileType clojure nmap <silent> <Leader>rv :call VimuxZoomVim()<CR>
  autocmd FileType clojure nmap <silent> <leader>rq :call VimuxCloseRunner()<CR>

  autocmd FileType clojure vmap <silent> <Leader>rl "vy :call VimuxSlime()<CR>
  autocmd FileType clojure nmap <silent> <Leader>rl va(<Leader>rl<CR>
  autocmd FileType clojure nmap <silent> <Leader>ro vap<Leader>rl<CR>
  autocmd FileType clojure nmap <silent> <Leader>rn :call VimuxOpenNamespace()<CR>
augroup END
