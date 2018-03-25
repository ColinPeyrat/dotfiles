let mapleader="\<Space>"

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Loads all the plugins
let s:bundles = $HOME . '/.vim/bundles.vim'
if filereadable(s:bundles)
  execute 'source ' . s:bundles
endif

call vundle#end()


" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8
language en_US

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on


" Colors
set termguicolors " use guifg/guibg instead of ctermfg/ctermbg in terminal
let g:base16colorspace=256
set background=dark
color base16-tomorrow-night
highlight Comment gui=italic
highlight Comment cterm=italic
