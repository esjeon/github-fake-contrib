#!/bin/bash

set -e

num=$1

rm -rf .git
git init

for i in $( seq 0 -1 -${num} ); do
	time=$(date --date="$i day" "+%s %z")
	echo "${time}" > time
	git add time
	git commit --date="${time}" -m "${time}"
done

