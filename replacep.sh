#!/bin/bash

# replaces labels and any possible pool labels (suffixed with _p[optional number])
# $1: label to find
# $2: label to replace $1

if [ "$1" = "" -o "$2" = "" ]; then
	echo "Usage: replacep.sh [LABEL TO FIND] [LABEL TO REPLACE LABEL TO FIND]"
	exit 0
fi

files=$(grep -lwr --include="*.s" --include="*.h" --include="*.inc" --include="*.c" --exclude-dir="tools" --exclude-dir=".git" "$1")

if [ "$files" != "" ]; then
	sed -i 's/\<'"$1"'\>/'"$2"'/' $files
fi

files=$(grep -Elwr --include="*.s" --include="*.h" --include="*.inc" --exclude-dir="tools" --exclude-dir=".git" "$1"_p[0-9]*)
if [ "$files" != "" ]; then
	sed -i 's/\<'"$1"'\(_p[0-9]*\)\>/'"$2"'\1/' $files
fi

ctags -R ewram.s *.s asm/* data/dat* docs/decomp/*.c include/* maps/*
