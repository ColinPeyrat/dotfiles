" Settings

set autoindent " maintain indent of current line
set backspace=indent,start,eol " allow unrestricted backspacing in insert mode
set cursorline " highlight current line
set showmatch " show matching parens, brackets, etc.

" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set shiftround " round indent to nearest multiple of 2
set scrolloff=3 " start scrolling 3 lines before edge of viewport
set nowrap " no line-wrapping
set iskeyword+=-
set nojoinspaces " no extra spaces when joining lines
set nrformats-=octal " interpret numbers with leading zeroes as decimal, not octal
set formatoptions+=j " remove comment leader when joining comment lines
set formatoptions+=n " smart auto-indenting inside numbered lists

set noswapfile " don't create root-owned files
set hidden " allows you to hide buffers with unsaved changes without being prompted

" Folding
set foldmethod=indent " not as cool as syntax, but faster
set foldlevelstart=99 " start unfolded

if exists('&inccommand')
  set inccommand=split " live preview of :s results
endif

set incsearch " find the next match as we type the search
set hlsearch " highlight searches by default
set ignorecase " ignore case when searching...
set smartcase " ...unless we type a capital


" Splits
set splitbelow
set splitright

set sidescrolloff=3 " same as scrolloff, but for columns
set smarttab " <tab>/<BS> indent/dedent in leading whitespace

set laststatus=2 " show status line
set showmode " show what mode you’re currently in
set showcmd " show what commands you’re typing
set modeline " allow modelines
set ruler " show current line and column position in file
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%) " customise our current location information

" Absolute numbers on the current line (hybrid numbering)
set number
set relativenumber
set lazyredraw " don't bother updating screen during macro playback


" filebrowser
let g:netrw_banner=0 " disable_banner in filebrowser

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

" Prevent tcomment from making a zillion mappings (we just want the operator).
let g:tcommentMapLeader1=''
let g:tcommentMapLeader2=''
let g:tcommentMapLeaderCommentAnyway=''
let g:tcommentTextObjectInlineComment=''

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
let g:user_emmet_settings = {
      \  "css": {
      \    "snippets": {
      \      "trsde": "transition-delay:${1};",
      \      "trf:t3": "transform: translate3d(${1});"
      \    }
      \  },
      \  "scss": {
      \    "snippets": {
      \      "bgc": "background-color:$${1};",
      \      "c": "color:$${1};",
      \      "fs": "font-style:${1};"
      \    }
      \  }
      \}

