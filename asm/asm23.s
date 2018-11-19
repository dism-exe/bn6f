.include "asm/asm23.inc"

	thumb_local_start
sub_8088CA0:
	push {lr}
	bl sub_8005D88
	mov r0, #0
	pop {pc}
	.balign 4, 0x00
	.word 0x40010000, 0x8000002, 0x206003F, 0xFF271EFF, 0x3E07080C
	.word 0x887B330C, 0x8CAC0054, 0x24A0808, 0x8059110, 0x1C3F343F
	.word 0x271EFF02, 0x70808FF, 0x88D2F14, 0x1EFF0208, 0x400FF3A
	.word 0x3CFF0280, 0x14, 0xCFF2700, 0x520708, 0xFF2A0160
	.word 0xFF291715, 0x34A0682, 0x403B0154, 0x4701FF04, 0x4101FF00
	.word 0x4001FF00, 0x24000, 0x29303F00, 0x2066CFF, 0xFF4E3CFF
	.word 0x8FF27FF, 0x183F0708, 0x3C00043F, 0xEC154000, 0x8088C
	.word 0x40F9C000, 0x80000FF, 0x3E06003F, 0x887B36EC, 0x5401FF02
	.word 0x88D3800, 0xF4024A08, 0x3F0806EC, 0x21C3F34, 0xFF271EFF
	.word 0x14070800, 0x8088DAC, 0x3A1EFF02, 0x800400FF, 0x143CFF02
	.word 0x0
	.word 0x80CFF27, 0x4A066A07, 0x3B015403, 0x4FF0440, 0x4FF0047
	.word 0x1FF0041, 0xFF40F9C0, 0x303F0000, 0x66EFF29, 0x4E3CFF02
	.word 0xFF27FFFF, 0x3F070808, 0x43F18, 0x1540003C, 0x8088D73
	.word 0x20052000, 0x8000005, 0x80001804, 0xFF, 0x800
	.word 0x206003F, 0xFF271EFF, 0x3E07080C, 0x887B3A04, 0x8DB40054
	.word 0x24A0808, 0x806D15C, 0x1C3F343F, 0x271EFF02, 0x70808FF
	.word 0x88EDD14, 0x1EFF0208, 0x400FF3A, 0x1EFF0280, 0x8EE52012
	.word 0xFF020808, 0x3FF3A1E, 0x148004, 0x27000000, 0x70204FF
	.word 0x5A2013, 0xA5580000, 0xC10804CB, 0x30804CB, 0x35000000
	.word 0xFF020108, 0xFF275A, 0xDD140702, 0x208088E, 0xFF3A1EFF
	.word 0x2800404, 0x8351EFF, 0x4080902, 0x541EFF02, 0x88DBC00
	.word 0xFF020808, 0x5FF3A1E, 0xFF028004, 0x508351E, 0x2060809
	.word 0xFF3A1EFF, 0x2800406, 0x143CFF, 0x27000000, 0x7080CFF
	.word 0x1715FF2A, 0x5A2013, 0xFF290000, 0x58590680, 0x804CBA5
	.word 0x804CBC1, 0x3, 0x154034A, 0xFF04403B, 0xFF004704
	.word 0xFF004104, 0x20046001, 0x3F000005, 0x70FF2930, 0x72FF2906
	.word 0x74FF2906, 0x76FF2906, 0x4B006206, 0x814187D, 0x1420734B
	.word 0x3CFF0208, 0x27FFFF4E, 0x70808FF, 0x43F183F, 0x40003C00
	.word 0x88E7215, 0xE34D08, 0x4025A, 0x5A0AFF02, 0x2000401
	.word 0x5A0AFF, 0xE34D0020, 0x20FF0200, 0x88EF615, 0x8
	.word 0x20052000, 0x8000005, 0x80001804, 0xFF, 0x800
	.word 0x206003F, 0xFF271EFF, 0x3E07080C, 0x887B3E70, 0x8F080054
	.word 0x24A0808, 0x806D1CC, 0x1C3F343F, 0x271EFF02, 0x70808FF
	.word 0x88FD414, 0x1EFF0208, 0x400FF3A, 0x3CFF0280, 0x14015C4D
	.word 0x0
	.word 0x204FF27, 0x80FF2A07, 0x63385906, 0x3E5AFF02, 0x887B3E70
	.word 0x200FF27, 0x8FD41407, 0xFF020808, 0x1FF3A1E, 0xFF028004
	.word 0x1000541E, 0x808088F, 0x351EFF02, 0x8090108, 0x1EFF0202
	.word 0x407FF3A, 0x1EFF0280, 0x9030835, 0x140408, 0x27000000
	.word 0x71004FF, 0x1715FF2A, 0x680FF2A, 0x11FFF29, 0xFF296359
	.word 0xFF53067A, 0x3CFF0201, 0xDC01014C, 0x3F08088F, 0x43F18
	.word 0x1540003C, 0x8088FA6, 0x4000000, 0x0, 0x0
	.word 0x0
	.word 0x40010000, 0x8000002, 0x3E06003F, 0x887B41AC, 0x5401FF02
	.word 0x88FEC00, 0x58024A08, 0x3F080591, 0x21C3F34, 0xFF271EFF
	.word 0x14070808, 0x8089058, 0x3A1EFF02, 0x800400FF, 0x14
	.word 0x9FF2900, 0x82FF2A06, 0x83FF2906, 0x1FFF2A06, 0x15FF2A01
	.word 0xE7FF2917, 0x2146C00, 0x30013, 0xFF020000, 0x3F5514
	.word 0x43F183F, 0x1FF02, 0x1540003C, 0x8089024, 0xA001A000
	.word 0x80100EC, 0x2004, 0x8000, 0x20040800, 0x80000000
	.word 0x80000FF, 0x3E06003F, 0x887B45A4, 0x5301FF02, 0x5400FF
	.word 0x8089060, 0x4E78024A, 0x343F0807, 0xFF271C3F, 0x14070408
	.word 0x808910F, 0x353CFF02, 0x540108, 0x8089068, 0x2080908
	.word 0x3A1EFF02, 0x800400FF, 0x541EFF02, 0x8907200, 0xFF020808
	.word 0x308351E, 0x2040809, 0xFF3A1EFF, 0x2800404, 0x143CFF
	.word 0x27000000, 0x7040CFF, 0x405AFF02, 0x4704FF04, 0x4104FF00
	.word 0x1FF00, 0x0
	.word 0x29303F00, 0x28060BFF, 0x4CFFFF, 0x8911800, 0x183F3B08
	.word 0x3C00043F, 0xDA154000, 0x80890, 0x4000201, 0x0
	.word 0x0, 0x0
