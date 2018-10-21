	.include "include/macros/label.inc"
	.include "include/macros/struct.inc"
	.include "include/macros/ewram_structs.inc"
	.include "include/macros/function.inc"

	.macro nybble high, low
	.byte (\high << 4) | \low
	.endm
