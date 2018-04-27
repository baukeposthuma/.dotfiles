#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

GIT_USER="Rick Lancee";
GIT_EMAIL="rick@lifely.nl";

function copyFiles() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "macos.sh" \
		--exclude "copy-files.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}
 

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
	
	copyFiles;

	# Set git user and email upon bootstrap
	git config --global user.name "$GIT_USER";
	git config --global user.email "$GIT_EMAIL";
fi;

unset copyFiles;