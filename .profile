# $HOME/.profile

#Set our umask
umask 022

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/.bin:$(ruby -e 'puts Gem.user_dir')/bin"
export PANEL_FIFO="/tmp/panel-fifo"
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_SOCKET="/tmp/bspwm-socket"
export PANEL_HEIGHT=25
export XDG_CONFIG_DIRS=/usr/etc/xdg:/etc/xdg
export GUI_EDITOR=/usr/bin/gvim
export BROWSER=/usr/bin/firefox
export EXPLORER=/usr/bin/thunar
export TERMINAL=/usr/bin/urxvt
export QT_QPA_PLATFORMTHEME="qt5ct"
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PYTHON_PATH=/usr/bin/python

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -r /etc/bash.bashrc; then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH
