# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
export PATH="$HOME/.local/bin/:${PATH}"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export XAUTHORITY="$XDG_CACHE_HOME/X11/Xauthority"

export VISUAL=nvim
export EDITOR=nvim

export TERMINAL=st
export BROWSER=librewolf
export GTK_THEME=Adwaita:dark
export NNN_USE_EDITOR=1

export FIGNORE=".o:.d"

if shopt -q login_shell; then
	gentoo-pipewire-launcher &
	[[ -f ~/.bashrc ]] && source ~/.bashrc
	[[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]]
else
	exit 1 # Somehow this is a non-bash or non-login shell.
fi
