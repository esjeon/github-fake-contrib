#!/bin/bash

set -e

days=$1
rmin=${RANDMIN:-1}
rmax=${RANDMIN:-5}

rm -rf .git
git init

for i in $( seq -$(( days - 1 )) 0 ); do
	rand=$(( RANDOM % ( rmax - rmin ) + rmin ))
	for j in $( seq -$(( rand - 1 )) 0 ); do
		target="$i day $j hour"
		time=$(date --date="${target}" "+%s %z")
		echo "${target}" > time
		git add time
		git commit --date="${time}" -m "${target}"
	done
done

