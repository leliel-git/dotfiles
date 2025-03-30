# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
alias sudo="sudo "
alias vi="nvim"
alias ls="ls -XF --color=auto --group-directories-first"
alias li="ls -lAh"
alias ms="make start"
alias mas="make all start"
alias mc="make clean"
alias e="sudo emerge"
alias monerod="sudo monerod"
alias wallet="sudo monero-wallet-cli"
alias nnn="nnn -deHr"
alias sxiv="sxiv -rat"

source ~/.config/git-prompt.sh
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "(%s) ")'; PS1='\[\e[38;5;56;1m\]\w\[\e[0m\] \[\e[2;3m\]${PS1_CMD1}\[\e[0;38;5;129;1m\]>\[\e[0m\] '

shopt -s autocd

set -o vi
