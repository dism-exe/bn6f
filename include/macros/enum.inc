	.ifndef GUARD_MACROS_ENUM_INC
	.set GUARD_MACROS_ENUM_INC, 1

	.macro inc x
	.set \x, \x + 1
	.endm

	.macro enum_start x=0
	.set __enum__, \x
	.endm

	.macro enum constant
	.equiv \constant, __enum__
	inc __enum__
	.endm

	.endif // GUARD_MACROS_ENUM_INC
