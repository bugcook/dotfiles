set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Theme
Plugin 'altercation/vim-colors-solarized'

" CtrlP
Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'a'
set wildignore+=*/cache/*,*/tmp/*,*\\tmp\\**,*/vendor/*
set wildignore+=*.png,*.jpg,*.jpeg,*.gif
set wildignore+=*.swp,*.zip,*.exe,*.gz,*.o
set wildignore+=mage--*,sess_*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'build\|node_modules\|third_party'
map <C-N> <ESC>:CtrlPBuffer<CR>

" Alternative for powerline
Plugin 'bling/vim-airline'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 0
set laststatus=2

" Objective C
Plugin 'b4winckler/vim-objc'

" Json
" Plugin 'elzr/vim-json'

" Html5 indent and syntax
Plugin 'othree/html5.vim'

" Better css indent
Plugin 'JulesWang/css.vim'

" For javascript
Plugin 'pangloss/vim-javascript'
" Plugin 'jelera/vim-javascript-syntax'

" Marketdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=2 shiftwidth=2 expandtab

" set list
" set listchars=tab:>-

if has('gui_running')
  set background=dark
  colorscheme solarized
  let g:solarized_bold=0
  set lines=40 columns=80
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  set guifont=M+\ 1mn\ light:h12
else
  colorscheme grb256
endif
set cursorcolumn
set cursorline

" Remove trailing spaces on save
" autocmd BufWritePre * :%s/\s\+$//e

" Wrap lines
set nowrap

" Open syntax
syntax on

set showcmd

au BufNewFile,BufRead *.tpl :set ft=html
au BufNewFile,BufRead *.pbxproj :set ft=javascript

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" Escape issue
set timeoutlen=1000 ttimeoutlen=0

" Limit line to 80
set colorcolumn=81
let &colorcolumn=join(range(81,999),",")
