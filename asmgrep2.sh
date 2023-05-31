#!/bin/bash
# $1: phrase to find

if [ "$2" == "" ]; then
	grep_flags="-wr"
else
	grep_flags="$2"
fi

grep "$1" -nwr -B 2 --include="*.c" --include="*.h" --include="*.s" --include="*.inc" --exclude-dir="build" --exclude-dir="tools" --exclude-dir="graphics" --exclude-dir=".git" --exclude-dir="temp"

