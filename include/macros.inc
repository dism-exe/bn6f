	.include "charmap.inc"
	.include "include/macros/label.inc"
	.include "include/macros/struct.inc"
	.include "include/macros/enum.inc"
	.include "include/macros/ewram_structs.inc"
	.include "include/macros/function.inc"
	.include "include/bytecode/text_script.inc"

	.macro nybble high:req, low:req
	.byte (\high << 4) | \low
	.endm

	.macro movflag flag16:req
		mov r0, #\flag16 >> 8
		mov r1, #\flag16 & 0xFF
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

	test_symbol = . + 2

	.eqv __temp_label, "temp_label"
	.macro print_expr expr:req
	.macro nested_macro _expr=\expr
	.print "\_expr"
	.endm
	.endm

	.if __temp_label == "temsp_label"
		.print "yes"
	.endif

print_expr_test_label:

	.altmacro
	print_expr (__temp_label)
	.noaltmacro
	nested_macro

	"stringa" = 1
	string_a = "stringa"
	string_a2 = "stringa"
	string_a = string_a * string_a2
	.if string_a == string_a2
		.print "string equality!"
	.endif

/*	__struct_label_stack_size = 0
	__struct_label_stack_0 =

	.macro add_struct_label label:req
	.if __struct_label_stack_size == 0
		.macro u8 field:req
		.print "\label\()_\field"
		.endm
	.elseif __struct_label_stack_size == 1

	.purgem u8
	.macro _u8_0 field:req
	.print "\label\()_\field"
	.endm
	.macro _u8_1 field:req
	.print "\label\()_\field"

	.endm

	.print \label
	.macro ram_struct label:req
8/

	__struct_label_stack_size = 0

	.macro _add_struct_label size:req, label:req
	.macro __struct_label_stack\()\size
		.ifdef __defined_types
		.purgem u8
		.endif
		.macro u8 field:req
			.print "\label\()_\field"
		.endm

	.endm
	__struct_label_stack\()\size
	.endm

	.macro u8
	.endm

	.macro _struct_end size:req
	__struct_label_stack\()\size
	.endm

	.macro set_struct_label label:req
	.altmacro
	_add_struct_label %__struct_label_stack_size, \label
	.noaltmacro
	__struct_label_stack_size = __struct_label_stack_size + 1
	.endm

	.macro restore_struct_label
	__struct_label_stack_size = __struct_label_stack_size - 1
	.if __struct_label_stack_size
	.altmacro
	_struct_end %__struct_label_stack_size
	.noaltmacro
	.endif
	.endm

	.macro ram_struct_a label:req
	set_struct_label \label
	u8 AField
	u8 AField2
	ram_struct_b \label\()_B_
	u8 AField3
	u8 AField4
	restore_struct_label
	.endm

	.macro ram_struct_b label:req
	set_struct_label \label
	u8 BField
	u8 BField2
	restore_struct_label
	.endm

	ram_struct_a oLabelA

	.if abc == def
		.print "false"
	.endif

/*
	.macro print_num num:req
	.print "\num"
	.endm

	.macro make_character_constants
	__count = 0
	.irpc char, ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_
		.set __cv\char, __count
		__count = __count + 1
	.endr
	/*.irp val, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62
	.endr*/
/*
	make_character_constants

	.macro string_to_num string:req
	__count = 1
	.equ __num, 0
	.print "1"
	.irpc char, \string
		.equ __num, _num + __cv\char * __count
		__count = __count * 64
		//__num = __num + '\char * __count
		//__count = __count * 256
	.endr
	.equiv __constant_num, __num
	.altmacro
	print_num %()
	.noaltmacro
	.endm

	string_to_num hello
8/

	.macro .asciz8 string:req
	.asciz "\string"
	.endm

	.text
	.asciz8 "fake directive"

	.string "

*/
/*
	.macro output_value value:req
	.print "\value"
	.endm

	__subsection_count = 1
	.text __subsection_count
_.L_1:
	.word 0x66642069
_.L_2:
	.text 0
Subsection0Label:
	.rept __subsection_count
	.word 0x12345678
	.word _.L_2 - _.L_1
	.endr
	.balign 4, 0
*/
