
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
	.size \name, . - \name
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

	// Trampoline body for in-place decomp swap. Emits an 8-byte
	// `ldr r3, =target+1; bx r3; .word target+1` (literal in pool),
	// followed by `pad_bytes` of `nop` so the function occupies the
	// same slot as the original ASM (downstream addresses unchanged).
	//
	// Assumes the enclosing thumb_func_start put us on a 4-byte
	// boundary — true for all the leaves we're converting so far.
	// For 2-byte-aligned-only entries the .pool directive will insert
	// an extra 2 bytes for alignment and pad_bytes needs adjustment.
	.macro decomp_trampoline target_name:req, pad_bytes=0
	ldr r3, =\target_name + 1
	bx  r3
	.pool
	.if \pad_bytes > 0
	.rept \pad_bytes / 2
	nop
	.endr
	.endif
	.endm

	// r3-preserving variant for ASM functions that take 4 args
	// (r0..r3 all in use). The standard trampoline above clobbers r3
	// to hold the C target address; this one saves r0 to stack while
	// it computes the target via r0, parks it in r12 (scratch / not in
	// is_must_match), restores r0, and bx's r12.
	//
	// Layout (14 bytes at 2-aligned start, 16 at 4-aligned due to
	// .pool alignment):
	//   push {r0}                ; preserve r0 (input arg)
	//   ldr  r0, =\target + 1    ; load target via low reg
	//   mov  r12, r0             ; park in scratch hi reg
	//   pop  {r0}                ; restore r0
	//   bx   r12                 ; jump to C; r0..r3 intact
	//   .pool                    ; literal lives here
	.macro decomp_trampoline_r3safe target_name:req, pad_bytes=0
	push {r0}
	ldr  r0, =\target_name + 1
	mov  r12, r0
	pop  {r0}
	bx   r12
	.pool
	.if \pad_bytes > 0
	.rept \pad_bytes / 2
	nop
	.endr
	.endif
	.endm

	// For ASM functions whose callers branch on the flag state right
	// after `bl <fn>`, the regular 8-byte trampoline still works —
	// it just `bx`'s to the C side. The flag-preserving logic lives
	// inside the C target (a naked wrapper in src/c/*_flag.c that
	// does `bl impl; tst r0, r0; bx lr`). See src/c/types.h's
	// DECOMP_FLAG_WRAPPER macro.