dword_8089128: .word 0x4B06003F, 0x8089141, 0x747FF2A, 0x3C00043F, 0x30154000
	.word 0x80891, 0x4803B5F0
	.word 0x58407829
	.word 0x470046FE, 0xBDF04200, 0x8089154, 0x8089161, 0x808917D
	.word 0x8089235, 0x2000B5F0, 0xF825F7A7, 0xF7AA2000, 0x2000FF29
	.word 0xF868F000, 0x70282004, 0xBDF02001, 0x4657B5F0, 0x8878687F
	.word 0x1092120, 0xD1334201, 0x4B1D8838, 0x5D1A2400, 0x40011C11
	.word 0xD0034291, 0x2C083401, 0xE024DBF7, 0x21022700, 0xD0004208
	.word 0xF7A72710, 0xB083F80F, 0x664B16, 0x19DB199B, 0x579E2600
	.word 0x27010436, 0x43F57DF, 0x19C91980, 0x91019000, 0x46689202
	.word 0xF912F7A7, 0x9800D105, 0x9A029901, 0xFFFCF7A6, 0x1C20E002
	.word 0xF8C2F000, 0xF000B003, 0xE004F847, 0xF7772083, 0x2008F9E9
	.word 0x20017028, 0xBDF0, 0x8089208, 0x60A09050, 0x20801040
	.word 0x8089214, 0x4000004, 0xFC0000FC, 0x202FC04, 0xFEFE04FC
	.word 0x8000008, 0xF80000F8, 0x404F808, 0xFCFC08F8, 0xF7A6B5F0
	.word 0x2001FFC1, 0xFEC0F7AA, 0xBDF02000, 0x490CB5F0, 0x18400140
	.word 0x2220490B, 0xFB74F777, 0xF7774803, 0x207FFC6B, 0xF9B6F777
	.word 0xBDF0, 0x8089268, 0x87DDD4C, 0x6014800, 0x700
	.word 0x0
	.word dword_87DE44C
	.word byte_30016F0
	thumb_func_end sub_8088CA0

	thumb_local_start
