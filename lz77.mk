LZ77_SFILES = compScripts_credits_86C4B58.lz77.s

LZ77_OFILES = $(LZ77_SFILES:.lz77.s:.lz77.o)
LZ77_FILES = $(LZ77_OFILES:.lz77.o:.lz77)

%.lz77.o: %.lz77.s
	$(AS) $(ASFLAGS) $< -o $@

%.lz77: %.lz77.o
	$(OBJCOPY) -O binary $< -o $@
	
