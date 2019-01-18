#!/bin/bash

# replaces labels and any possible pool labels (suffixed with _p[optional number])
# $1: label to find
# $2: label to replace $1

files=$(grep -lwr --include="*.s" --include="*.h" --include="*.inc" --exclude-dir="tools" --exclude-dir=".git" "$1")

if [ "$files" != "" ]; then
	sed -i 's/\<'"$1"'\>/'"$2"'/' $files
fi

files=$(grep -Elwr --include="*.s" --include="*.h" --include="*.inc" --exclude-dir="tools" --exclude-dir=".git" "$1"_p[0-9]*)
if [ "$files" != "" ]; then
	sed -i 's/\<'"$1"'\(_p[0-9]*\)\>/'"$2"'\1/' $files
fi
