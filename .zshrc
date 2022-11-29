export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=custom

plugins=(
    aws
    docker
    docker-compose
    helm
    git
    git-auto-fetch
    golang
    kubectl
    npm
    nvm
    pip
    poetry
    pyenv
    pylint
    python
    yarn
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
)

source $ZSH/oh-my-zsh.sh
source /home/shvix/.zshrc_private

