function ssh() {
	if [ "$1" = "nuc" ]; then
		/usr/bin/ssh $(pathtonuc)
	else
		/usr/bin/ssh "$@"
	fi
}

function sftp() {
	if [ "$1" = "nuc" ]; then
		/usr/bin/sftp $(pathtonuc)
	else
		/usr/bin/sftp "$@"
	fi
}

function wanip() {
	curl -s icanhazip.com
}

export TERM=xterm-256color

#regular aliases
alias ls="ls --color=auto"
alias rm="rm --one-file-system"

#lyx is derpy, so very derpy
export QT_STYLE_OVERRIDE="breeze"

RED="\[$(tput setaf 160)\]"
GREEN="\[$(tput setaf 76)\]"
#AQUA="\[\e[36;1m\]"
AQUA="\[$(tput setaf 117)\]"
WHITE="\[\e[37;1m\]"
RESET="\[\e[0m\]"

. .hashcolor

PROMPT_ERROR="${RED}\u$(get_string_color \H)@\H${WHITE}:\w${RESET}$ "
PROMPT_SUCCESS="${GREEN}\u$(get_string_color \H)@\H${WHITE}:\w${RESET}$ "

export PROMPT_COMMAND='if [ "$?" -eq 0 ]; then PS1=$PROMPT_SUCCESS; else PS1=$PROMPT_ERROR; fi'

#color ls
export LS_COLORS="di=33"
