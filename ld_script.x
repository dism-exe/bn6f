OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    /* linking file sections from rom.s into place */
    . = 0x08000000;
    .r__start : {*.o(.r__start)}

}
