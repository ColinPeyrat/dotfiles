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
Plugin 'lumiliet/vim-twig'

" language
Plugin 'pangloss/vim-javascript'

" interface
Plugin 'kien/ctrlp.vim'

" theme
Plugin 'chriskempson/base16-vim'

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

set termguicolors                   " use guifg/guibg instead of ctermfg/ctermbg in terminal
let g:base16colorspace=256
set background=dark
color base16-tomorrow-night

" Text management

filetype plugin indent on

set cursorline " highlight current line
" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 2
set shiftround
" start scrolling 3 lines before edge of viewport
set scrolloff=3
" No line-wrapping
set nowrap
" No extra spaces when joining lines
set nojoinspaces
" Interpret numbers with leading zeroes as decimal, not octal
set nrformats-=octal
" Auto-format comments
set formatoptions+=jroqn1

" Folding

set foldmethod=indent               " not as cool as syntax, but faster


" Search

" Find the next match as we type the search
set incsearch
" Highlight searches by default
set hlsearch
" Ignore case when searching...
set ignorecase
" ...unless we type a capital
set smartcase

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
" don't bother updating screen during macro playback
set lazyredraw                        


" CtrlP
let g:ctrlp_custom_ignore = {
      \ 'dir':'\v[\/](node_modules|www|vendor)|(\.(git))$',
      \ 'file': '\v\.(DS_Store)$',
      \ }
let g:ctrlp_show_hidden = 1

" ALE config
let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \}

let g:ale_fix_on_save = 1

" prettier configuration
let g:ale_javascript_prettier_options = '--single-quote'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
" Hide YCM's preview window because of bug while expanding snippets
" waiting for this pull request to be merged 
" https://github.com/SirVer/ultisnips/pull/845
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

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

" Make 0 go to the first character rather than the beginning
" of the line.
nnoremap 0 ^
nnoremap ^ 0

" Map leader to ,
let mapleader=','

nnoremap <Leader>o :on<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <Leader><Space> :nohlsearch<cr>
