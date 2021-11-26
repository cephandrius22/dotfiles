set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'airblade/vim-gitgutter'

Plugin 'flazz/vim-colorschemes'


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


syntax on

if has('filetype')
  filetype indent plugin on
endif

set wildmenu

set showcmd

set hlsearch

set ignorecase
set smartcase

set autoindent

set nostartofline

set ruler

set confirm

if has('mouse')
  set mouse=a
endif

set cmdheight=2

set number
set noexpandtab
set tabstop=8
set shiftwidth=8


set tags=tags;/

if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
