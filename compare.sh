#!/bin/sh
# Compares baserom.gbc and pokeyellow.gbc

# create baserom.txt if necessary
if [ ! -f baserom.txt ]; then
    hexdump -C baserom.gba > baserom.txt
fi

hexdump -C bn6f.gba > bn6f.txt

diff -u baserom.txt bn6f.txt | less