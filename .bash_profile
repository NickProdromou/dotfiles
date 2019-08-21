export BASH_DIR=".bashrc.d"

source ~/$BASH_DIR/.env.sh
source ~/$BASH_DIR/go_path.sh
source ~/$BASH_DIR/nvm_init.sh
source ~/$BASH_DIR/parse_git_branch.sh
source ~/$BASH_DIR/shell_prompt.sh
source ~/$BASH_DIR/iterm2-functions.sh
source ~/$BASH_DIR/git_bash_completion.sh
source ~/$BASH_DIR/itermocil-setup.sh
source ~/$BASH_DIR/npm_functions.sh
source ~/$BASH_DIR/ttc_setup.sh
source ~/$BASH_DIR/edit_shortcuts.sh
source ~/$BASH_DIR/git_functions.sh
source ~/$BASH_DIR/aliases.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

