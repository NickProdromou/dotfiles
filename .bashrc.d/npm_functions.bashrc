get_package_property() {
	prop=$1tt
	PACKAGE_VERSION=$(node -p -e "require('./package.json')['$prop']")
	echo $PACKAGE_VERSION
}

unpublish_drafts() {
	name=$(get_package_property "name")
	IFS=' ' read -r -a versions <<<"$@"

	for version in "${versions[@]}"; do
		to_remove=$name"@"$version
		npm unpublish $to_remove
	done
}

publish_tagged_draft() {
	if [ -z "$1" ]; then
		echo "No argument supplied"
        return
	fi

	draft_version=$1
	npm publish . --tag $draft_version
}