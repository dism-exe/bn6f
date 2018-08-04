.include "asm23.inc"

.func
.thumb_func
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
dword_8089128:    .word 0x4B06003F, 0x8089141, 0x747FF2A, 0x3C00043F, 0x30154000
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
    .word unk_30016F0
.endfunc // sub_8088CA0

.func
.thumb_func
sub_8089280:
    push {r4-r7,lr}
    ldr r0, [pc, #0x80892a0-0x8089282-2] // =dword_80892A4
    mov r1, r10
    ldr r1, [r1,#0x24]
    ldrh r1, [r1]
    mov r2, #0x1f
    and r1, r2
    cmp r1, #8
    bge loc_8089294
    ldr r0, [pc, #0x80892f0-0x8089292-2] // =dword_80892F4
loc_8089294:
    bl sub_8001158
    ldr r0, [pc, #0x8089340-0x8089298-4] // =dword_8089344
    bl sub_8001158
    pop {r4-r7,pc}
off_80892A0:    .word dword_80892A4
dword_80892A4:    .word 0x80008, 0xD247, 0x740004, 0xD240, 0xE00008, 0xD241
    .word 0xE4004D, 0xD242, 0x4004D, 0xD246, 0xE00090, 0xD243
    .word 0x740094, 0xD244, 0x80090, 0xD245, 0x40700048, 0xD254
    .word 0x0
off_80892F0:    .word dword_80892F4
dword_80892F4:    .word 0x80008, 0xD24F, 0x740004, 0xD248, 0xE00008, 0xD249
    .word 0xE4004D, 0xD24A, 0x4004D, 0xD24E, 0xE00090, 0xD24B
    .word 0x740094, 0xD24C, 0x80090, 0xD24D, 0x40700048, 0xD254
    .word 0x0
off_8089340:    .word dword_8089344
dword_8089344:    .word 0x80144078, 0xD258, 0x80344078, 0xD260, 0x80544078
    .word 0xD268, 0x40144088, 0xD270, 0x40344088, 0xD274
    .word 0x0
.endfunc // sub_8089280

.func
.thumb_func
sub_8089370:
    push {r4-r7,lr}
    ldr r1, [pc, #0x8089388-0x8089372-2] // =dword_808938C
    lsl r0, r0, #3
    add r1, r1, r0
    ldr r0, [r1]
    ldr r1, [r1,#4]
    mov r2, #0
    mov r3, #1
    bl sub_802FE28
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8089388:    .word dword_808938C
dword_808938C:    .word 0x40DC0004, 0xD250, 0x40DC008C, 0xD250, 0x4004008C
    .word 0xD250, 0x40040004, 0xD250, 0x40700000, 0xD250
    .word 0x40E00049, 0xD250, 0x40700090, 0xD250, 0x40000049
    .word 0xD250, 0x206003F, 0xFF271EFF, 0x4B07080C, 0x80893F5
    .word 0x273CFF02, 0x70808FF, 0x746FF2A, 0x3C00043F, 0xE4154000
    .word 0x80893, 0x2020B5F0, 0xF8D3F77A, 0xFEB6F7AB, 0x6BDB4653
    .word 0x490F8898, 0xD1134288, 0x28237998, 0x2006D110, 0xF7A52116
    .word 0xD103FEA5, 0xF7AC2000, 0xE007F817, 0x211A2006, 0xFE9CF7A5
    .word 0x2001D102, 0xF80EF7AC, 0x21402007, 0xFE6AF7A5, 0xF868F0B9
    .word 0xBDF02000, 0x290, 0x3E06003F, 0x87DE48C, 0x1731FF29
    .word 0x4001FF02, 0x4704FF04, 0x204FF00, 0xFF271EFF, 0x2070808
    .word 0xFF3A14FF, 0x280040A, 0xFF2A1EFF, 0xFF2A0744, 0x43F0745
    .word 0x0
dword_8089480:    .word 0x20, 0x18000000, 0x1C0800, 0x0
    .word off_8001800
dword_8089494:    .word 0xC018C000, 0x80000F8, 0x60FCC000, 0x80000E6, 0x800F4000
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
    .word 0x3E06003F, 0x87DE48C, 0x4B01FF02, 0x80895A9, 0x6E00081C
    .word 0x3F080895, 0x140004, 0x27000000, 0x7080CFF, 0x3F3CFF02
    .word 0xFF044044, 0xFF004704, 0xFF004104, 0x1, 0x29000000
    .word 0x290744FF, 0x280740FF, 0x804CFFFF, 0x0
    .word 0x43F3B00, 0x0
.endfunc // sub_8089370

.func
.thumb_func
sub_80895A8:
    push {r4-r7,lr}
    mov r7, #0x70 
    add r7, r7, r5
    ldrb r0, [r5]
    ldr r1, [pc, #0x80895bc-0x80895b0-4] // =jt_80895C0
    ldr r0, [r1,r0]
    mov lr, pc
    bx r0
    tst r0, r0
    pop {r4-r7,pc}
off_80895BC:    .word jt_80895C0
jt_80895C0:    .word sub_808964C+1
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
.endfunc // sub_80895A8

.func
.thumb_func
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
    add r4, r0, #0
    bl sub_8142990
    add r1, r4, #0
    bl sub_8142896
    bl sub_809E2AE
    bl sub_809E2B8
    ldr r1, [pc, #0x80896a4-0x8089686-2] // =unk_80896A8
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
off_80896A4:    .word unk_80896A8
unk_80896A8:    .byte 0xFF
    .byte 0x29 
    .byte 0xFF
    .byte 0x2A 
    .byte 0xFF
    .byte 0x2B 
    .byte 0xFF
    .byte 0x2C 
.endfunc // sub_808964C

.func
.thumb_func
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
.endfunc // sub_80896B0

.func
.thumb_func
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
.endfunc // sub_80896C4

.func
.thumb_func
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
.endfunc // sub_80896D4

.func
.thumb_func
sub_8089704:
    push {r4-r7,lr}
    mov r7, r10
    ldr r7, [r7,#4]
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
    bl sound_play
    mov r4, #2
    b loc_808978C
loc_808972E:
    b loc_808978C
loc_8089730:
    mov r0, #0x69 
    bl sound_play
    b loc_808978C
loc_8089738:
    mov r0, #2
    tst r0, r7
    beq loc_8089748
    mov r0, #0x68 
    bl sound_play
    mov r4, #3
    b loc_808978C
loc_8089748:
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r7, [r7,#4]
    mov r0, #0x40 
    tst r0, r7
    beq loc_808976C
    mov r0, #0x66 
    bl sound_play
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
    bl sound_play
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
    add r0, r4, #0
    tst r0, r0
    pop {r4-r7,pc}
.endfunc // sub_8089704

.func
.thumb_func
sub_8089792:
    push {r4-r7,lr}
    bl sub_81421D0
    add r0, #2
    bl sub_8089CA4
    mov r0, #0x14
    strb r0, [r5]
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_8089792

.func
.thumb_func
sub_80897A6:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne loc_80897E4
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_80897E4
    bl sub_8045F4C
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
.endfunc // sub_80897A6

.func
.thumb_func
sub_80897E8:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_8089804
    bl sub_8089CB4
    beq loc_8089804
    mov r0, #4
    mov r1, #0xff
    bl engine_setScreeneffect
    mov r0, #0x24 
    strb r0, [r5]
loc_8089804:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_80897E8

.func
.thumb_func
sub_8089808:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8089822
    mov r0, #0
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #5
    bl sub_8089CB0
    mov r0, #0x28 
    strb r0, [r5]
loc_8089822:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_8089808

.func
.thumb_func
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
.endfunc // sub_8089826

.func
.thumb_func
sub_808983A:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
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
.endfunc // sub_808983A

.func
.thumb_func
sub_808985A:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8142C20
    add r4, r0, #0
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
.endfunc // sub_808985A

.func
.thumb_func
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
.endfunc // sub_808989C

.func
.thumb_func
sub_80898B2:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
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
.endfunc // sub_80898B2

.func
.thumb_func
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
.endfunc // sub_80898E8

.func
.thumb_func
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
.endfunc // sub_80898FC

.func
.thumb_func
sub_808991C:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_808994E
    bl sub_8089CB4
    beq loc_808994E
    bl sub_8142B58
    bl sub_809E2AE
    bl sub_809E2B8
    ldr r1, [pc, #0x8089954-0x8089938-4] // =unk_8089958
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
off_8089954:    .word unk_8089958
unk_8089958:    .byte 0xFF
    .byte 0x2E 
    .byte 0xFF
    .byte 0x2F 
    .byte 0xFF
    .byte 0x30 
    .byte 0xFF
    .byte 0x31 
.endfunc // sub_808991C

.func
.thumb_func
sub_8089960:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne loc_808997A
    bl sub_8089CB4
    beq loc_808997A
    mov r0, #4
    mov r1, #0xff
    bl engine_setScreeneffect
    mov r0, #0x4c 
    strb r0, [r5]
loc_808997A:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_8089960

.func
.thumb_func
sub_808997E:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_8089998
    mov r0, #0
    mov r1, #0x10
    bl engine_setScreeneffect
    mov r0, #5
    bl sub_8089CB0
    mov r0, #0x50 
    strb r0, [r5]
loc_8089998:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_808997E

.func
.thumb_func
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
    bl getPETNaviSelect
    bl sub_80010D4
    tst r0, r0
    beq loc_80899B2
    mov r0, #0x1e
    bl sub_8089CB0
loc_80899D4:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_808999C

.func
.thumb_func
sub_80899D8:
    push {r4-r7,lr}
    bl engine_isScreeneffectAnimating
    beq loc_80899EE
    bl sub_8089CB4
    beq loc_80899EE
    bl sub_8142BF4
    mov r0, #0x58 
    strb r0, [r5]
loc_80899EE:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_80899D8

.func
.thumb_func
sub_80899F2:
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8142C20
    add r4, r0, #0
    bl sub_814216E
    cmp r0, r4
    bne loc_8089A0C
    bl sub_8089CDC
    mov r0, #0x18
    strb r0, [r5]
loc_8089A0C:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_80899F2

.func
.thumb_func
sub_8089A10:
    push {r4-r7,lr}
    bl sub_8089CB4
    beq loc_8089A36
    bl sub_81426CE
    ldr r1, [pc, #0x8089a3c-0x8089a1c-4] // =off_8089A40
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
off_8089A3C:    .word off_8089A40
off_8089A40:    .word dword_8089494
    .word dword_8089494+8
    .word dword_8089494+0x10
    .word dword_8089494+0x18
    .word dword_8089494+0x20
    .word dword_8089494+0x28
    .word dword_8089494+0x30
    .word dword_8089494+0x38
.endfunc // sub_8089A10

.func
.thumb_func
sub_8089A60:
    push {r4-r7,lr}
    bl sub_8089CB4
    beq loc_8089AC6
    bl sub_81427CE
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    bl sub_814219C
    str r0, [r7,#0x10]
    bl sub_81422B4
    mov r0, #7
    mov r1, #0x40 
    bl sub_802F110
    mov r0, #2
    mov r1, #0x25 
    bl sub_802F12C
    mov r0, r10
    ldr r0, [r0,#0x3c]
    mov r1, #0
    strb r1, [r0,#0x15]
    mov r0, #0
    mov r1, #0x28 
    bl sub_802F164
    bne loc_8089ABA
    bl sub_81426CE
    cmp r0, #6
    bge loc_8089ABA
    bl sub_8035408
    mov r0, #0x65 
    add r0, #0xff
    bl sound_play
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
.endfunc // sub_8089A60

.func
.thumb_func
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
.endfunc // sub_8089ACA

.func
.thumb_func
sub_8089AE8:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
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
.endfunc // sub_8089AE8

.func
.thumb_func
sub_8089B2E:
    push {r4-r7,lr}
    bl sub_8089CB4
    beq loc_8089B50
    mov r0, #2
    ldr r1, [r7,#0x10]
    bl sub_8045EDC
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
.endfunc // sub_8089B2E

.func
.thumb_func
sub_8089B54:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_8089B7A
    bl sub_8089CB4
    beq loc_8089B7A
    mov r0, #4
    bl sub_809E2AE
    bl sub_809E2B8
    bl sub_809E13C
    bl reqBBS_8140A0C
    mov r0, #0x18
    strb r0, [r5]
loc_8089B7A:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_8089B54

.func
.thumb_func
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
.endfunc // sub_8089B7E

.func
.thumb_func
sub_8089B94:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_8089BA6
    mov r0, #1
    strb r0, [r5,#8]
    mov r0, #0
    pop {r4-r7,pc}
loc_8089BA6:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_8089B94

.func
.thumb_func
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
.endfunc // sub_8089BAA

.func
.thumb_func
sub_8089BC0:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_8089BE0
    mov r0, #7
    mov r1, #0x45 
    bl sub_802F110
    mov r0, #0
    strb r0, [r5,#8]
    mov r0, #0x1e
    bl sub_8089CB0
    mov r0, #0x1c
    strb r0, [r5]
loc_8089BE0:
    mov r0, #1
    pop {r4-r7,pc}
.endfunc // sub_8089BC0

.func
.thumb_func
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
.endfunc // sub_8089BE4

.func
.thumb_func
sub_8089BFA:
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
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
.endfunc // sub_8089BFA

.func
.thumb_func
sub_8089C16:
    push {r4-r7,lr}
    ldrb r0, [r5,#0x13]
    tst r0, r0
    bne loc_8089C74
    mov r0, #1
    strb r0, [r5,#8]
    bl getPETNaviSelect
    bl sub_80010D4
    tst r0, r0
    bne loc_8089C4A
    strb r0, [r5,#8]
    bl getPETNaviSelect
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
.endfunc // sub_8089C16

.func
.thumb_func
sub_8089C78:
    push {r4-r7,lr}
    bl sub_8089CB4
    beq loc_8089C9A
    bl sub_8036FAA
    mov r0, #0
    strb r0, [r5,#0x13]
    bl sub_81426CE
    ldr r1, [pc, #0x8089ca0-0x8089c8c-4] // =dword_8089494+64
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
off_8089CA0:    .word dword_8089494+0x40
.endfunc // sub_8089C78

.func
.thumb_func
sub_8089CA4:
    push {r4-r7,lr}
    add r1, r0, #0
    ldr r0, [r5,#0x30]
    bl chatbox_runScript
    pop {r4-r7,pc}
.endfunc // sub_8089CA4

.func
.thumb_func
sub_8089CB0:
    strh r0, [r5,#0x18]
    mov pc, lr
.endfunc // sub_8089CB0

.func
.thumb_func
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
.endfunc // sub_8089CB4

.func
.thumb_func
sub_8089CC4:
    push {r4-r7,lr}
    bl sub_81429CA
    ldr r0, [pc, #0x8089cd8-0x8089cca-2] // =dword_8089480
    str r0, [r5,#0x3c]
    bl sub_8036F98
    mov r0, #1
    strb r0, [r5,#0x13]
    pop {r4-r7,pc}
off_8089CD8:    .word dword_8089480
.endfunc // sub_8089CC4

.func
.thumb_func
sub_8089CDC:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8089cf4-0x8089cde-2] // =dword_8089480
    str r0, [r5,#0x3c]
    bl sub_8036F98
    mov r0, #1
    strb r0, [r5,#0x13]
    bl sub_8089D0E
    bl sub_8089D44
    pop {r4-r7,pc}
dword_8089CF4:    .word 0x808948A
.endfunc // sub_8089CDC

.func
.thumb_func
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
.endfunc // sub_8089CF8

.func
.thumb_func
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
.endfunc // sub_8089D0E

.func
.thumb_func
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
.endfunc // sub_8089D26

.func
.thumb_func
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
.endfunc // sub_8089D44

/*For debugging purposes, connect comment at any range!*/
