let g:ColinpeColorColumnBlacklist = []

function! colinpe#autocmds#should_colorcolumn() abort
  return index(g:ColinpeColorColumnBlacklist, &filetype) == -1
endfunction
