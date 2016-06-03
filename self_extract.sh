#!/bin/sh
#
#Just execute this file to copy the GitTools repo contents into their corresponding directions
files=$(ls Hooks)
for x in $files; do
	echo "self_extract"
	cp Hooks/$x ../hooks/$x
done
