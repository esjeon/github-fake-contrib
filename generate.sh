#!/bin/bash

set -e

days=$1

rm -rf .git
git init

for i in $( seq 0 -1 -${days} ); do
	time=$(date --date="$i day" "+%s %z")
	echo "${time}" > time
	git add time
	git commit --date="${time}" -m "${time}"
done

