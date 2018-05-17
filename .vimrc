set nocompatible
filetype off

" set the runtime path to include and initialize Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'steffanc/cscopemaps'

filetype plugin on
filetype plugin indent on

colorscheme torte
syntax enable

set nu

set tabstop=4
set softtabstop=4

set autoindent
set shiftwidth=4
set cindent
set smartindent

set showcmd

set incsearch
set hlsearch
set nowrapscan
set showmatch

set history=100

set ruler
set foldmethod=syntax

nnoremap <F2> :set nonumber!<CR>
nnoremap <silent> <F12> :TlistToggle<CR>

" cscope
set cscopetag
set csto=0

if filereadable("cscope.out")
	cs add cscope.out   
elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
endif
set cscopeverbose
