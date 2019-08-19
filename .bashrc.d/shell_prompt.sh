# ENV VARIABLES
export PS1="👨🏻‍💻 nickpro 🖥  \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] 🔥 "

export USE_LONG_PROMPT=true

# fucntion to shorten prompt for smaller screens.

toggle-prompt() {
	if [ "$USE_LONG_PROMPT" = true ]; then
		export PS1="🖥   $(basename $(pwd))\033[32m\]\$(parse_git_branch)\[\033[00m\] "
		export USE_LONG_PROMPT=false
		return
	fi
	export USE_LONG_PROMPT=true
	export PS1="👨🏻‍💻 nickpro 🖥  \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] 🔥 "
	return
}
