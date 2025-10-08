#!/bin/bash

# This swaps arguments for replacep.sh to undo some renames.
# $1: label to replace $2
# $2: label to find

if [ "$1" = "" -o "$2" = "" ]; then
	echo "Usage: replacep.sh [LABEL TO FIND] [LABEL TO REPLACE LABEL TO FIND]"
	exit 0
fi

files=$(grep -lwr --include="*.s" --include="*.h" --include="*.inc" --include="*.c" --exclude-dir="tools" --exclude-dir=".git" "$2")

if [ "$files" != "" ]; then
	sed -i 's/\<'"$2"'\>/'"$1"'/' $files
fi

files=$(grep -Elwr --include="*.s" --include="*.h" --include="*.inc" --exclude-dir="tools" --exclude-dir=".git" "$2"_p[0-9]*)
if [ "$files" != "" ]; then
	sed -i 's/\<'"$2"'\(_p[0-9]*\)\>/'"$1"'\1/' $files
fi

ctags -R ewram.s *.s asm/* data/dat* docs/decomp/*.c include/* maps/*
