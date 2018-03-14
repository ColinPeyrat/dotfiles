" Leader mappings

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
nnoremap <silent> <Leader>r :call colinpe#mappings#leader#cycle_numbering()<CR>

nnoremap <Leader>o :on<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>

" Disable highlight when <Leader>n is pressed
map <silent> <Leader>n :nohlsearch<CR>
