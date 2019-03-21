	.include "charmap.inc"
	.include "include/macros/label.inc"
	.include "include/macros/struct.inc"
	.include "include/macros/enum.inc"
	.include "include/macros/ewram_structs.inc"
	.include "include/macros/function.inc"

	.macro nybble high:req, low:req
	.byte (\high << 4) | \low
	.endm

// some macros illustrating quirks of the gnu assembler macro system
/*
	.macro arg_contents_test arg1=1
	.if ([\arg1*3) == 3
		.print "1"
	.endif
	.endm

	empty_arg_test 2 - 1]

	.macro altmacro_nested_call_test_subfunc arg1:req
	.print "altmacro_nested_call_test_subfunc start"
	.print \arg1
	.print "altmacro_nested_call_test_subfunc end"
	.endm

	.macro altmacro_nested_call_test arg1:req
	.print "altmacro_nested_call_test start"
	.print \arg1
	altmacro_nested_call_test_subfunc \arg1
	.print "altmacro_nested_call_test end"
	.endm

	.altmacro
	altmacro_nested_call_test "!!!!"
	.noaltmacro
*/
