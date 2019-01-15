	.include "include/macros/label.inc"
	.include "include/macros/struct.inc"
	.include "include/macros/enum.inc"
	.include "include/macros/ewram_structs.inc"
	.include "include/macros/function.inc"

	.macro nybble high:req, low:req
	.byte (\high << 4) | \low
	.endm