sub_8089280:
	push {r4-r7,lr}
	ldr r0, off_80892A0 // =dword_80892A4 
	mov r1, r10
	ldr r1, [r1,#oToolkit_CurFramePtr]
	ldrh r1, [r1]
	mov r2, #0x1f
	and r1, r2
	cmp r1, #8
	bge loc_8089294
	ldr r0, off_80892F0 // =dword_80892F4 
loc_8089294:
	bl sub_8001158 // () -> void
	ldr r0, off_8089340 // =dword_8089344 
	bl sub_8001158 // () -> void
	pop {r4-r7,pc}
off_80892A0: .word dword_80892A4
dword_80892A4: .word 0x80008, 0xD247, 0x740004, 0xD240, 0xE00008, 0xD241
	.word 0xE4004D, 0xD242, 0x4004D, 0xD246, 0xE00090, 0xD243
	.word 0x740094, 0xD244, 0x80090, 0xD245, 0x40700048, 0xD254
	.word 0x0
off_80892F0: .word dword_80892F4
dword_80892F4: .word 0x80008, 0xD24F, 0x740004, 0xD248, 0xE00008, 0xD249
	.word 0xE4004D, 0xD24A, 0x4004D, 0xD24E, 0xE00090, 0xD24B
	.word 0x740094, 0xD24C, 0x80090, 0xD24D, 0x40700048, 0xD254
	.word 0x0
off_8089340: .word dword_8089344
dword_8089344: .word 0x80144078, 0xD258, 0x80344078, 0xD260, 0x80544078
	.word 0xD268, 0x40144088, 0xD270, 0x40344088, 0xD274
	.word 0x0
	thumb_func_end sub_8089280

	thumb_local_start
sub_8089370:
	push {r4-r7,lr}
	ldr r1, off_8089388 // =unk_808938C 
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1,#4]
	mov r2, #0
	mov r3, #1
	bl sub_802FE28 // (u32 a1, u16 a2, int notUsed, int a4) -> void
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089388: .word unk_808938C
unk_808938C: .byte  4
	.byte  0
	.byte 0xDC
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte 0x8C
	.byte  0
	.byte 0xDC
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte 0x8C
	.byte  0
	.byte  4
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte  4
	.byte  0
	.byte  4
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte  0
	.byte  0
	.byte 0x70 
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte 0x49 
	.byte  0
	.byte 0xE0
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte 0x90
	.byte  0
	.byte 0x70 
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
	.byte 0x49 
	.byte  0
	.byte  0
	.byte 0x40 
	.byte 0x50 
	.byte 0xD2
	.byte  0
	.byte  0
unk_80893CC: .byte 0x3F 
	.byte  0
	.byte  6
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x27 
	.byte 0xFF
	.byte 0xC
	.byte  8
	.byte  7
	.byte 0x4B 
	.byte 0xF5
	.byte 0x93
	.byte  8
	.byte  8
	.byte  2
	.byte 0xFF
	.byte 0x3C 
	.byte 0x27 
	.byte 0xFF
	.byte  8
	.byte  8
	.byte  7
	.byte 0x2A 
	.byte 0xFF
	.byte 0x46 
	.byte  7
	.byte 0x3F 
	.byte  4
	.byte  0
	.byte 0x3C 
	.byte  0
	.byte 0x40 
	.byte 0x15
	.byte 0xE4
	.byte 0x93
	.byte  8
	.byte  8
	.byte  0
	.byte 0xF0
	.byte 0xB5
	.byte 0x20
	.byte 0x20
	.byte 0x7A 
	.byte 0xF7
	.byte 0xD3
	.byte 0xF8
	.byte 0xAB
	.byte 0xF7
	.byte 0xB6
	.byte 0xFE
	.byte 0x53 
	.byte 0x46 
	.byte 0xDB
	.byte 0x6B 
	.byte 0x98
	.byte 0x88
	.byte 0xF
	.byte 0x49 
	.byte 0x88
	.byte 0x42 
	.byte 0x13
	.byte 0xD1
	.byte 0x98
	.byte 0x79 
	.byte 0x23 
	.byte 0x28 
	.byte 0x10
	.byte 0xD1
	.byte  6
	.byte 0x20
	.byte 0x16
	.byte 0x21 
	.byte 0xA5
	.byte 0xF7
	.byte 0xA5
	.byte 0xFE
	.byte  3
	.byte 0xD1
	.byte  0
	.byte 0x20
	.byte 0xAC
	.byte 0xF7
	.byte 0x17
	.byte 0xF8
	.byte  7
	.byte 0xE0
	.byte  6
	.byte 0x20
	.byte 0x1A
	.byte 0x21 
	.byte 0xA5
	.byte 0xF7
	.byte 0x9C
	.byte 0xFE
	.byte  2
	.byte 0xD1
	.byte  1
	.byte 0x20
	.byte 0xAC
	.byte 0xF7
	.byte 0xE
	.byte 0xF8
	.byte  7
	.byte 0x20
	.byte 0x40 
	.byte 0x21 
	.byte 0xA5
	.byte 0xF7
	.byte 0x6A 
	.byte 0xFE
	.byte 0xB9
	.byte 0xF0
	.byte 0x68 
	.byte 0xF8
	.byte  0
	.byte 0x20
	.byte 0xF0
	.byte 0xBD
	.byte 0x90
	.byte  2
	.byte  0
	.byte  0
unk_8089448: .byte 0x3F 
	.byte  0
	.byte  6
	.byte 0x3E 
	.byte 0x8C
	.byte 0xE4
	.byte 0x7D 
	.byte  8
	.byte 0x29 
	.byte 0xFF
	.byte 0x31 
	.byte 0x17
	.byte  2
	.byte 0xFF
	.byte  1
	.byte 0x40 
	.byte  4
	.byte 0xFF
	.byte  4
	.byte 0x47 
	.byte  0
	.byte 0xFF
	.byte  4
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x27 
	.byte 0xFF
	.byte  8
	.byte  8
	.byte  7
	.byte  2
	.byte 0xFF
	.byte 0x14
	.byte 0x3A 
	.byte 0xFF
	.byte 0xA
	.byte  4
	.byte 0x80
	.byte  2
	.byte 0xFF
	.byte 0x1E
	.byte 0x2A 
	.byte 0xFF
	.byte 0x44 
	.byte  7
	.byte 0x2A 
	.byte 0xFF
	.byte 0x45 
	.byte  7
	.byte 0x3F 
	.byte  4
	.byte  0
	.byte  0
	.byte  0
	.byte  0
dword_8089480: .word 0x20, 0x18000000, 0x1C0800, 0x0
	.word off_8001800
dword_8089494: .word 0xC018C000, 0x80000F8, 0x60FCC000, 0x80000E6, 0x800F4000
	.word 0x8000006, 0xE0F8C000, 0x8038015, 0x80EF0000, 0x8000016
	.word 0xC0ED8000, 0x8FF8002, 0x200D6000, 0x8FEE0E2, 0x8001E000
	.word 0x8FEE000, 0x1000090, 0xFEA80000, 0xFFCC0000, 0x0
	.word 0x1000190, 0xFEAC0000, 0xF40000, 0x0
	.word 0x7000290, 0xFFFA0000, 0x1660000, 0xFFE00000, 0x3000091
	.word 0xCC0000, 0xFEC20000, 0x400000, 0x1000191, 0xFF080000
	.word 0xFFC80000, 0x0
	.word 0x5000291, 0x1C00000, 0xFF0E0000, 0x0
	.word 0x3000093, 0x40000, 0x1E0000, 0x400000, 0x7000193
	.word 0xE0000, 0x1F40000, 0x0
dword_8089554: .word 0x3E06003F, 0x87DE48C, 0x4B01FF02, 0x80895A9, 0x6E00081C
	.word 0x3F080895, 0x140004, 0x27000000, 0x7080CFF, 0x3F3CFF02
	.word 0xFF044044, 0xFF004704, 0xFF004104, 0x1, 0x29000000
	.word 0x290744FF, 0x280740FF, 0x804CFFFF, 0x0
	.word 0x43F3B00, 0x0
	thumb_func_end sub_8089370

	thumb_local_start
sub_80895A8:
	push {r4-r7,lr}
	mov r7, #0x70 
	add r7, r7, r5
	ldrb r0, [r5]
	ldr r1, off_80895BC // =jt_80895C0 
	ldr r0, [r1,r0]
	mov lr, pc
	bx r0
	tst r0, r0
	pop {r4-r7,pc}
off_80895BC: .word jt_80895C0
jt_80895C0: .word sub_808964C+1
	.word sub_80896B0+1
	.word sub_80896C4+1
	.word sub_80896D4+1
	.word sub_8089792+1
	.word sub_80897A6+1
	.word sub_8089C16+1
	.word sub_8089C78+1
	.word sub_80897E8+1
	.word sub_8089808+1
	.word sub_8089826+1
	.word sub_808983A+1
	.word sub_808985A+1
	.word sub_808989C+1
	.word sub_80898B2+1
	.word sub_80898E8+1
	.word sub_80898FC+1
	.word sub_808991C+1
	.word sub_8089960+1
	.word sub_808997E+1
	.word sub_808999C+1
	.word sub_80899D8+1
	.word sub_80899F2+1
	.word sub_8089A10+1
	.word sub_8089A60+1
	.word sub_8089ACA+1
	.word sub_8089AE8+1
	.word sub_8089B2E+1
	.word sub_8089B54+1
	.word sub_8089B7E+1
	.word sub_8089B94+1
	.word sub_8089BAA+1
	.word sub_8089BC0+1
	.word sub_8089BE4+1
	.word sub_8089BFA+1
	thumb_func_end sub_80895A8

	thumb_local_start
sub_808964C:
	push {r4-r7,lr}
	bl sub_814219C
	bne loc_808966E
	mov r0, #4
	bl sub_809E2AE
	bl sub_809E2B8
	bl sub_809E13C
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x74 
	strb r0, [r5]
	b loc_80896A0
loc_808966E:
	bl sub_81428D4
	mov r4, r0
	bl sub_8142990
	mov r1, r4
	bl sub_8142896
	bl sub_809E2AE
	bl sub_809E2B8
	ldr r1, off_80896A4 // =byte_80896A8 
	ldrb r0, [r1,r0]
	bl sub_809E13C
	bl sub_8089D26
	mov r0, #0
	bl sub_81421C8
	bl sub_8089CC4
	mov r0, #4
	strb r0, [r5]
loc_80896A0:
	mov r0, #1
	pop {r4-r7,pc}
off_80896A4: .word byte_80896A8
byte_80896A8: .byte 0xFF, 0x29, 0xFF, 0x2A, 0xFF, 0x2B, 0xFF, 0x2C
	thumb_func_end sub_808964C

	thumb_local_start
sub_80896B0:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80896C0
	bl sub_8089CF8
	mov r0, #0xc
	strb r0, [r5]
loc_80896C0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896B0

	thumb_local_start
sub_80896C4:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80896D0
	mov r0, #0xc
	strb r0, [r5]
loc_80896D0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896C4

	thumb_local_start
sub_80896D4:
	push {r4-r7,lr}
	bl sub_8089704
	beq loc_8089700
	cmp r0, #1
	beq loc_80896FA
	cmp r0, #2
	beq loc_80896F4
	bl sub_8089CDC
	mov r0, #1
	bl sub_80468EC
	mov r0, #0x18
	strb r0, [r5]
	b loc_8089700
loc_80896F4:
	mov r0, #0x10
	strb r0, [r5]
	b loc_8089700
loc_80896FA:
	bl sub_8089CC4
	b loc_8089700
loc_8089700:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80896D4

	thumb_local_start
sub_8089704:
	push {r4-r7,lr}
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#2]
	mov r4, #0
	mov r0, #1
	tst r0, r7
	beq loc_8089738
	bl sub_81421D0
	bl sub_8142190
	beq loc_8089730
	bl sub_8142A84
	beq loc_808972E
	mov r0, #0x67 
	bl sound_play // () -> void
	mov r4, #2
	b loc_808978C
loc_808972E:
	b loc_808978C
loc_8089730:
	mov r0, #0x69 
	bl sound_play // () -> void
	b loc_808978C
loc_8089738:
	mov r0, #2
	tst r0, r7
	beq loc_8089748
	mov r0, #0x68 
	bl sound_play // () -> void
	mov r4, #3
	b loc_808978C
loc_8089748:
	mov r7, r10
	ldr r7, [r7,#oToolkit_JoypadPtr]
	ldrh r7, [r7,#4]
	mov r0, #0x40 
	tst r0, r7
	beq loc_808976C
	mov r0, #0x66 
loc_8089756:
	bl sound_play // () -> void
	bl sub_81421D0
	sub r0, #1
	bge loc_8089764
	mov r0, #3
loc_8089764:
	bl sub_81421C8
	mov r4, #1
	b loc_808978C
loc_808976C:
	mov r0, #0x80
	tst r0, r7
	beq loc_808978C
	mov r0, #0x66 
	bl sound_play // () -> void
	bl sub_81421D0
	add r0, #1
	cmp r0, #4
	blt loc_8089784
	mov r0, #0
loc_8089784:
	bl sub_81421C8
	mov r4, #1
	b loc_808978C
loc_808978C:
	mov r0, r4
	tst r0, r0
	pop {r4-r7,pc}
	thumb_func_end sub_8089704

	thumb_local_start
sub_8089792:
	push {r4-r7,lr}
	bl sub_81421D0
	add r0, #2
	bl sub_8089CA4
	mov r0, #0x14
	strb r0, [r5]
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089792

	thumb_local_start
sub_80897A6:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_80897E4
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_80897E4
	bl chatbox_8045F4C
	cmp r0, #0
	beq loc_80897C8
	bl sub_8089D26
	mov r0, #0xc
	strb r0, [r5]
	b loc_80897E4
loc_80897C8:
	bl sub_8089D0E
	bl sub_81421D0
	bl sub_81421B2
	mov r0, #1
	bl sub_80468EC
	mov r0, #0xa
	bl sub_8089CB0
	mov r0, #0x20 
	strb r0, [r5]
loc_80897E4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80897A6

	thumb_local_start
sub_80897E8:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089804
	bl sub_8089CB4
	beq loc_8089804
	mov r0, #4
	mov r1, #0xff
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x24 
	strb r0, [r5]
loc_8089804:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80897E8

	thumb_local_start
sub_8089808:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8089822
	mov r0, #0
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #5
	bl sub_8089CB0
	mov r0, #0x28 
	strb r0, [r5]
loc_8089822:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089808

	thumb_local_start
sub_8089826:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089836
	bl sub_8142BB6
	mov r0, #0x2c 
	strb r0, [r5]
loc_8089836:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089826

	thumb_local_start
sub_808983A:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8089856
	bl sub_8089D44
	bl sub_814216E
	str r0, [r7,#0xc]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x30 
	strb r0, [r5]
loc_8089856:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808983A

	thumb_local_start
sub_808985A:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8142C20
	mov r4, r0
	bl sub_814216E
	cmp r0, r4
	bne loc_8089898
	bl sub_8089CB4
	beq loc_8089898
	bl sub_814216E
	ldr r1, [r7,#0xc]
	cmp r0, r1
	beq loc_8089882
	mov r0, #0x34 
	strb r0, [r5]
	b loc_8089898
loc_8089882:
	bl sub_8142ADA
	bne loc_8089892
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
	b loc_8089898
loc_8089892:
	mov r0, #0x3c 
	strb r0, [r5]
	b loc_8089898
loc_8089898:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808985A

	thumb_local_start
sub_808989C:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80898AE
	mov r0, #7
	bl sub_8089CA4
	mov r0, #0x38 
	strb r0, [r5]
loc_80898AE:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808989C

	thumb_local_start
sub_80898B2:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_80898E4
	bl sub_814216E
	bne loc_80898CE
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x5c 
	strb r0, [r5]
	b loc_80898E4
loc_80898CE:
	bl sub_8142ADA
	bne loc_80898DE
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
	b loc_80898E4
loc_80898DE:
	mov r0, #0x3c 
	strb r0, [r5]
	b loc_80898E4
loc_80898E4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898B2

	thumb_local_start
sub_80898E8:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80898F8
	bl sub_8142BFA
	mov r0, #0x40 
	strb r0, [r5]
loc_80898F8:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898E8

	thumb_local_start
sub_80898FC:
	push {r4-r7,lr}
	mov r0, #0x10
	bl sub_8142C20
	tst r0, r0
	beq loc_8089918
	mov r0, #8
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x44 
	strb r0, [r5]
loc_8089918:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80898FC

	thumb_local_start
sub_808991C:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_808994E
	bl sub_8089CB4
	beq loc_808994E
	bl sub_8142B58
	bl sub_809E2AE
	bl sub_809E2B8
	ldr r1, off_8089954 // =byte_8089958 
	ldrb r0, [r1,r0]
	bl sub_809E13C
	bl sub_8089CDC
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x48 
	strb r0, [r5]
loc_808994E:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089954: .word byte_8089958
byte_8089958: .byte 0xFF, 0x2E, 0xFF, 0x2F, 0xFF, 0x30, 0xFF, 0x31
	thumb_func_end sub_808991C

	thumb_local_start
sub_8089960:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_808997A
	bl sub_8089CB4
	beq loc_808997A
	mov r0, #4
	mov r1, #0xff
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #0x4c 
	strb r0, [r5]
loc_808997A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089960

	thumb_local_start
sub_808997E:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_8089998
	mov r0, #0
	mov r1, #0x10
	bl engine_setScreeneffect // (int a1, int a2) -> void
	mov r0, #5
	bl sub_8089CB0
	mov r0, #0x50 
	strb r0, [r5]
loc_8089998:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808997E

	thumb_local_start
sub_808999C:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_80899D4
	bl sub_8142224
	tst r0, r0
	beq loc_80899B2
	bl sub_8142C46
	b loc_80899C2
loc_80899B2:
	bl sub_814223E
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x54 
	strb r0, [r5]
	b loc_80899D4
loc_80899C2:
	bl getPETNaviSelect // () -> u8
	bl sub_80010D4
	tst r0, r0
	beq loc_80899B2
	mov r0, #0x1e
	bl sub_8089CB0
loc_80899D4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_808999C

	thumb_local_start
sub_80899D8:
	push {r4-r7,lr}
	bl engine_isScreeneffectAnimating // () -> zf
	beq loc_80899EE
	bl sub_8089CB4
	beq loc_80899EE
	bl sub_8142BF4
	mov r0, #0x58 
	strb r0, [r5]
loc_80899EE:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80899D8

	thumb_local_start
sub_80899F2:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_8142C20
	mov r4, r0
	bl sub_814216E
	cmp r0, r4
	bne loc_8089A0C
	bl sub_8089CDC
	mov r0, #0x18
	strb r0, [r5]
loc_8089A0C:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_80899F2

	thumb_local_start
sub_8089A10:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089A36
	bl sub_81426CE
	ldr r1, off_8089A3C // =off_8089A40 
	lsl r0, r0, #2
	ldr r0, [r1,r0]
	str r0, [r5,#0x3c]
	bl sub_8036F98
	mov r0, #1
	strb r0, [r5,#0x13]
	mov r0, #0x3c 
	bl sub_8089CB0
	mov r0, #0x60 
	strb r0, [r5]
loc_8089A36:
	mov r0, #1
	pop {r4-r7,pc}
	.balign 4, 0x00
off_8089A3C: .word off_8089A40
off_8089A40: .word dword_8089494
	.word dword_8089494+8
	.word dword_8089494+0x10
	.word dword_8089494+0x18
	.word dword_8089494+0x20
	.word dword_8089494+0x28
	.word dword_8089494+0x30
	.word dword_8089494+0x38
	thumb_func_end sub_8089A10

	thumb_local_start
sub_8089A60:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089AC6
	bl sub_81427CE
	mov r0, r0
	bl ClearEventFlag // (u16 entryFlagBitfield) -> void
	bl sub_814219C
	str r0, [r7,#0x10]
	bl sub_81422B4
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #0x40 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #2
	mov r1, #0x25 
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	mov r1, #0
	strb r1, [r0,#oGameState_Unk_15]
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x28 
	bl TestEventFlagFromImmediate // (int entryIdx, int byteFlagIdx) -> zf
	bne loc_8089ABA
	bl sub_81426CE
	cmp r0, #6
	bge loc_8089ABA
	bl sub_8035408
	mov r0, #0x65 
	add r0, #0xff
	bl sound_play // () -> void
	bl sub_8036E44
	bl sub_8036E78
loc_8089ABA:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x64 
	strb r0, [r5]
	b loc_8089AC6
loc_8089AC6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089A60

	thumb_local_start
sub_8089ACA:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089AE4
	mov r0, #0xc
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x68 
	strb r0, [r5]
	b loc_8089AE4
loc_8089AE4:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089ACA

	thumb_local_start
sub_8089AE8:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089B2A
	bl sub_8089CB4
	beq loc_8089B2A
	bl sub_8036FAA
	mov r0, #0
	strb r0, [r5,#0x13]
	mov r0, #4
	bl sub_809E2AE
	bl sub_809E2B8
	bl sub_809E13C
	ldr r0, [r7,#0x10]
	tst r0, r0
	bne loc_8089B20
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x70 
	strb r0, [r5]
	b loc_8089B2A
loc_8089B20:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x6c 
	strb r0, [r5]
loc_8089B2A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089AE8

	thumb_local_start
sub_8089B2E:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089B50
	mov r0, #2
	ldr r1, [r7,#0x10]
	bl chatbox_8045EDC
	mov r0, #0x11
	bl sub_8089CA4
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x70 
	strb r0, [r5]
	b loc_8089B50
loc_8089B50:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B2E

	thumb_local_start
sub_8089B54:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089B7A
	bl sub_8089CB4
	beq loc_8089B7A
	mov r0, #4
	bl sub_809E2AE
	bl sub_809E2B8
	bl sub_809E13C
	bl reqBBS_clearFlag_8140A0C
	mov r0, #0x18
	strb r0, [r5]
loc_8089B7A:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B54

	thumb_local_start
sub_8089B7E:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089B90
	mov r0, #0
	bl sub_8089CA4
	mov r0, #0x78 
	strb r0, [r5]
loc_8089B90:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B7E

	thumb_local_start
sub_8089B94:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089BA6
	mov r0, #1
	strb r0, [r5,#8]
	mov r0, #0
	pop {r4-r7,pc}
loc_8089BA6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089B94

	thumb_local_start
sub_8089BAA:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089BBC
	mov r0, #0xd
	bl sub_8089CA4
	mov r0, #0x80
	strb r0, [r5]
loc_8089BBC:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BAA

	thumb_local_start
sub_8089BC0:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089BE0
	// entryIdx
	mov r0, #7
	// byteFlagIdx
	mov r1, #0x45 
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089BE0:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BC0

	thumb_local_start
sub_8089BE4:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089BF6
	mov r0, #0xe
	bl sub_8089CA4
	mov r0, #0x88
	strb r0, [r5]
loc_8089BF6:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BE4

	thumb_local_start
sub_8089BFA:
	push {r4-r7,lr}
	mov r0, #0x80
	bl chatbox_8045F3C
	bne loc_8089C12
	mov r0, #0
	strb r0, [r5,#8]
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089C12:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089BFA

	thumb_local_start
sub_8089C16:
	push {r4-r7,lr}
	ldrb r0, [r5,#0x13]
	tst r0, r0
	bne loc_8089C74
	mov r0, #1
	strb r0, [r5,#8]
	bl getPETNaviSelect // () -> u8
	bl sub_80010D4
	tst r0, r0
	bne loc_8089C4A
	strb r0, [r5,#8]
	bl getPETNaviSelect // () -> u8
	cmp r0, #0
	bne loc_8089C3E
	mov r0, #0x3a 
	bl sub_809E13C
loc_8089C3E:
	mov r0, #0x1e
	bl sub_8089CB0
	mov r0, #0x84
	strb r0, [r5]
	b loc_8089C74
loc_8089C4A:
	bl sub_809E2B8
	bl sub_809E13C
	mov r0, #0x1e
	bl sub_8089CB0
	bl sub_814216E
	beq loc_8089C6A
	bl sub_814219C
	bne loc_8089C6A
	mov r0, #0x7c 
	strb r0, [r5]
	b loc_8089C74
loc_8089C6A:
	mov r0, #0
	bl sub_8089CB0
	mov r0, #0x1c
	strb r0, [r5]
loc_8089C74:
	mov r0, #1
	pop {r4-r7,pc}
	thumb_func_end sub_8089C16

	thumb_local_start
sub_8089C78:
	push {r4-r7,lr}
	bl sub_8089CB4
	beq loc_8089C9A
	bl sub_8036FAA
	mov r0, #0
	strb r0, [r5,#0x13]
	bl sub_81426CE
	ldr r1, off_8089CA0 // =dword_8089494+64 
	mov r2, #0x10
	mul r2, r0
	add r1, r1, r2
	str r1, [r5,#0x34]
	mov r0, #0
	pop {r4-r7,pc}
loc_8089C9A:
	mov r0, #1
	pop {r4-r7,pc}
	.byte 0, 0
off_8089CA0: .word dword_8089494+0x40
	thumb_func_end sub_8089C78

	thumb_local_start
sub_8089CA4:
	push {r4-r7,lr}
	mov r1, r0
	ldr r0, [r5,#0x30]
	bl chatbox_runScript // (void *scripts, u8 scriptOffIdx) -> void
	pop {r4-r7,pc}
	thumb_func_end sub_8089CA4

	thumb_local_start
sub_8089CB0:
	strh r0, [r5,#0x18]
	mov pc, lr
	thumb_func_end sub_8089CB0

	thumb_local_start
sub_8089CB4:
	ldrh r0, [r5,#0x18]
	sub r0, #1
	blt loc_8089CC0
	strh r0, [r5,#0x18]
	mov r0, #0
	mov pc, lr
loc_8089CC0:
	mov r0, #1
	mov pc, lr
	thumb_func_end sub_8089CB4

	thumb_local_start
sub_8089CC4:
	push {r4-r7,lr}
	bl sub_81429CA
	ldr r0, off_8089CD8 // =dword_8089480 
	str r0, [r5,#0x3c]
	bl sub_8036F98
	mov r0, #1
	strb r0, [r5,#0x13]
	pop {r4-r7,pc}
off_8089CD8: .word dword_8089480
	thumb_func_end sub_8089CC4

	thumb_local_start
sub_8089CDC:
	push {r4-r7,lr}
	ldr r0, dword_8089CF4 // =dword_8089480 
	str r0, [r5,#0x3c]
	bl sub_8036F98
	mov r0, #1
	strb r0, [r5,#0x13]
	bl sub_8089D0E
	bl sub_8089D44
	pop {r4-r7,pc}
dword_8089CF4: .word 0x808948A
	thumb_func_end sub_8089CDC

	thumb_local_start
sub_8089CF8:
	push {r4-r7,lr}
	mov r4, #0
loc_8089CFC:
	mov r0, #0x12
	bl sub_8004822
	str r5, [r7]
	add r7, #4
	add r4, #1
	cmp r4, #3
	blt loc_8089CFC
	pop {r4-r7,pc}
	thumb_func_end sub_8089CF8

	thumb_local_start
sub_8089D0E:
	push {r4-r7,lr}
	mov r4, #0
loc_8089D12:
	ldr r5, [r7]
	tst r5, r5
	beq loc_8089D1C
	bl sub_80048B2
loc_8089D1C:
	add r7, #4
	add r4, #1
	cmp r4, #3
	blt loc_8089D12
	pop {r4-r7,pc}
	thumb_func_end sub_8089D0E

	thumb_local_start
sub_8089D26:
	push {r4-r7,lr}
	mov r0, #4
	mov r1, #1
	mov r2, #0
	bl sub_80468C6
	mov r0, #0
	bl sub_80468EC
	mov r0, #3
	mov r1, #0
	mov r2, #1
	bl sub_80468C6
	pop {r4-r7,pc}
	thumb_func_end sub_8089D26

	thumb_local_start
sub_8089D44:
	push {r4-r7,lr}
	mov r0, #0
	bl sub_80468EC
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_80468C6
	// <endpool> <endfile>
	pop {r4-r7,pc}
	thumb_func_end sub_8089D44

/*For debugging purposes, connect comment at any range!*/
