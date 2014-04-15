#!/bin/bash

d=$(pwd)
while [ -n "$d" ]; do
	[ -d "$d"/.git ] && exit 0
	d=${d%/*}
done
exit 1
