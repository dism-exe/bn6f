OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)

MEMORY
{
    ewram_region (w!x) : ORIGIN = 0x02000000, LENGTH = 0x40000
    iwram_region (w!x) : ORIGIN = 0x03000000, LENGTH = 0x8000
    rom_region (rx) : ORIGIN = 0x08000000, LENGTH = 0x800000
}

SECTIONS
{
    INCLUDE "constants.ld"

    ewram_2000000 (NOLOAD) :
    ALIGN(4)
    {
        ewram.o(ewram_2000000);
    } >ewram_region

    OVERLAY . :
    {
        ewram_t4_battle_objects { ewram.o(ewram_t4_battle_objects);    }
        ewram_2036860 { ewram.o(ewram_2036860); }
    } >ewram_region
    
    ewram_2038170 . (NOLOAD) :
    ALIGN(4)
    {
        ewram.o(ewram_2038170);
    } >ewram_region

    OVERLAY . :
    {
        ewram_t1_battle_objects { ewram.o(ewram_t1_battle_objects); }
        ewram_203a9a0 { ewram.o(ewram_203a9a0); }
    } >ewram_region

    ewram_203c4e0 . (NOLOAD) :
    ALIGN(4)
    {
        ewram.o(ewram_203c4e0);
    } >ewram_region

    OVERLAY . :
    {
        ewram_t3_battle_objects { ewram.o(ewram_t3_battle_objects); }
        ewram_203cfd0 { ewram.o(ewram_203cfd0); }
    } >ewram_region

    ewram_203eae0 . (NOLOAD) :
    ALIGN(4)
    {
        ewram.o(ewram_203eae0);
    } >ewram_region

    iwram (NOLOAD) :
    ALIGN(4)
    {
        iwram.o(.data);
    } >iwram_region
    
    /* start of ROM */

    .text :
    {
        rom.o(.text);
    } >rom_region

    iwram_text :
    {
        iwram.o(.text);
    } >iwram_region AT>rom_region
    
    .rodata :
    ALIGN(4)
    {
        data.o(.rodata);
    } >rom_region

    .fill :
    {
        FILL(0xff);
        . = ORIGIN(rom_region) + LENGTH(rom_region) - 1;
        BYTE(0xff);
    } >rom_region
}
