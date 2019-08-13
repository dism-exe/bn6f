	.ifndef GUARD_MACROS_ENUM_INC
	.set GUARD_MACROS_ENUM_INC, 1

	.macro inc x
	.set \x, \x + 1
	.endm

	.macro enum_start x=0
	.set __enum__, \x
	.endm

	.macro enum constant:req
	.equiv \constant, __enum__
	inc __enum__
	.endm

	.macro flag_enum constant:req
	.equiv \constant, (1 << __enum__)
	inc __enum__
	.endm

	.macro enum_skip skip_amount:req
	.set __enum__, __enum__ + \skip_amount
	.endm

	.macro subenum_start x=0
	.set __subenum__, \x
	.endm

	.macro subenum constant:req
	.equiv \constant, __subenum__
	inc __subenum__
	.endm

	.macro subenum_skip skip_amount:req
	.set __subenum__, __subenum__ + \skip_amount
	.endm

	.endif // GUARD_MACROS_ENUM_INC
