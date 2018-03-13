if has('autocmd')
  augroup ColinpeAutocmds
    autocmd!

    autocmd VimResized * execute "normal! \<c-w>="

    " Make current window more obvious by turning off/adjusting some features in non-current
    " windows.
    if exists('+winhighlight')
      autocmd BufEnter,FocusGained,VimEnter,WinEnter * if colinpe#autocmds#should_colorcolumn() | set winhighlight= | endif
      autocmd FocusLost,WinLeave * if colinpe#autocmds#should_colorcolumn() | set winhighlight=CursorLineNr:LineNr,IncSearch:ColorColumn,Normal:ColorColumn,NormalNC:ColorColumn,SignColumn:ColorColumn | endif
    endif 
  augroup END
endif
