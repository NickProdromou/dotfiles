# a shortcut to set the iterm2 profile

it2prof() {
	echo -e "\033]50;SetProfile=$1\a"
	if [ "$2" ]; then
		tabset "$2 $1"
		return
	fi
	tabset $1
}

function iterm2_print_user_vars() {
  iterm2_set_user_var nodeVersion $(node -v)
}