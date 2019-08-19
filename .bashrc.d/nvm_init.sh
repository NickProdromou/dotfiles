# This loads nvm
export NVM_DIR="/Users/nickpee/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

nvm alias default 8.9

# check directory for an .nvmrc file and execute it
enter_directory() {
	if [[ $PWD == $PREV_PWD ]]; then
		return
	fi

	PREV_PWD=$PWD
	[[ -f ".nvmrc" ]] && nvm use
}

export PROMPT_COMMAND=enter_directory