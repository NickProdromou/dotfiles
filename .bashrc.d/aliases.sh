#functions
alias profile=it2prof
alias editbash=edit-bash
alias edititermocil=edit-itermocil
alias short=toggle-prompt
alias takecare=tiny_care

# git Aliases
alias co='git checkout'
alias cob='git checkout -b'
alias gb='git branch'
alias gbd='git branch -D'
alias gbm='git branch -m'
alias gpr='git pull --rebase'
alias gs='git status'
alias gd='git diff'
alias grm='git rebase master'
alias gpsh='git push'
alias gcm='git commit -m'
alias gcane='git commit --amend --no-edit'
alias gph='git push -u  origin HEAD'
alias tree='git log --graph --decorate --oneline'
alias upbase='co master && gpr && co - && grm'
alias merkem='git branch | grep -v "master" | xargs git branch -D'
alias killtagremote=delete_remote_tag
alias killtaglocal=delete_local_tag

# other Aliases
alias vs='code-insiders'
alias vsa='code-insiders --add'
alias jump='itermocil'
alias mamp='open ~/../../Applications/MAMP/MAMP.app/'
alias startsql='~/../../Applications/MAMP/Library/bin/mysql'
alias rebash='. ~/.bash_profile'

#package aliases
alias pversion='get_package_property "version"'
alias pname='get_package_property "name"'
alias pinfo='npm info "$p_name" versions --json'
alias removedrafts=unpublish_drafts
alias publishdraft=publish_tagged_draft
alias check_linked_packages='npm-list-linked'
alias list-global-linked='npm ls -g --depth=0 --link=true'
alias list-local-linked='npm ls --depth=0 --link=true'