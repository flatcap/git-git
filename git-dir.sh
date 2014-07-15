#!/bin/bash

git_dir()
{
	d=$(pwd)
	while [ -n "$d" ]; do
		[ -d "$d"/.git ] && return
		d=${d%/*}
	done
	false
}

