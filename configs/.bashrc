function ssh() {
	if [ "$1" = "nuc" ]; then
		/usr/bin/ssh $(pathtonuc)
	else
		/usr/bin/ssh "$@"
	fi
}
