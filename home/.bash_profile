# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
export PATH="$HOME/.local/bin/:${PATH}"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DOWNLOAD_DIR="$HOME"

export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export XAUTHORITY="$XDG_CACHE_HOME/X11/Xauthority"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

export VISUAL=nvim
export EDITOR=nvim

export TERMINAL=st
export BROWSER=librewolf
export GTK_THEME=Adwaita:dark
export QT_SCALE_FACTOR="1.5"

export NNN_USE_EDITOR=1
export NNN_FCOLORS=c1e2812e002169eec6d6abc4
export NNN_COLORS=5555

export FIGNORE=".o:.d"

export HISTFILE="$HOME/.local/share/bash_history"
export HISTSIZE=5000

if shopt -q login_shell; then
	[[ -f ~/.bashrc ]] && source ~/.bashrc
	[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]]
	gentoo-pipewire-launcher &
	transmission-daemon &
else
	exit 1 # Somehow this is a non-bash or non-login shell.
fi
