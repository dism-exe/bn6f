#!/bin/bash
# $1: phrase to find

grep -wr --include="*.c" --include="*.h" --include="*.s" --include="*.inc" --exclude-dir="build" --exclude-dir="tools" --exclude-dir="graphics" --exclude-dir=".git" "$1"
