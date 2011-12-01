call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Include user's local pre .vimrc config
if filereadable(expand("~/.vimrc.pre"))
  source ~/.vimrc.pre
endif

set nocompatible

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"load the plugin and indent settings for the detected filetype
filetype plugin indent on 

"default color scheme
color desert

"Show (partial) command in the status line
set showcmd

"latex suite
set grepprg=grep\ -nH\$*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat="pdf"
let g:Tex_ViewRule_pdf="Preview"
let g:Tex_MultipleCompileFormats="dvi,pdf"

