#!/bin/bash

tidy()
{
	if git_dir; then
		git prune && git gc --aggressive && git fsck --full --strict
	fi
}

