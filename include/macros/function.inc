
	.macro arm_local_start
	.align 2, 0
	.arm
	.endm

	.macro arm_func_start name:req
	.align 2, 0
	.global \name
	.arm
	.type \name, function
	.endm

	.macro arm_func_end name:req
	.size \name, .-\name
	.type \name, function
	.endm

	.macro thumb_func_start name:req, align_amount=1
	.align \align_amount, 0
	.global \name
	.thumb_func
	.type \name, function
	.endm

	.macro thumb_local_start, align_amount=1
	.align \align_amount, 0
	.thumb_func
	.endm

	.macro thumb_local_end name
	.error "thumb_local_end does not exist, use thumb_func_end."
	.endm

	.macro thumb_func_end name:req
	.size \name, . - \name // location counter - function start
	.type \name, function
	.endm
