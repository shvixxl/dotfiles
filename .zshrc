export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=custom

plugins=(
    aws
    docker
    git
    git-auto-fetch
    nvm 
    poetry
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

zstyle ':omz:plugins:nvm' lazy yes

source "$ZSH/oh-my-zsh.sh"

# Lazy loading of pyenv
function pyenv python python2 python3 pip pip2 pip3 {
    unfunction pyenv python python2 python3 pip pip2 pip3
    eval "$(pyenv init -)"
    "$0" "$@"
}

source "$HOME/.zshrc_private"

