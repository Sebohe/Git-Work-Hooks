#!/bin/sh
#Updates all of the local repos for the GitHooks software
#
#Once the local repos are update it self extracts the contents of the repo to the apropiate directory of git.
#
#If you want to add a new local repository path add the path to local_repos_list
#
file=$(cat local_repos_list)
IFS=$(echo -en "\n\b")
for x in $file; do
	unset $(git rev-parse --local-env-vars)
	cd $x
	pwd
	git remote update
	git merge origin/master
	./self_extract.sh
done
