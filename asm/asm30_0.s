
	thumb_func_start sub_80AED50
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
	.balign 4, 0
off_80AED70: .word off_80AED74
off_80AED74:
	// <endpool>
	.word off_80AED80
	.word off_80AEE0C
	.word off_80AEE0C
	thumb_func_end sub_80AED50

off_80AED80: .word byte_8109AA4
	.word byte_8109BFC
	.word byte_810A2EC
	.word byte_810A86C
	.word byte_810AE70
	.word byte_810B7B8
	.word byte_810BEF8
	.word byte_810C388
	.word byte_810C8F8
	.word byte_810D034
	.word byte_810D198
	.word byte_810D724
	.word byte_810DD3C
	.word byte_810E414
	.word byte_810ECAC
	.word byte_810F22C
	.word byte_810F510
	.word byte_81102BC
	.word byte_8110654
	.word byte_811115C
	.word byte_8111938
	.word byte_8112024
	.word byte_8112708
	.word byte_8112BC0
	.word byte_8113268
	.word byte_8113780
	.word byte_81143F4
	.word byte_81150D8
	.word byte_8115730
	.word byte_8115C18
	.word byte_8109AA4
	.word byte_8109AA4
	.word byte_8109AA4
	.word byte_8109AA4
	.word byte_8109AA4
off_80AEE0C: .word byte_80F28F0
	.word byte_80F2A54
	.word byte_80F390C
	.word byte_80F47D4
	.word byte_80F5838
	.word byte_80F6394
	.word byte_80F757C
	.word byte_80F8334
	.word byte_80F8EEC
	.word byte_80F9C80
	.word byte_80FACDC
	.word byte_80FB8E0
	.word byte_80FD044
	.word byte_80FDCF0
	.word byte_80FE7D0
	.word byte_80FF7F0
	.word byte_81001E8
	.word byte_80F28F0
	.word byte_8101268
	.word byte_8101880
	.word byte_8103BB4
	.word byte_81053BC
	.word byte_80F28F0
	.word byte_8106828
	.word byte_8107B50
/*For debugging purposes, connect comment at any range!*/
