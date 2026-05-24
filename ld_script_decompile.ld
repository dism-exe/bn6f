OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)

MEMORY
{
    ewram_region (w!x) : ORIGIN = 0x02000000, LENGTH = 0x40000
    iwram_region (w!x) : ORIGIN = 0x03000000, LENGTH = 0x8000
    vram_region (w!x) : ORIGIN = 0x06000000, LENGTH = 0x18000
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
        ewram_battle { ewram.o(ewram_battle); }
        ewram_2034000 { ewram.o(ewram_2034000); }
    } >ewram_region

    iwram (NOLOAD) :
    ALIGN(4)
    {
        iwram.o(.data);
    } >iwram_region

    vram_6000000 (NOLOAD) :
    ALIGN(4)
    {
        vram.o(vram_6000000);
    } >vram_region
    
    /* start of ROM */

    .text :
    {
        rom.o(.text);
    } >rom_region

    iwram_text :
    {
        iwram.o(.text);
    } >iwram_region AT>rom_region
    
    .data :
    ALIGN(4)
    {
        data.o(.data);
    } >rom_region

    /* C decompiled functions — placed in the ROM fill area.
     * These execute directly from ROM (GBA can run code from ROM, though
     * more slowly than IWRAM/EWRAM).  Trampolines in .text reach them via
     * the long-call pattern (LDR Rn + BX Rn) because the ROM span (8 MB)
     * exceeds Thumb BL range (±4 MB).
     *
     * Wildcard matches any object built into build/c/; section is empty
     * when no C files exist, so this link script is safe to use even
     * before any function has been ported. */
    .c_code :
    ALIGN(4)
    {
        build/c/*.o(.text);
        . = ALIGN(4);
        /* agbcc libgcc helpers (e.g. _call_via_r0) pulled in by C code */
        tools/agbcc/lib/libgcc.a:(.text);
        . = ALIGN(4);
    } >rom_region

    .fill :
    {
        FILL(0xff);
        . = ORIGIN(rom_region) + LENGTH(rom_region) - 1;
        BYTE(0xff);
    } >rom_region
}
