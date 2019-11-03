LZ_SFILES = compScripts_credits_86C4B58.lz77.s

LZ_OFILES = $(LZ77_SFILES:.lz.s:.lz.o)
LZ_BINFILES = $(LZ77_OFILES:.lz.o:.lz.bin)
LZ_FILES = $(LZ77_BINFILES:.lz.bin:.lz)

# build
%.lz.o: %.lz.s
	$(AS) $(ASFLAGS) $< -o $@

# strip to binaries and remove the object files
%.lz.bin: %.lz.o
	$(OBJCOPY) -O binary $< -o $@
	rm $<

# compress to .lz files which are .incbin included
%.lz: %.lz.bin
	$(GBAGFX) $< $@

	
