source "/etc/profile"

LOGS=/tmp/zprofile.log

export GOPATH="$HOME/.go"

export PATH="$PATH:$HOME/.bin/:$GOPATH/bin"

export PANEL_FIFO="/tmp/panel-fifo"
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_SOCKET="/tmp/bspwm-socket"
export XDG_CONFIG_DIRS=/usr/etc/xdg:/etc/xdg
export GUI_EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export EXPLORER=/usr/bin/thunar
export TERMINAL=/usr/bin/urxvt
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PYTHON_PATH=/usr/bin/python

export PANEL_HEIGHT=25
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

if [ -z $DISPLAY ] && [ $XDG_VTNR -eq 1 ] 
then 
    exec startx &> $LOGS
fi
