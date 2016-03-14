#!/bin/sh
file=$(cat local_repos_list)
IFS=$(echo -en "\n\b")
for x in $file; do

	echo $x


done