#!/bin/bash

function argv {
	for a in ${BASH_ARGV[*]} ; do
		echo -n "$a "
	done
	echo
}


sh -c "xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * $1 / 100)))"


