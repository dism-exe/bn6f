#!/bin/sh
# Compares baserom.gba and bn6f.gba

# create baserom.txt if necessary
if [ ! -f baserom.txt ]; then
	hexdump -C baserom.gba > baserom.txt # can create an empty baserom.txt if no baserom.gba
fi

hexdump -C bn6f.gba > bn6f.txt

diff -u baserom.txt bn6f.txt | less
