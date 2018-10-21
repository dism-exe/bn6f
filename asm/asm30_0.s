.include "asm/asm30_0.inc"

.func
.thumb_func
sub_80AED50:
	push {lr}
	bl sub_80182B4
	ldrb r1, [r0,#1]
	ldrb r2, [r0,#2]
	ldrb r3, [r0]
	ldr r0, off_80AED70 // =off_80AED74 
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	lsl r2, r2, #2
	ldr r0, [r0,r2]
	mov r1, #0x20 
	mul r3, r1
	add r0, r0, r3
	pop {pc}
	.byte 0, 0
off_80AED70: .word off_80AED74
off_80AED74:
	// <endpool>
	.word off_80AED80
	.word off_80AEE0C
	.word off_80AEE0C
.endfunc // sub_80AED50

off_80AED80: .word dword_8109AA4
	.word dword_8109BFC
	.word dword_810A2EC
	.word dword_810A86C
	.word dword_810AE70
	.word byte_810B7B8
	.word dword_810BEF8
	.word dword_810C388
	.word dword_810C8F8
	.word dword_810D034
	.word dword_810D198
	.word dword_810D724
	.word dword_810DD3C
	.word dword_810E414
	.word dword_810ECAC
	.word dword_810F22C
	.word dword_810F510
	.word dword_81102BC
	.word unk_8110654
	.word dword_811115C
	.word dword_8111938
	.word dword_8112024
	.word dword_8112708
	.word dword_8112BC0
	.word dword_8113268
	.word dword_8113780
	.word dword_81143F4
	.word dword_81150D8
	.word dword_8115730
	.word dword_8115C18
	.word dword_8109AA4
	.word dword_8109AA4
	.word dword_8109AA4
	.word dword_8109AA4
	.word dword_8109AA4
off_80AEE0C: .word dword_80F28F0
	.word dword_80F2A54
	.word dword_80F390C
	.word dword_80F47D4
	.word dword_80F5838
	.word dword_80F6394
	.word dword_80F757C
	.word dword_80F8334
	.word dword_80F8EEC
	.word dword_80F9C80
	.word dword_80FACDC
	.word dword_80FB8E0
	.word dword_80FD044
	.word dword_80FDCF0
	.word dword_80FE7D0
	.word 0x80FF7F0, 0x81001E8, 0x80F28F0, 0x8101268, 0x8101880
	.word 0x8103BB4, 0x81053BC
	.word dword_80F28F0
	.word 0x8106828, 0x8107B50
/*For debugging purposes, connect comment at any range!*/
