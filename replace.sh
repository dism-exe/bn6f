#!/bin/bash
# $1: phrase to find
# $2: phrase to replace $1
if [ "$1" = "" -o "$2" = "" ]; then
	echo "Usage: replace.sh [PHRASE TO FIND] [PHRASE TO REPLACE PHRASE TO FIND]"
	exit 0
fi

sed -i 's/\<'"$1"'\>/'"$2"'/' $(grep -lwr --include="*.s" --include="*.h" --include="*.c" --include="*.inc" --exclude-dir="tools" --exclude-dir=".git" --exclude-dir="temp" "$1")
