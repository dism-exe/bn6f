	.include "include/macros/label.inc"
	.include "include/macros/struct.inc"
	.include "include/macros/enum.inc"
	.include "include/macros/ewram_structs.inc"
	.include "include/macros/function.inc"

	.macro nybble high:req, low:req
	.byte (\high << 4) | \low
	.endm

    .macro movflag flag16:req
        mov r0, #\flag16 >> 8
        mov r1, #\flag16 & 0xFF
    .endm
