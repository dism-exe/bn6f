/*
This file specifies how all of the code and data files link together
to make the ROM. This file is compiled to define the whole ROM region.
*/

// assign section to be set to 0x08000000
.section .r__start, "ax"

// Include all header files for when disassembly is not complete
.include "start.inc"
.include "main.inc"
.include "asm00.inc"
.include "asm01.inc"
.include "asm02.inc"
.include "asm03.inc"


start:
.include "asm/start.s"
main:
.include "asm/main.s"
asm00:
.include "asm/asm00.s"
.incbin "bin/bin00.bin"
asm01:
.include "asm/asm01.s"
.incbin "bin/bin01.bin"
asm02:
.include "asm/asm02.s"
.incbin "bin/bin02.bin"
asm03:
.include "asm/asm03.s"
.incbin "bin/bin03.bin"


/**/
// include parts of the ROM not disassembled yet
// run 'make tail' if this label's location changes to re-compute bin/tail.bin
tail:
.incbin "bin/tail.bin"
