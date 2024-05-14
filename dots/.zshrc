export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

# lazy load nvm
# see: https://github.com/lukechilds/zsh-nvm#lazy-loading
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('pnpm', 'git')

# custom plugin can be found in zsh/custom/plugin
plugins=(git npm zsh-nvm zsh-autosuggestions zsh-syntax-highlighting)

# load zsh theme since its manually installed
# see https://github.com/sindresorhus/pure#manually
fpath+=$HOME/.zsh/pure

# rbenv
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh
