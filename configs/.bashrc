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

#256 color mode
export TERM=xterm-256color

#regular aliases
alias ls="ls --color=auto"
alias rm="rm --one-file-system"

RED="\[$(tput setaf 160)\]"
GREEN="\[$(tput setaf 76)\]"
#AQUA="\[\e[36;1m\]"
AQUA="\[$(tput setaf 117)\]"
WHITE="\[\e[37;1m\]"
RESET="\[\e[0m\]"

PROMPT_ERROR="${RED}\u${AQUA}@\H${WHITE}:\w${RESET}$ "
PROMPT_SUCCESS="${GREEN}\u${AQUA}@\H${WHITE}:\w${RESET}$ "

export PROMPT_COMMAND='if [ $? = 0 ]; then PS1=$PROMPT_SUCCESS; else PS1=$PROMPT_ERROR; fi'

#color ls
export LS_COLORS="di=33"

#safety stuff
#shell warns upon trying to expand unset parameters
set -u
#pipe fails if one of the commands return non-zero error code
set -o pipefail
