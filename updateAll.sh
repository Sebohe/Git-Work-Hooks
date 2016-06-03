#!/bin/sh
file=$(cat local_repos_list)
IFS=$(echo -en "\n\b")
for x in $file; do
	unset $(git rev-parse --local-env-vars)
	cd $x
	pwd
	./self_extract.sh



done
