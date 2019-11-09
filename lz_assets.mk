COMPRESSED_TEXT_ARCHIVES_DIR = data/textscript/compressed
#	data/textscript/compressed/CompText8792478.s 
#LZ_SFILES = data/textscript/compressed/text_credits_86C4B58.s
LZ_SFILES = $(wildcard $(COMPRESSED_TEXT_ARCHIVES_DIR)/*.s)
LZ_OFILES = $(LZ_SFILES:.s=.o)
LZ_BINFILES = $(LZ_OFILES:.o=.s.bin)
LZ_FILES = $(LZ_BINFILES:.s.bin=.s.lz)

# build
%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

# strip to binaries and remove the object files
%.s.bin: %.o
	$(OBJCOPY) -O binary $< $@

# compress to .lz files which are .incbin included
%.s.lz: %.s.bin
	$(GBAGFX) $< $@

