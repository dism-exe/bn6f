OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
	INCLUDE "constants.ld"
    /* start of ewram */
    . = 0x02000000;
    
    ewram (NOLOAD) :
    ALIGN(4)
    {
        ewram.o(ewram);
        . = 0x40000;
    }
    
    
    /* start of iwram */
    . = 0x03000000;
    iwram (NOLOAD) :
    ALIGN(4)
    {
        iwram.o(iwram);
		/*iwram_text_start = .;*/
    }

	__text_size__ = __text_end__ - __text_start__;
	
	iwram_text : AT(__text_end__ - __text_start__)
	{
		iwram_code.o(.text);
	}
	
    /* start of ROM */
	
    . = 0x08000000;
    .text : AT(0x0)
    {
		__text_start__ = .;
        rom.o(.text);
		__text_end__ = .;
    }=0xff
	
	. += SIZEOF(iwram_text);
	.rodata :
	ALIGN(4)
	{
		data.o(.rodata);
	}=0xff
}
