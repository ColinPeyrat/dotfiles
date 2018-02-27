set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" completion
Plugin 'valloric/youcompleteme'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'

" integration
Plugin 'w0rp/ale'
Plugin 'tpope/vim-commentary'

" language
Plugin 'pangloss/vim-javascript'

" interface
Plugin 'kien/ctrlp.vim'

" theme
Plugin 'arcticicestudio/nord-vim'


call vundle#end()


" Setup

" Use UTF-8 by default
set encoding=utf-8
set fileencoding=utf-8


" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" Show matching parens, brackets, etc.
set showmatch
" Nord colour scheme...
colorscheme nord


" Text management

filetype plugin indent on
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" No line-wrapping
set nowrap
" Underscores denote words
set iskeyword-=_
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats-=octal
" Auto-format comments
set formatoptions+=jroqn1
set clipboard=unnamed


" Splits
set splitbelow
set splitright
" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Customise our current location information
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)
" Show file title in terminal tab
set title
" Absolute numbers on the current line (hybrid numbering)
set number

" netwr
" let g:netrw_rmf_cmd = 'ssh HOSTNAME rm -rf'
" let g:netrw_liststyle = 3

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|www\|dist'

" Airline
let g:airline_theme="solarized"
let g:airline_solarized_bg='dark'
let g:airline_detect_spell=0

" ALE config
let g:ale_fixers = {
\   'javascript': ['prettier'],
\}

let g:ale_fix_on_save = 1

" prettier configuration
let g:ale_javascript_prettier_options = '--single-quote'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1

" UltiSnips
let g:UltiSnipsSnippetsDir = "~/.dotfiles/vim/UltiSnips/"
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit="vertical"


" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall
autocmd FileType html,css,scss imap <TAB> <plug>(emmet-expand-abbr)

" Key mappings

" Map leader to ,
let mapleader=','

" Disable arrow keys (hardcore)
map  <Up>    <Nop>
imap <Up>    <Nop>
map  <Down>  <Nop>
imap <Down>  <Nop>
map  <Left>  <Nop>
imap <Left>  <Nop>
map  <Right> <Nop>
imap <Right> <Nop>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>

noremap <leader>c "_c 
noremap <leader>d "_d
