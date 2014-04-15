function git_branch()
{
	[ -n "$1" ] || return

	git branch 2> /dev/null | grep -Fqw "$1"
}

