let mapleader="\<Space>"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" completion
Plugin 'shougo/deoplete.nvim'
Plugin 'carlitux/deoplete-ternjs'
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
Plugin 'tikhomirov/vim-glsl'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'

" interface
Plugin 'ctrlpvim/ctrlp.vim'

" theme
Plugin 'chriskempson/base16-vim'

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

" Settings

set autoindent " maintain indent of current line
set backspace=indent,start,eol        " allow unrestricted backspacing in insert mode
set cursorline " highlight current line
set showmatch " Show matching parens, brackets, etc.

" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set shiftround " Round indent to nearest multiple of 2
set scrolloff=3 " start scrolling 3 lines before edge of viewport
set nowrap " No line-wrapping
set nojoinspaces " No extra spaces when joining lines
set nrformats-=octal " Interpret numbers with leading zeroes as decimal, not octal
set formatoptions+=jroqn1 " Auto-format comments


" filebrowser
let g:netrw_banner=0 " disable_banner in filebrowser


" Folding
set foldmethod=indent               " not as cool as syntax, but faster
set foldlevelstart=99               " start unfolded



set incsearch " Find the next match as we type the search
set hlsearch " Highlight searches by default
set ignorecase " Ignore case when searching...
set smartcase " ...unless we type a capital

" Splits
set splitbelow
set splitright

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set laststatus=2 " Show status line
set showmode " Show what mode you’re currently in
set showcmd " Show what commands you’re typing
set modeline " Allow modelines
set ruler " Show current line and column position in file
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%) " Customise our current location information
set title " Show file title in terminal tab
" Absolute numbers on the current line (hybrid numbering)
set number
set relativenumber
set lazyredraw " don't bother updating screen during macro playback


" CtrlP
let g:ctrlp_custom_ignore = {
      \ 'dir':'\v[\/](node_modules|www|vendor)|(\.(git))$',
      \ 'file': '\v\.(DS_Store)$',
      \ }
let g:ctrlp_show_hidden = 1

" ALE config
let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'json': ['prettier'],
      \   'scss': ['prettier'],
      \}

let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'

" prettier configuration
let g:ale_javascript_prettier_options = '--single-quote'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" UltiSnips
let g:UltiSnipsSnippetsDir = "~/.dotfiles/.vim/UltiSnips/"
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit="vertical"
" Prevent UltiSnips from removing our carefully-crafted mappings.
let g:UltiSnipsMappingsToIgnore = ['autocomplete']

" Emmet
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_leader_key='<C-z>'
let g:user_emmet_install_global = 0
autocmd FileType html,html.twig,css,scss EmmetInstall

" Disable arrow keys (hardcore)
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>

nnoremap <Up>    <Nop>
nnoremap <Down>  <Nop>
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>

" Make 0 go to the first character rather than the beginning
" of the line.
nnoremap 0 ^
nnoremap ^ 0

" Avoid suspending vim with emmet
nnoremap <C-z> <nop>
