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

source $ZSH/oh-my-zsh.sh

source /home/shvix/.zshrc_private

eval "$(pyenv init -)"

