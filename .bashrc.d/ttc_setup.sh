#Sets up sets up tiny care terminal
if [ -f ~/$BASH_DIR/config/ttc-config.sh ]; then
	. ~/$BASH_DIR/config/.ttc-config.sh
fi

# init tiny care terminal with work repos or home repos
tiny_care() {
	case "$1" in
	'work')
		export TTC_REPOS='/Users/nickpee/bauer/'
		;;
	'home')
		export TTC_REPOS='/Users/nickpee/dev-playground/'
		;;
	*)
		export TTC_REPOS='/Users/nickpee/dev-playground/,/Users/nickpee/bauer/'
		;;
	esac
	tiny-care-terminal
}