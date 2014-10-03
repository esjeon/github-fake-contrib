#!/bin/bash

set -e

days=$1
rmin=${RANDMIN:-1}
rmax=${RANDMIN:-5}

rm -rf .git
git init

for i in $( seq 0 -1 -${days} ); do
	rand=$(( RANDOM % ( rmax - rmin ) + rmin ))
	for j in $( seq -1 -1 -${rand} ); do
		time=$(date --date="$i day $j hour" "+%s %z")
		echo "${time}" > time
		git add time
		git commit --date="${time}" -m "${time}"
	done
done

