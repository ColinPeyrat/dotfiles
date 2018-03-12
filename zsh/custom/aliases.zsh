#
# Command aliases
#

alias v=vim

if command -v nvim &> /dev/null; then
  alias vim=nvim # Use `\vim` or `command vim` to get the real vim.
fi

