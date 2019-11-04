LZ_SFILES = data/textscript/compressed/text_credits_86C4B58.lz.s

LZ_OFILES = $(LZ_SFILES:.lz.s=.lz.o)
LZ_BINFILES = $(LZ_OFILES:.lz.o=.lz.bin)
LZ_FILES = $(LZ_BINFILES:.lz.bin=.lz)

# build
%.lz.o: %.lz.s
	$(AS) $(ASFLAGS) $< -o $@

# strip to binaries and remove the object files
%.lz.bin: %.lz.o
	$(OBJCOPY) -O binary $< $@

# compress to .lz files which are .incbin included
%.lz: %.lz.bin
	$(GBAGFX) $< $@

	
