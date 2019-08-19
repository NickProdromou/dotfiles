delete_remote_tag() {
	git push --delete "$1"
}

delete_local_tag() {
	git tag -d "$1"
}