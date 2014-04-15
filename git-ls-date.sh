#!/bin/bash

for FILE in $(git ls-files); do
	HASH=$(git rev-list HEAD $FILE | tail -n 1)
	HASH=${HASH:0:7}
	DATE=$(git show -s --format="%ci" $HASH --)
	DATE=${DATE:0:19}
	echo "$DATE  $HASH  $FILE"
done

