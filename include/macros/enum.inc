	.ifndef GUARD_MACROS_ENUM_INC
	.set GUARD_MACROS_ENUM_INC, 1

	.set __enum_inc_amount, 1
	.set __subenum_inc_amount, 1

	.macro enum_inc x:req
	.set \x, \x + __enum_inc_amount
	.endm

	.macro subenum_inc x:req
	.set \x, \x + __subenum_inc_amount
	.endm

	.macro enum_start x=0, inc_amount=1
	.set __enum__, \x
	.set __enum_inc_amount, \inc_amount
	.endm

	.macro enum constant:req
	.equiv \constant, __enum__
	enum_inc __enum__
	.endm

	.macro flag_enum constant:req
	.equiv \constant, (1 << __enum__)
	enum_inc __enum__
	.endm

	.macro enum_skip skip_amount:req
	.set __enum__, __enum__ + \skip_amount
	.endm

	.macro subenum_start x=0, inc_amount=1
	.set __subenum__, \x
	.set __subenum_inc_amount, \inc_amount
	.endm

	.macro subenum constant:req
	.equiv \constant, __subenum__
	subenum_inc __subenum__
	.endm

	.macro subenum_skip skip_amount:req
	.set __subenum__, __subenum__ + \skip_amount
	.endm

	.endif // GUARD_MACROS_ENUM_INC
