.include "asm28.inc"

.thumb
sub_8098BE8:
    push {r4-r7,lr}
    ldr r0, [pc, #0x8098c1c-0x8098bea-2] // =0x1CA0
    ldrb r1, [r5,#6]
    cmp r1, #0xff
    beq loc_8098C16
    add r0, r0, r1
    bl sub_802F238
    ldrb r0, [r5,#7]
    tst r0, r0
    beq loc_8098C16
    ldr r0, [pc, #0x8098c20-0x8098bfe-2] // =0x1D20
    ldrb r1, [r5,#6]
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    ldr r0, [pc, #0x8098c24-0x8098c0a-2] // =0x1DA0
    ldrb r1, [r5,#6]
    add r0, r0, r1
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
loc_8098C16:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_8098C1C:    .word 0x1CA0
dword_8098C20:    .word 0x1D20
dword_8098C24:    .word 0x1DA0
off_8098C28:    .word Undocumented_GreenSwap
    .word 0x0, 0x0, 0x0
    .word 0xFF08080C, 0x4000105, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x4000003, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x4000206, 0x0, 0x0, 0x0
    .word 0xFF041004, 0x4B06003F, 0x8098CCD, 0x8BFF051C, 0x3A08098C
    .word 0x2800405, 0x6271EFF, 0x4C07FFFF, 0x80, 0x9F150000
    .word 0x3F08098C, 0x3F0004, 0x8CCD4B06, 0x51C0809, 0x98CB5FF
    .word 0x4053A08, 0x1EFF0280, 0xFFFF0627, 0x814C07, 0x0
// end of function sub_8098BE8

    ldmia r1!, {r0,r2,r4}
    lsr r4, r1, #6
    sub r7, #8
// <mkdata>
    .hword 0x4 // mov r4, r0
    ldrb r1, [r5,#4]
    ldr r0, [pc, #0x8098cf8-0x8098cce-2] // =off_8098C28
    mov r2, #0x14
    mul r2, r1
    add r0, r0, r2
    str r0, [r5,#0x34]
    ldrb r1, [r0,#0x13]
    strb r1, [r5,#5]
    ldrb r1, [r0,#0x10]
    strb r1, [r5,#6]
    ldrb r1, [r0,#0x11]
    strb r1, [r5,#7]
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldrb r1, [r0,#0x12]
    cmp r1, #0xff
    beq loc_8098CF4
    strb r1, [r2,#0x16]
    mov r1, #0xff
    strb r1, [r2,#0x17]
loc_8098CF4:
    mov r0, #0
    mov pc, lr
off_8098CF8:    .word off_8098C28
    .word InterruptEnableRegister+1
    .word 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x41B, 0xFFFFFFFF, 0x4000802, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x455, 0xFFFFFFFF, 0x4000201, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x511, 0xFFFFFFFF, 0x4000290, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x601, 0xFF012020, 0x4000290, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x62D, 0xFFFFFFFF, 0x4000002, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0x811, 0xFFFF3032, 0x4000802, 0x0, 0x0, 0x0
    .word 0xFF0C020C, 0xC0B, 0xFFFFFFFF, 0x4000201, 0x0, 0x0, 0x0
dword_8098DD0:    .word 0xFF0C020C, 0xE11, 0xFFFFFFFF, 0x2906003F, 0x3E1731FF
    .word 0x2033404, 0x414FF3A, 0x19800480, 0x1B171FFF, 0x4B08098E
    .word 0x8098E25, 0x501EFF02, 0x6271F08, 0xFF02FFFF, 0x6D4B0778
    .word 0x4C08098E, 0x80, 0x20150000, 0x1508098E, 0x8098E20
    .word 0x43F, 0x7929B5F0, 0x221C4C0F, 0x18A4434A, 0x7C21636C
    .word 0x7C6171A9, 0x465271E9, 0x7CA16BD2, 0xD00229FF, 0x21FF7591
    .word 0x8AA075D1, 0xD0024200, 0xF7961C00, 0x8AE0F95F, 0xD0024200
    .word 0xF7961C00, 0x2000F967, 0xBDF0, 0x8098CFC, 0x4657B5F0
    .word 0x79296BFF, 0x221C4C08, 0x18A4434A, 0x28FF7E20, 0x71B8D000
    .word 0x28FF7E60, 0x71F8D000, 0x28FF7EA0, 0x7238D000, 0xBDF02000
    .word 0x8098CFC, 0x887A3B84, 0x1000700, 0xFFDC0138, 0x1380000
    .word 0xFFD0, 0x887A3B84, 0x1000700, 0xFECEFFE8, 0xFFE80000
    .word 0xFEC2, 0x887A3B84, 0x1000700, 0xFF5EFFFA, 0xFFFA0000
    .word 0xFF52, 0x887A3B84, 0x1000700, 0xD0FF48, 0xFF480000
    .word 0xC4, 0x202DA04, 0x1000107, 0x240004, 0x100000
    .word 0x24, 0x202DA04, 0x1000113, 0x240004, 0x100000
    .word 0x24, 0x202FA04, 0x1000704, 0xEFFFA, 0xFFFA0010
    .word 0x100002, 0x202FA04, 0x100070E, 0xEFFFA, 0xFFFA0010
    .word 0x100002, 0x202DA04, 0x100070F, 0xFF7600E2, 0xE20080
    .word 0x80FF6A, 0x202DA04, 0x1000115, 0xBEFFE8, 0xFFF40000
    .word 0xBE, 0x202DA04, 0x100050F, 0xFF34FFC0, 0xFFB40040
    .word 0x40FF34, 0x202DA04, 0x1000315, 0xFF1AFE8A, 0xFE8A0020
    .word 0x20FF26, 0x202FA04, 0x1000711, 0x24FF5C, 0xFF5C0000
    .word 0x18, 0x202FA04, 0x100071A, 0x24FF5C, 0xFF5C0000
    .word 0x18, 0x202FA04, 0x1000715, 0xFEF8004A, 0x460040
    .word 0x40FEEA, 0x202FA04, 0x100031A, 0xD8FEC8, 0xFECA0000
    .word 0xE6, 0x202FA04, 0x1000115, 0x3CFF84, 0xFF920040
    .word 0x400040, 0x202FA04, 0x100071A, 0xFFA000E0, 0xDE0080
    .word 0x80FF92, 0x202FA04, 0x1000708, 0x1CFF9C, 0xFF9C0000
    .word 0x10, 0x202FA04, 0x1000112, 0xFF78FF4C, 0xFF54FFC0
    .word 0xFFC0FF78, 0x202FA04, 0x100070E, 0xFEF0FFC6, 0xFFC60080
    .word 0x80FEE4, 0x202FA04, 0x1000718, 0x30FE06, 0xFE060000
    .word 0x24, 0x202FA04, 0x100010E, 0xFF64FEC6, 0xFED20000
    .word 0xFF64, 0x202FA04, 0x100071C, 0x1CFF9C, 0xFF9C0000
    .word 0x10, 0x202FA04, 0x1000126, 0xFF78FF4C, 0xFF54FFC0
    .word 0xFFC0FF78, 0x202DA04, 0x11B0000, 0x8FFF8, 0xFFF80000
    .word 0x8, 0x202FA04, 0x100010A, 0x240004, 0x100000
    .word 0x24, 0x2906003F, 0xC1731FF, 0xFF061C07, 0x80990CF
    .word 0x3A14FF02, 0x2880406, 0x3D4B1EFF, 0x3F080991, 0x4
    .word 0x2906003F, 0x21731FF, 0x654B01FF, 0x2080991, 0xFF4E1EFF
    .word 0x8FF27FF, 0x61C0708, 0x99114FF, 0x1EFF0208, 0x8804063A
    .word 0x1401081C, 0x3D080991, 0x8099114, 0x809911F, 0x4B14FF02
    .word 0x809913D, 0x200043F, 0xFF2714FF, 0x4B07080C, 0x80991E1
    .word 0x1715FF2A, 0x273CFF02, 0x70808FF, 0x43F, 0x88A8B500
    .word 0xFAEDF771, 0xF76C2101, 0x88A8FD3F, 0xF86FF79C, 0x420079E8
    .word 0x202CD003, 0xF76D2110, 0x2000F889, 0xBD00, 0x79A8B5F0
    .word 0x21144F1C, 0x187F4341, 0x42006838, 0xF79ED002, 0x6328FCAB
    .word 0x71A87938, 0x210179F8, 0xD0244208, 0xF0057978, 0x79B8F890
    .word 0x18407979, 0xFFD2F004, 0x210A2008, 0x5E38220C, 0x5EBA5E79
    .word 0x4090400, 0xF0040412, 0x2000FFFB, 0xFFFFF796, 0x2110200E
    .word 0x5E382212, 0x5EBA5E79, 0x4090400, 0xF7970412, 0x2017F809
    .word 0xF7952115, 0x79F8FFAD, 0x722809C0, 0xBDF02000, 0x8098E9C
    .word 0x2001B5F0, 0x6BC94651, 0x311C6989, 0xFFE1F796, 0xBDF02000
unk_80991F4:    .byte 0x3F 
    .byte 0
    .byte 6
    .byte 0x29 
    .byte 0xFF
    .byte 0x31 
    .byte 0x17
    .byte 0x47 
dword_80991FC:    .word 0x4B04FF00, 0x8099219, 0x554B8004, 0x400803FD, 0x4704FF04
    .word 0x3F04FF00, 0x4, 0xF767B5F0, 0x2800FF4C, 0x4650D12F
    .word 0x79006BC0, 0xDA0E2880, 0x21292017, 0xFF98F795, 0x2017D125
    .word 0xF795211D, 0xD020FF93, 0x212A2017, 0xFF8EF795, 0xF767D11B
    .word 0x2125FF34, 0xFA58F77A, 0xD1062801, 0xF79E480E, 0x2100FC47
    .word 0xF890F7A7, 0xF767E014, 0x215FFF26, 0xFA4AF77A, 0xD1062801
    .word 0xF79E4808, 0x2100FC39, 0xF882F7A7, 0xF7A6E006, 0x4650FD5B
    .word 0x7D406BC0, 0xF872F7A7, 0xBDF02000, 0x88738B24, 0x8873A528
    .word 0x0
    .word 0x1FF0134, 0x440076, 0x820000, 0x44, 0x0
    .word 0x1FF0136, 0x440076, 0x820000, 0x44, 0x2033404, 0x1FF0506
    .word 0x164FED8, 0xFEC40000, 0x164, 0x202DA04, 0x1FF070D, 0xFF7600E2
    .word 0xE20080, 0x80FF6A, 0x202DA04, 0x1FF0113, 0xBEFFE8, 0xFFF40000
    .word 0xBE, 0x202DA04, 0x1FF050D, 0xFF34FFC0, 0xFFB40040, 0x40FF34
    .word 0x202DA04, 0x1FF0313, 0xFF1AFE8A, 0xFE8A0020, 0x20FF26, 0x202FA04
    .word 0x1FF070D, 0xFEF0FFC6, 0xFFC60080, 0x80FEE4, 0x202FA04, 0x1FF0717
    .word 0x30FE06, 0xFE060000, 0x24, 0x202FA04, 0x1FF0134, 0xFFF200D6
    .word 0xE20000, 0xFFF2, 0x202FA04, 0x1FF0135, 0xFFF200D6, 0xE20000
    .word 0xFFF2, 0x202FA04, 0x1FF0107, 0xB600D0, 0xDC0000, 0xB6
    .word 0x202FA04, 0x1FF0101, 0xFFF20056, 0x620000, 0xFFF2, 0x202FA04
    .word 0x1FF010B, 0xFFF20056, 0x560000, 0xFFF2, 0x202FA04, 0x1FF010B
    .word 0xFFF20056, 0x560000, 0xFFF2, 0x202FA04, 0x1FF010B, 0xFFF20056
    .word 0x560000, 0xFFF2, 0x202FA04, 0x1FF010C, 0xFFF20056, 0x560000
    .word 0xFFF2, 0x202FA04, 0x1FF0101, 0xFFF20056, 0x560000, 0xFFF2
    .word 0x202FA04, 0x1FF073E, 0xC6FECC, 0xFECC0000, 0xBA, 0x202FA04
    .word 0x1FF070C, 0xFFC000C4, 0xC40000, 0xFFB4, 0x202FA04, 0x1FF0721
    .word 0xFF7A00E2, 0xE20080, 0x80FF6E, 0x202FA04, 0x1FF0710, 0xFFAC007C
    .word 0x7C0000, 0xFFA0, 0x202FA04, 0x1FF0711, 0xFFAC007C, 0x7C0000
    .word 0xFFA0, 0x202FA04, 0x1FF0147, 0xFFA80150, 0x1500040, 0x40FFA8
    .word 0x202FA04, 0x1FF0708, 0xFF6AFFCE, 0xFFCE0000, 0xFF5E, 0x202FA04
    .word 0x1FF0709, 0xFF6AFFCE, 0xFFCE0000, 0xFF5E, 0x202FA04, 0x1FF070C
    .word 0xFF6AFFEE, 0xFFEE0000, 0xFF5E, 0x202FA04, 0x1FF070D, 0xFF6AFFEE
    .word 0xFFEE0000, 0xFF5E, 0x202FA04, 0x1FF0710, 0xFF6A000C, 0xC0000
    .word 0xFF5E, 0x202FA04, 0x1FF0711, 0xFF6A000C, 0xC0000, 0xFF5E
    .word 0x202FA04, 0x1FF0714, 0xFF6A002E, 0x2E0000, 0xFF5E, 0x202FA04
    .word 0x1FF0715, 0xFF6A002E, 0x2E0000, 0xFF5E, 0x202FA04, 0x1FF0718
    .word 0xFF6A0050, 0x500000, 0xFF5E, 0x202FA04, 0x1FF0719, 0xFF6A0050
    .word 0x500000, 0xFF5E, 0x202FA04, 0x1FF0307, 0x7A000E, 0xE0000
    .word 0x86, 0x202FA04, 0x1FF073D, 0x140006A, 0x6A0040, 0x400134
    .word 0x202FA04, 0x1FF0135, 0x98001A, 0x260000, 0x98, 0x202FA04
    .word 0x1FF010D, 0xB0007E, 0x860050, 0x5000B0, 0x202FA04, 0x1FF070D
    .word 0xFEDA00AE, 0xAE0010, 0x10FECE, 0x202FA04, 0x1FF0103, 0xFFF400D4
    .word 0xE00000, 0xFFF4, 0x202FA04, 0x1FF010D, 0xA2011A, 0x1260000
    .word 0xA2, 0x202FA04, 0x1FF0118, 0xFFF20076, 0x760000, 0xFFF2
    .word 0x202FA04, 0x1FF0118, 0xFF520054, 0x540000, 0xFF52, 0x202FA04
    .word 0x1FF0118, 0x920036, 0x360000, 0x92, 0x202FA04, 0x1FF0118
    .word 0xF40014, 0x140000, 0xF4, 0x202FA04, 0x1FF0703, 0xFF2C000C
    .word 0xC0000, 0xFF2C, 0x202FA04, 0x1FF0503, 0xFFF2FFA6, 0xFFA60000
    .word 0xFFF2, 0x202FA04, 0x1FF0303, 0xDAFFEC, 0xFFEC0000, 0xDA
    .word 0x202FA04, 0x1FF0738, 0xFFF6002C, 0x2C0020, 0x20FFF6, 0x202FA04
    .word 0x1FF0738, 0xFFB8FFAA, 0xFFAA0020, 0x20FFB8, 0x202FA04, 0x1FF0338
    .word 0x54FF6A, 0xFF6A0020, 0x200054, 0x202FA04, 0x1FF0138, 0x52FFAA
    .word 0xFFAA0020, 0x200052, 0x202FA04, 0x1FF0738, 0xFFB8FF6A, 0xFF6A0020
    .word 0x20FFB8, 0x202FA04, 0x1FF076F, 0xFF4600D2, 0xD20000, 0xFF3A
    .word 0x202FA04, 0x1FF0174, 0x10C003C, 0x480000, 0x10C, 0x202FA04
    .word 0x1FF012E, 0x740018, 0x240000, 0x74, 0x202FA04, 0x1FF0710
    .word 0xFF420098, 0x980000, 0xFF36, 0x202FA04, 0x1FF0113, 0xFFA6FF60
    .word 0xFF6C0000, 0xFFA6, 0x202FA04, 0x1FF010B, 0xA007C, 0x880000
    .word 0xA, 0x202FA04, 0x1FF0754, 0xFF3AFFE4, 0xFFE40000, 0xFF2E
    .word 0x202FA04, 0x1FF0753, 0xFF3AFFE4, 0xFFE40000, 0xFF2E, 0x202FA04
    .word 0x1FF0143, 0x240004, 0x100000, 0x24, 0x202FA04, 0x1FF0145
    .word 0x240004, 0x100000, 0x24, 0x202FA04, 0x1FF0743, 0x1CFF9C
    .word 0xFF9C0000, 0x10, 0x202FA04, 0x1FF0745, 0x1CFF9C, 0xFF9C0000
    .word 0x10, 0x202FA04, 0x1FF0743, 0xEFFFA, 0xFFFA0010, 0x100002
    .word 0x202FA04, 0x1FF0745, 0xEFFFA, 0xFFFA0010, 0x100002, 0x202FA04
    .word 0x1FF0743, 0x24FF5C, 0xFF5C0000, 0x18, 0x202FA04, 0x1FF0745
    .word 0x24FF5C, 0xFF5C0000, 0x18, 0x202FA04, 0x1FF0143, 0xFF78FF4C
    .word 0xFF54FFC0, 0xFFC0FF78, 0x202FA04, 0x1FF0145, 0xFF78FF4C, 0xFF54FFC0
    .word 0xFFC0FF78, 0x202FA04, 0x1FF0725, 0x50008E, 0x8E0000, 0x44
    .word 0x202FA04, 0x1FF0727, 0x50008E, 0x8E0000, 0x44, 0x202FA04
    .word 0x1FF010C, 0x240004, 0x100000, 0x24, 0x2033404, 0x1FF0514
    .word 0x1BCFF02, 0xFEF20000, 0x1BC, 0x2033404, 0x1FF0516, 0x11CFEA2
    .word 0xFE920000, 0x11C, 0x2033404, 0x1FF0718, 0xFF3AFF04, 0xFF040040
    .word 0x40FF2A, 0x2033404, 0x1FF031A, 0xFF5E0086, 0x860040, 0x40FF6E
    .word 0x2033404, 0x1FF011C, 0xFFDA0086, 0x960000, 0xFFDA, 0x2033404
    .word 0x1FF031E, 0x15C0086, 0x860000, 0x16C, 0x202FA04, 0x1FF0734
    .word 0xFEEA000C, 0xC0000, 0xFEDE, 0x202FA04, 0x1FF0735, 0xFEEA000C
    .word 0xC0000, 0xFEDE, 0x202FA04, 0x1FF050C, 0xFFF0FF46, 0xFF3A0000
    .word 0xFFF0, 0x202FA04, 0x1FF050D, 0xFFF0FF46, 0xFF3A0000, 0xFFF0
    .word 0x202FA04, 0x1FF030C, 0xF8000E, 0xE0000, 0x104, 0x202FA04
    .word 0x1FF030D, 0xF8000E, 0xE0000, 0x104, 0x202FA04, 0x1FF0734
    .word 0xFF08FF90, 0xFF900000, 0xFEFC, 0x202FA04, 0x1FF0735, 0xFF08FF90
    .word 0xFF900000, 0xFEFC, 0x202DA04, 0x1FF071A, 0xFFDC0054, 0x540000
    .word 0xFFD0, 0x202DA04, 0x1FF011B, 0xFF9C, 0xFFA80000, 0x0
    .word unk_202DA04
    .word 0x1FF031C, 0xCEFF50, 0xFF500000, 0xDA, 0x202DA04, 0x1FF071D
    .word 0xFF70FFD4, 0xFFD40000, 0xFF64, 0x202DA04, 0x1FF011E, 0x420076
    .word 0x820000, 0x42, 0x202DA04, 0x1FF070B, 0x42FF72, 0xFF720000
    .word 0x36, 0x202DA04, 0x1FF010B, 0x72FFBE, 0xFFCA0000, 0x72
    .word 0x202DA04, 0x1FF0101, 0x42FFB6, 0xFFC20000, 0x42, 0x202DA04
    .word 0x1FF010B, 0x54FFC4, 0xFFD00000, 0x54, 0x202DA04, 0x1FF070C
    .word 0xFFF40044, 0x440000, 0xFFE8, 0x202DA04, 0x1FF0710, 0xFFAC000C
    .word 0xC0000, 0xFFA0, 0x202DA04, 0x1FF0311, 0x920092, 0x92FFE0
    .word 0xFFE0009E, 0x202DA04, 0x1FF0510, 0xFFFAFF8C, 0xFF800000, 0xFFFA
    .word 0x202DA04, 0x1FF0510, 0xB6FEA8, 0xFE9C0028, 0x2800B6, 0x202DA04
    .word 0x1FF0710, 0x3EFF5A, 0xFF5A0000, 0x32, 0x202DA04, 0x1FF0110
    .word 0xA2FFF6, 0x20000, 0xA2, 0x202DA04, 0x1FF0110, 0x4C009C
    .word 0xA80060, 0x60004C, 0x202DA04, 0x1FF0111, 0xFF580158, 0x1640000
    .word 0xFF58, 0x202DA04, 0x1FF0712, 0xFF320024, 0x2400A0, 0xA0FF26
    .word 0x202DA04, 0x1FF0310, 0xFFD0FFE0, 0xFFE00010, 0x10FFDC, 0x202DA04
    .word 0x1FF011A, 0xE4FFEA, 0xFFF60000, 0xE4, 0x202DA04, 0x1FF071B
    .word 0x60FF90, 0xFF900000, 0x54, 0x202DA04, 0x1FF071C, 0xFFC2FECC
    .word 0xFECC0000, 0xFFB6, 0x202DA04, 0x1FF011D, 0xFFA0004C, 0x580000
    .word 0xFFA0, 0x202DA04, 0x1FF050B, 0x10FF98, 0xFF8C0000, 0x10
    .word 0x202DA04, 0x1FF010B, 0x3CFFC2, 0xFFCE0000, 0x3C, 0x202DA04
    .word 0x1FF010B, 0x96FF52, 0xFF5E0000, 0x96, 0x202DA04, 0xFF04FF
    .word 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202DA04
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .word unk_202FA04
    .word 0x1FF031B, 0x10C0054, 0x540000, 0x118, 0x202FA04, 0x1FF070C
    .word 0x3E0050, 0x500000, 0x32, 0x202FA04, 0x1FF070D, 0x3E0050
    .word 0x500000, 0x32, 0x0
    .word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
    .word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
    .word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
    .word 0xFF04FF, 0x0, 0x0, 0x0, 0x0
    .word 0xFF04FF, 0x0, 0x0, 0x0
    .byte 0x3F 
    .byte 0
    .byte 6
    .byte 0x29 
    .byte 0xFF
    .byte 0x31 
    .byte 0x17
    .byte 0x29 
    .byte 0xFF
    .byte 0xC
    .byte 1
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0x4B 
    .byte 0x45 
    .byte 0x9D
    .byte 9
    .byte 8
    .byte 0x47 
    .word 0x3F00FF01, 0xFF051C1C, 0x8099D23, 0x271EFF02, 0x70808FF
    .word 0x3A1EFF02, 0x2800405, 0xFF271EFF, 0x4B07080C, 0x8099DAD
    .word 0x1715FF2A, 0x10CFF2A, 0x34A054A, 0x273CFF02, 0x70808FF
    .word 0x43F183F, 0x0
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    ldr r7, [pc, #0x8099da8-0x8099d48-4] // =dword_80991FC+160
    mov r1, #0x14
    mul r1, r0
    add r7, r7, r1
    ldr r0, [r7]
    tst r0, r0
    beq loc_8099D58
    str r0, [r5,#0x30]
loc_8099D58:
    ldrb r0, [r7,#4]
    strb r0, [r5,#5]
    ldrb r0, [r7,#7]
    tst r0, r0
    beq loc_8099DA2
    ldrb r0, [r7,#5]
    bl sub_809E2AE
    mov r0, #8
    mov r1, #0xa
    mov r2, #0xc
    ldrsh r0, [r7,r0]
    ldrsh r1, [r7,r1]
    ldrsh r2, [r7,r2]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    bl loc_809E1A4
    mov r0, #0
    bl sub_80301B2
    mov r0, #0xe
    mov r1, #0x10
    mov r2, #0x12
    ldrsh r0, [r7,r0]
    ldrsh r1, [r7,r1]
    ldrsh r2, [r7,r2]
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    lsl r2, r2, #0x10
    bl sub_80301DC
    mov r0, #0x17
    mov r1, #0x15
    bl sub_802F12C
loc_8099DA2:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8099DA8:    .word dword_80991FC+0xA0
    push {r4-r7,lr}
    mov r0, #1
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r1, [r1,#0x18]
    add r1, #0x1c
    bl sub_80301B2
    mov r0, #0
    pop {r4-r7,pc}
dword_8099DC0:    .word 0x2906003F, 0x3E1731FF, 0x873B9E0, 0x8004043A, 0x3F00043F
    .word 0xFF290600, 0x43E1731, 0x3A0202FA, 0x3F800404, 0x3F0004
    .word 0x31FF2906, 0xFF044017, 0xFF004704, 0xFA043E04, 0x43A0202
    .word 0x43F8004, 0x0
dword_8099E04:    .word 0x2906003F, 0x4B1731FF, 0x8099E2D, 0xC08FF27, 0xD1083E07
    .word 0x3D4B0873, 0x3A08099E, 0x2A800404, 0x3F1708FF, 0x4
    .word 0xF004B5F0, 0x3000FA43, 0xF982F004, 0xBDF02000, 0xF005B5F0
    .word 0x2290FDBE, 0x465658B8, 0x64F06AF6, 0xFF23F005, 0x65B16570
    .word 0x2000712A, 0xBDF0, 0xE2A2E2A0, 0xE2A6E2A4, 0xE2AAE2A8
    .word 0xE2A1E2AC
    .byte 0xA3
    .byte 0xE2
    .byte 0xA5
    .byte 0xE2
    .byte 0xA7
    .byte 0xE2
    .byte 0xA9
    .byte 0xE2
    .byte 0xAB
    .byte 0xE2
    .byte 0xAD
    .byte 0xE2
    .byte 0xA0
    .byte 0xE2
    .byte 0xA2
    .byte 0xE2
    .byte 0xA4
    .byte 0xE2
    .byte 0xA6
    .byte 0xE2
    .byte 0xA8
    .byte 0xE2
    .byte 0xAA
    .byte 0xE2
    .byte 0xA1
    .byte 0xE2
    .byte 0xA3
    .byte 0xE2
    .byte 0xA5
    .byte 0xE2
    .byte 0xA7
    .byte 0xE2
    .byte 0xA9
    .byte 0xE2
    .byte 0xAB
    .byte 0xE2
    .byte 0x16
    .byte 0
    .byte 0
    .byte 5
    .byte 0x16
    .byte 1
    .byte 1
    .byte 5
    .byte 0x16
    .byte 2
    .byte 2
    .byte 5
    .word 0xFFFFFFFF
dword_8099EA0:    .word 0x99FFD4B, 0x6003F08, 0x1731FF29, 0x4701FF02, 0x3E00FF01
    .word 0x86C580C, 0x1C58001B, 0x9EDF0201, 0x1B0C0809, 0x11C5800
    .word 0x99F4402, 0x43A3208, 0x614B8004, 0x3F0809A2, 0xFD554B04
    .word 0x4B000803, 0x809A02D, 0x9A03D4B, 0xA05D4B08, 0x794B0809
    .word 0x1B0809A0, 0x11C5900, 0x99F1402, 0x54B0108, 0x20809A1
    .word 0x614B01FF, 0x3B0809A2, 0x554B043F, 0x803FD, 0x9A1394B
    .word 0xA1B54B08, 0xFD4B0809, 0x1B0809A1, 0x11C5900, 0x99EEE02
    .word 0x54B0108, 0x20809A1, 0x614B01FF, 0x3B0809A2, 0x554B043F
    .word 0x803FD, 0x9A3BD4B, 0xA3CD4B08, 0xED4B0809, 0x4B0809A3
    .word 0x809A405, 0x7501091C, 0x4B08099F, 0x809A4B9, 0x4B01FF02
    .word 0x809A4ED, 0x4B043F3B, 0x803FD55, 0x1FF0200, 0x4D4B0804
    .word 0x1C0809A4, 0x9F5F0109, 0x214B0809, 0x1C0809A5, 0x9F7A0009
    .word 0x91C0809, 0x99FAF01, 0xA7854B08, 0xFF020809, 0xA4ED4B01
    .word 0x3F3B0809, 0xFD554B04, 0x4000803, 0xA75D4B88, 0x91C0809
    .word 0x99FD001, 0xA7B14B08, 0x91C0809, 0x99F9901, 0x91C08
    .word 0x8099F75, 0x9A6314B, 0xA6A54B08, 0xED4B0809, 0x1C0809A6
    .word 0x9F750109, 0xB94B0809, 0x20809A4, 0xED4B01FF, 0x3B0809A4
    .word 0x554B043F, 0x803FD, 0x2000B5F0, 0xFFDEF799, 0xF93EF000
    .word 0x71297229, 0x28327A28, 0xF793D102, 0xE001F8A4, 0xF86CF7A3
    .word 0xF7696728, 0xF769FCB1, 0x2000FD57, 0xBDF0, 0xF000B5F0
    .word 0x2020F955, 0x20006768, 0xBDF0, 0x6F68B5F0, 0x67683802
    .word 0xDC052815, 0x67682015, 0xF988F000, 0xBDF02000, 0xF984F000
    .word 0xBDF02001, 0x4805B5F0, 0xF7A668A9, 0x6F68F98F, 0xF97AF000
    .word 0x72682000, 0xBDF02000, 0x86C580C, 0x2080B5F0, 0xFF5EF7AB
    .word 0x2008D037, 0xFF5AF7AB, 0xF7ABD02E, 0x2800FF5F, 0xF7B0D12F
    .word 0x4F19F929, 0xFE32F7B1, 0x80F980B8, 0xF7872201, 0x200AFD24
    .word 0xF80EF7A3, 0x6BDB4653, 0x81988898, 0xFB70F7A5, 0x6AF64656
    .word 0x64F288BA, 0x88FA67EA, 0x20806532, 0x480D502A, 0xF7A6210F
    .word 0x2200F959, 0x80BA863A, 0x80EA80FA, 0x2028716A, 0x200160E8
    .word 0xE0047268, 0xF0006F68, 0x2001F939, 0x6F68BDF0, 0xF934F000
    .word 0xBDF02000, 0x200AC80, 0x86C580C, 0x2008B5F0, 0xFF18F7AB
    .word 0x2080D103, 0xFF14F7AB, 0x6F68D10B, 0x67683002, 0xDB062820
    .word 0x67682020, 0xF0006F68, 0x2000F91B, 0x6F68BDF0, 0xF916F000
    .word 0xBDF02001, 0x2000B5F0, 0xF79521F6, 0xD02FF811, 0x380168E8
    .word 0x60E8DB08, 0xDF062104, 0xD1274209, 0x38016F28, 0xE0236728
    .word 0xFFCAF7A2, 0x20006728, 0xF79421F5, 0xD01BFFFD, 0x71282020
    .word 0xF8CAF000, 0xFA76F7AC, 0xF7AC480D, 0x207CFA11, 0x21805828
    .word 0x22005869, 0xF07F2300, 0x4833FB3F, 0x22002158, 0xFB5EF07F
    .word 0x21F62000, 0xFFC6F794, 0xBDF02000, 0xF0006F68, 0x2001F8DB
    .word 0xBDF0, 0x8099E90, 0x7928B5F0, 0x28603010, 0x4656DD06
    .word 0x6CF26AF6, 0x6D3280EA, 0x2060716A, 0x49237128, 0x21581840
    .word 0xF07F2200, 0xF7ACFB3D, 0xF7ACF9EF, 0x6F68FA0B, 0xF8BCF000
    .word 0x21F52000, 0xFFBAF794, 0x2000D101, 0x2001BDF0, 0xBDF0
    .word 0x7928B5F0, 0x28003810, 0x2000DA00, 0x49147128, 0x21581840
    .word 0xF07F2200, 0xF7ACFB1F, 0xF7ACF9D1, 0x2008F9ED, 0xFE8CF7AB
    .word 0xF7A2D015, 0x1C07FF65, 0xDB032F0A, 0xFE8CF7AB, 0xD0052800
    .word 0x72682000, 0xF0006F68, 0xE004F88F, 0x72682001, 0xF0006F68
    .word 0x2000F889, 0x6F68BDF0, 0xF884F000, 0xBDF02001, 0xFFFFFFD0
    .word 0x2001B5F0, 0xFEACF799, 0xFAF2F767, 0xFB84F799, 0xFB77F769
    .word 0xFC1DF769, 0xFB8FF769, 0xFC35F769, 0xBDF02000, 0x6BDB4653
    .word 0x795A7919, 0x43110209, 0x24004A05, 0x42886810, 0x7911D101
    .word 0x3208E003, 0x2C303408, 0x46F7DBF6, 0x809A2AC, 0x104
    .word 0x0
    .word 0x501
    .word 0x6, 0x0
    .word 0x6, 0x400, 0x6, 0x9100, 0x32, 0x9301, 0xC, 0x4802B5F0
    .word 0xFC26F766, 0xBDF0, 0x809A2EC, 0x86C5530, 0x3001B20, 0x20, 0x86C52B4, 0x600D000
    .word 0x220, 0x0
.thumb
sub_809A308:
    push {lr}
    ldr r0, [pc, #0x809a314-0x809a30a-2] // =dword_809A318
    bl sub_8000B30
    pop {pc}
    .balign 4, 0x00
off_809A314:    .word dword_809A318
dword_809A318:    .word 0x886C7980, 0x2034E00
    .word unk_2033700
    .word 0x886C73D8, 0x2036500, 0x2033700, 0x0
// end of function sub_809A308

.thumb
sub_809A334:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809a340-0x809a336-2] // =dword_809A344
    bl sub_8000B30
    pop {r4-r7,pc}
    .byte 0, 0
off_809A340:    .word dword_809A344
dword_809A344:    .word 0x86C57EC, 0x3001B20, 0x20, 0x86C5550, 0x600D000, 0x220
    .word 0x0
// end of function sub_809A334

    push {r4-r7,lr}
    add r7, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x38]
    ldr r1, [r5,#0x70]
    str r1, [r0,#8]
    add r0, r7, #0
    mov r1, #0
    mov r2, #0
    ldr r3, [pc, #0x809a3a4-0x809a372-2] // =loc_86C54D4
    mov r4, #9
    mov r5, #5
    bl sub_80018C2
    add r0, r7, #1
    mov r1, #2
    mov r2, #0
    ldr r3, [pc, #0x809a3a8-0x809a382-2] // =dword_8099E04+88
    mov r4, #7
    mov r5, #2
    bl sub_80018C2
    ldr r0, [pc, #0x809a3ac-0x809a38c-4] // =dword_86C580C
    mov r1, #0x40 
    ldr r2, [pc, #0x809a3b0-0x809a390-4] // =unk_200EF40
    ldr r3, [pc, #0x809a3b4-0x809a392-2] // =0x600D400
    mov r4, #7
    mov r5, #1
    ldr r6, [pc, #0x809a3b8-0x809a398-4] // =dword_86A5D60
    mov r7, #4
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809A3A4:    .word loc_86C54D4
off_809A3A8:    .word dword_8099E04+0x58
off_809A3AC:    .word dword_86C580C
off_809A3B0:    .word unk_200EF40
dword_809A3B4:    .word 0x600D400
off_809A3B8:    .word dword_86A5D60
    push {r4-r7,lr}
    bl sub_809A334
    mov r0, #0x20 
    str r0, [r5,#0x74]
    mov r0, #0
    pop {r4-r7,pc}
// <mkdata>
    .hword 0x0 // mov r0, r0
    push {r4-r7,lr}
    ldr r0, [r5,#0x74]
    sub r0, #2
    str r0, [r5,#0x74]
    cmp r0, #0x15
    bgt loc_809A3E4
    mov r0, #0x15
    str r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0
    pop {r4-r7,pc}
loc_809A3E4:
    bl sub_809A80C
    mov r0, #1
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r0, [pc, #0x809a400-0x809a3ee-2] // =dword_86C580C
    ldr r1, [r5,#8]
    bl chatbox_runScript
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0
    pop {r4-r7,pc}
off_809A400:    .word dword_86C580C
    push {r4-r7,lr}
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #8
    bl sub_8045F3C
    beq loc_809A442
    bl sub_8045F4C
    cmp r0, #0
    bne loc_809A43A
    ldr r0, [pc, #0x809a448-0x809a41c-4] // =dword_86C580C
    mov r1, #0x33 
    bl chatbox_runScript
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F12C
    mov r0, #8
    mov r1, #0x84
    str r0, [r5,r1]
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0
    pop {r4-r7,pc}
loc_809A43A:
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    pop {r4-r7,pc}
loc_809A442:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809A448:    .word dword_86C580C
    push {r4-r7,lr}
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F164
    beq loc_809A488
    mov r0, #0x84
    ldr r0, [r5,r0]
    tst r0, r0
    beq loc_809A46C
    sub r0, #1
    mov r1, #0x84
    str r0, [r5,r1]
loc_809A46C:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrb r0, [r0,#2]
    mov r1, #2
    and r1, r0
    beq loc_809A488
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0x68 
    bl sound_play
    bl sub_8040818
    b loc_809A4AA
loc_809A488:
    mov r0, #8
    bl sub_8045F3C
    beq loc_809A4AE
    mov r0, r10
    ldr r0, [r0,#0x2c]
    ldr r0, [r0,#0x4c]
    mov r1, #0x88
    str r0, [r5,r1]
    bl sub_809A868
    ldr r0, [pc, #0x809a894-0x809a49e-2] // =dword_86C580C
    mov r1, #0x35 
    bl chatbox_runScript
    mov r0, #0
    strb r0, [r5,#9]
loc_809A4AA:
    mov r0, #0
    pop {r4-r7,pc}
loc_809A4AE:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
    .word unk_200AC80
    push {r4-r7,lr}
    mov r0, #8
    bl sub_8045F3C
    bne loc_809A4CA
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_809A4E2
loc_809A4CA:
    ldr r0, [r5,#0x74]
    add r0, #2
    str r0, [r5,#0x74]
    cmp r0, #0x20 
    blt loc_809A4E2
    mov r0, #0x20 
    str r0, [r5,#0x74]
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0
    pop {r4-r7,pc}
loc_809A4E2:
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #1
    pop {r4-r7,pc}
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0xf5
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F12C
    mov r0, #1
    bl sub_8033FC0
    bl sub_8001850
    bl sub_8033978
    bl sub_8003962
    bl sub_8003AB2
    bl sub_800399A
    bl sub_8003AEA
    mov r0, #0
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0x80
    bl sub_8045F3C
    beq loc_809A610
    mov r0, #0x20 
    bl sub_8045F3C
    beq loc_809A610
    bl sub_8045F4C
    cmp r0, #0
    bne loc_809A5FA
    mov r0, #0x88
    ldr r0, [r5,r0]
    bl loc_813D48C
    tst r0, r0
    beq loc_809A5EC
    cmp r0, #2
    beq loc_809A5EC
    cmp r1, #1
    beq loc_809A578
    cmp r1, #2
    beq loc_809A5A6
    str r2, [r5,#0x7c]
    mov r0, #0x80
    str r3, [r5,r0]
    mov r0, r10
    ldr r0, [r0,#0x2c]
    str r2, [r0,#0x4c]
    str r3, [r0,#0x50]
    add r0, r2, #0
    add r1, r3, #0
    mov r2, #1
    bl dword_8021AEC+2
    mov r0, #0x37 
    mov r1, #0x8c
    str r0, [r5,r1]
    b loc_809A5B8
loc_809A578:
    mov r0, r10
    ldr r0, [r0,#0x2c]
    str r2, [r0,#0x4c]
    cmp r2, #0x86
    bne loc_809A596
    ldr r4, [pc, #0x809a614-0x809a582-2] // =loc_809A628
    mov r6, #0
loc_809A586:
    ldrb r0, [r4,r6]
    cmp r0, #0xff
    beq loc_809A59E
    mov r1, #1
    bl sub_803CD98
    add r6, #1
    b loc_809A586
loc_809A596:
    add r0, r2, #0
    mov r1, #1
    bl sub_803CD98
loc_809A59E:
    mov r0, #0x38 
    mov r1, #0x8c
    str r0, [r5,r1]
    b loc_809A5B8
loc_809A5A6:
    mov r1, r10
    ldr r1, [r1,#0x2c]
    str r2, [r1,#0x4c]
    add r0, r2, #0
    bl sub_803D080
    mov r0, #0x39 
    mov r1, #0x8c
    str r0, [r5,r1]
loc_809A5B8:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrh r0, [r3,#4]
    strh r0, [r3,#0xc]
    bl sub_803F798
    bl sub_803F9E4
    mov r0, #1
    strb r0, [r5,#9]
    mov r0, #0x8a
    bl sound_play
    bl sub_809A880
    strh r0, [r5,#0x1a]
    mov r2, #0x88
    ldr r2, [r5,r2]
    ldr r1, [pc, #0x809a618-0x809a5dc-4] // =loc_809A624
    ldrb r1, [r1,r2]
    strh r1, [r5,#0xe]
    mov r1, #0xa
    strh r1, [r5,#0xc]
    svc 6
    strb r0, [r5,#0xf]
    b loc_809A60C
loc_809A5EC:
    ldr r0, [pc, #0x809a894-0x809a5ec-4] // =dword_86C580C
    mov r1, #0x36 
    bl chatbox_runScript
    mov r0, #2
    strb r0, [r5,#9]
    b loc_809A60C
loc_809A5FA:
    ldr r0, [pc, #0x809a894-0x809a5fa-2] // =dword_86C580C
    mov r1, #0x33 
    bl chatbox_runScript
    mov r0, #8
    mov r1, #0x84
    str r0, [r5,r1]
    mov r0, #0
    strb r0, [r5,#9]
loc_809A60C:
    mov r0, #0
    pop {r4-r7,pc}
loc_809A610:
    mov r0, #1
    pop {r4-r7,pc}
off_809A614:    .word loc_809A628
off_809A618:    .word loc_809A624
    .word unk_200AC80
    ldr r4, [r1,r0]
    lsr r4, r5, #1
loc_809A624:
    lsl r4, r0, #8
    lsl r2, r0, #8
loc_809A628:
    strh r0, [r0,#0xc]
    strh r2, [r0,#0x1c]
    strh r4, [r0,#0x2c]
    lsl r7, r7, #3
    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0xf6
    bl sub_802F164
    beq loc_809A694
    ldrh r0, [r5,#0xc]
    sub r0, #1
    blt loc_809A64E
    strh r0, [r5,#0xc]
    ldr r0, [r5,#0x70]
    ldrb r1, [r5,#0xf]
    sub r0, r0, r1
    str r0, [r5,#0x70]
    b loc_809A694
loc_809A64E:
    bl sub_802D15E
    str r0, [r5,#0x70]
    mov r0, #0
    mov r1, #0xf5
    bl sub_802F164
    beq loc_809A694
    mov r0, #0x20 
    strb r0, [r5,#4]
    bl sub_809A308
    bl sub_8046664
    ldr r0, [pc, #0x809a6a0-0x809a66a-2] // =0x8099E90
    bl sub_80465A0
    ldr r0, [r5,#0x7c]
    mov r1, #0x80
    ldr r1, [r5,r1]
    mov r2, #0
    mov r3, #0
    bl sub_811980C
    ldr r0, [pc, #0x809a758-0x809a67e-2] // =0xFFFFFFD0
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    mov r0, #0
    mov r1, #0xf6
    bl sub_802F12C
    mov r0, #0
    pop {r4-r7,pc}
loc_809A694:
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
dword_809A6A0:    .word 0x8099E90
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    add r0, #0x10
    cmp r0, #0x60 
    ble loc_809A6BC
    mov r6, r10
    ldr r6, [r6,#0x2c]
    ldr r2, [r6,#0x4c]
    strh r2, [r5,#6]
    ldr r2, [r6,#0x50]
    strb r2, [r5,#5]
    mov r0, #0x60 
loc_809A6BC:
    strb r0, [r5,#4]
    ldr r1, [pc, #0x809a758-0x809a6be-2] // =0xFFFFFFD0
    add r0, r0, r1
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    bl sub_80465BC
    bl sub_80465F8
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0
    mov r1, #0xf5
    bl sub_802F164
    bne loc_809A6E6
    mov r0, #0
    pop {r4-r7,pc}
loc_809A6E6:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    sub r0, #0x10
    cmp r0, #0
    bge loc_809A6F8
    mov r0, #0
loc_809A6F8:
    strb r0, [r5,#4]
    ldr r1, [pc, #0x809a758-0x809a6fa-2] // =0xFFFFFFD0
    add r0, r0, r1
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    bl sub_80465BC
    bl sub_80465F8
    mov r0, #8
    bl sub_8045F3C
    beq loc_809A74E
    bl sub_8045F4C
    cmp r0, #0
    beq loc_809A72A
    mov r0, #0
    strb r0, [r5,#9]
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    b loc_809A74A
loc_809A72A:
    ldr r0, [pc, #0x809a894-0x809a72a-2] // =dword_86C580C
    mov r1, #0x33 
    bl chatbox_runScript
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F12C
    mov r0, #8
    mov r1, #0x84
    str r0, [r5,r1]
    mov r0, #1
    strb r0, [r5,#9]
    ldr r0, [r5,#0x74]
    bl sub_809A80C
loc_809A74A:
    mov r0, #0
    pop {r4-r7,pc}
loc_809A74E:
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #1
    pop {r4-r7,pc}
dword_809A758:    .word 0xFFFFFFD0
    push {r4-r7,lr}
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    ldr r0, [pc, #0x809a780-0x809a764-4] // =dword_86C580C
    mov r1, #0x8c
    ldr r1, [r5,r1]
    bl chatbox_runScript
    mov r1, #1
    mov r2, #0x8c
    ldr r0, [r5,r2]
    cmp r0, #0x37 
    beq loc_809A77A
    mov r1, #0
loc_809A77A:
    strb r1, [r5,#9]
    mov r0, #0
    pop {r4-r7,pc}
off_809A780:    .word dword_86C580C
    push {r4-r7,lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_809A7A6
    ldr r0, [r5,#0x74]
    add r0, #2
    str r0, [r5,#0x74]
    cmp r0, #0x20 
    blt loc_809A7A6
    mov r0, #0x20 
    str r0, [r5,#0x74]
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #0
    pop {r4-r7,pc}
loc_809A7A6:
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #1
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldrh r0, [r5,#0xc]
    sub r0, #1
    blt loc_809A7C4
    strh r0, [r5,#0xc]
    ldr r0, [r5,#0x70]
    ldrb r1, [r5,#0xf]
    sub r0, r0, r1
    str r0, [r5,#0x70]
    b loc_809A802
loc_809A7C4:
    mov r0, #0x20 
    bl sub_8045F3C
    beq loc_809A802
    bl sub_8045F4C
    cmp r0, #0
    bne loc_809A7F6
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r1, #0
    strb r1, [r5,#9]
    ldr r0, [pc, #0x809a894-0x809a7de-2] // =dword_86C580C
    mov r1, #0x33 
    bl chatbox_runScript
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F12C
    mov r0, #8
    mov r1, #0x84
    str r0, [r5,r1]
    b loc_809A7FE
loc_809A7F6:
    bl sub_8040818
    mov r1, #1
    strb r1, [r5,#9]
loc_809A7FE:
    mov r0, #0
    pop {r4-r7,pc}
loc_809A802:
    ldr r0, [r5,#0x74]
    bl sub_809A80C
    mov r0, #1
    pop {r4-r7,pc}
.thumb
sub_809A80C:
    push {r4-r7,lr}
    add r7, r0, #0
    mov r0, r10
    ldr r0, [r0,#0x38]
    ldr r1, [r5,#0x70]
    str r1, [r0,#8]
    add r0, r7, #0
    mov r1, #0
    mov r2, #0
    ldr r3, [pc, #0x809a850-0x809a81e-2] // =loc_86C5790
    mov r4, #9
    mov r5, #5
    bl sub_80018C2
// end of function sub_809A80C

    add r0, r7, #2
    mov r1, #2
    mov r2, #0
    ldr r3, [pc, #0x809a854-0x809a82e-2] // =0x8099E78
    mov r4, #6
    mov r5, #2
    bl sub_80018C2
    ldr r0, [pc, #0x809a858-0x809a838-4] // =unk_2033404
    mov r1, #6
    ldr r2, [pc, #0x809a85c-0x809a83c-4] // =unk_200EF40
    ldr r3, [pc, #0x809a860-0x809a83e-2] // =0x600D400
    mov r4, #6
    mov r5, #1
    ldr r6, [pc, #0x809a864-0x809a844-4] // =dword_86A5D60
    mov r7, #4
    bl render_graphicalText_8045F8C
    pop {r4-r7,pc}
    .byte 0, 0
off_809A850:    .word loc_86C5790
dword_809A854:    .word 0x8099E78
off_809A858:    .word unk_2033404
off_809A85C:    .word unk_200EF40
dword_809A860:    .word 0x600D400
off_809A864:    .word dword_86A5D60
.thumb
sub_809A868:
    push {r4,lr}
    mov r4, r10
    ldr r4, [r4,#0x2c]
    ldr r0, [pc, #0x809a88c-0x809a86e-2] // =dword_809A890
    mov r1, #0x88
    ldr r1, [r5,r1]
    ldrb r0, [r0,r1]
    str r0, [r4,#0x4c]
    mov r0, #0
    str r0, [r4,#0x50]
    pop {r4,pc}
    .byte 0, 0
// end of function sub_809A868

.thumb
sub_809A880:
    push {lr}
    ldr r0, [pc, #0x809a88c-0x809a882-2] // =dword_809A890
    mov r1, #0x88
    ldr r1, [r5,r1]
    ldrb r0, [r0,r1]
    pop {pc}
off_809A88C:    .word dword_809A890
dword_809A890:    .word 0x321E140A
off_809A894:    .word dword_86C580C
dword_809A898:    .word 0x5000016, 0x5010116, 0x5020216, 0xFFFFFFFF, 0x2906003F
    .word 0x471731FF, 0x4B00FF01, 0x809A8E5, 0xC08FF27, 0x580C3E07
    .word 0x43A086C, 0x9A9514B, 0xA98D4B08, 0xFF020809, 0xA9CD4B01
    .word 0x4B3B0809, 0x809AA05, 0x554B043F, 0x803FD, 0x2000B5F0
    .word 0xFB6AF799, 0x46564F4C, 0x88BA6AF6, 0x67EA64F2, 0x653288FA
    .word 0x502A2080, 0x21038E38, 0xD0002803, 0x71292109, 0x863A2200
    .word 0x80FA80BA, 0x716A80EA, 0xF834F769, 0xF8DAF769, 0xFEA0F7AB
    .word 0xF7664802, 0x2000F903, 0xBDF0, 0x809A934, 0x886C7980
    .word 0x2034E00, 0x2033700, 0x886C73D8, 0x2036500, 0x2033700
    .word 0x0
// end of function sub_809A880

    push {r4-r7,lr}
    mov r0, #0
    mov r1, #0xf5
    bl sub_802F164
    beq loc_809A982
    mov r0, #0
    strb r0, [r5,#4]
    ldr r0, [pc, #0x809a988-0x809a960-4] // =dword_809A898
    bl sub_80465A0
    ldr r0, [r5,#0x7c]
    mov r1, #0x80
    ldr r1, [r5,r1]
    mov r2, #0
    mov r3, #0
    bl sub_811980C
    ldr r0, [pc, #0x809aa00-0x809a974-4] // =0xFFFFFFD0
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    mov r0, #0
    pop {r4-r7,pc}
loc_809A982:
    mov r0, #1
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809A988:    .word dword_809A898
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    add r0, #0x10
    cmp r0, #0x60 
    ble loc_809A9A4
    mov r6, r10
    ldr r6, [r6,#0x2c]
    ldr r2, [r6,#0x4c]
    strh r2, [r5,#6]
    ldr r2, [r6,#0x50]
    strb r2, [r5,#5]
    mov r0, #0x60 
loc_809A9A4:
    strb r0, [r5,#4]
    ldr r1, [pc, #0x809aa00-0x809a9a6-2] // =0xFFFFFFD0
    add r0, r0, r1
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    bl sub_80465BC
    bl sub_80465F8
    mov r0, #0
    mov r1, #0xf5
    bl sub_802F164
    bne loc_809A9C8
    mov r0, #0
    pop {r4-r7,pc}
loc_809A9C8:
    mov r0, #1
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldrb r0, [r5,#4]
    sub r0, #0x10
    cmp r0, #0
    bge loc_809A9D8
    mov r0, #0
loc_809A9D8:
    strb r0, [r5,#4]
    ldr r1, [pc, #0x809aa00-0x809a9da-2] // =0xFFFFFFD0
    add r0, r0, r1
    mov r1, #0x58 
    mov r2, #0
    bl sub_8119854
    bl sub_80465BC
    bl sub_80465F8
    mov r0, #0x80
    bl sub_8045F3C
    bne loc_809A9FA
    mov r0, #0
    pop {r4-r7,pc}
loc_809A9FA:
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
dword_809AA00:    .word 0xFFFFFFD0
    push {r4-r7,lr}
    bl sub_8003962
    bl sub_8003AB2
    bl sub_800399A
    bl sub_8003AEA
    mov r0, #1
    bl sub_8033FC0
    mov r0, #0
    pop {r4-r7,pc}
    .word unk_200AC80
dword_809AA24:    .word 0x5000016, 0x5010116, 0x5020216, 0xFFFFFFFF, 0x2906003F
    .word 0x471731FF, 0x4B00FF01, 0x809AAB9, 0x9AADD4B, 0x1081C08
    .word 0x809AA5F, 0x4D4B8004, 0x3F0809AD, 0xFD554B04, 0x4000803
    .word 0xAB214B08, 0x81C0809, 0x9AA4401, 0x3081C08, 0x809AA87
    .word 0x5004081C, 0x40809AA, 0xAC714B08, 0x50150809, 0x40809AA
    .word 0xAC894B88, 0x81C0809, 0x9AA5000, 0xACA54B08, 0xD14B0809
    .word 0x20809AC, 0xD4B01FF, 0x3B0809AD, 0x9AD4D4B, 0x4B043F08
    .word 0x803FD55, 0x0
    push {r4-r7,lr}
    mov r0, #0
    bl sub_8033FC0
    bl sub_8003984
    bl sub_8003AD4
    ldr r0, [pc, #0x809ad78-0x809aac8-4] // =unk_2033404
    mov r1, #0xa
    bl chatbox_runScript
    bl sub_8046664
    mov r0, #0
    strb r0, [r5,#8]
    pop {r4-r7,pc}
    .balign 4, 0x00
    push {r4-r7,lr}
    mov r0, #8
    bl sub_8045F3C
    beq loc_809AB1A
    bl sub_8045F4C
    cmp r0, #0
    bne loc_809AB0C
    ldr r0, [pc, #0x809ad78-0x809aaee-2] // =unk_2033404
    mov r1, #0xc
    bl chatbox_runScript
    mov r0, #1
    strb r0, [r5,#8]
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F12C
    mov r0, #8
    mov r1, #0x84
    str r0, [r5,r1]
    mov r0, #0
    pop {r4-r7,pc}
loc_809AB0C:
    ldr r0, [pc, #0x809ad78-0x809ab0c-4] // =unk_2033404
    mov r1, #0xb
    bl chatbox_runScript
    mov r0, #0
    strb r0, [r5,#8]
    pop {r4-r7,pc}
loc_809AB1A:
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x25 
    bl sub_802F164
    beq loc_809AB5A
    mov r0, #0x84
    ldr r0, [r5,r0]
    tst r0, r0
    beq loc_809AB3A
    sub r0, #1
    mov r1, #0x84
    str r0, [r5,r1]
loc_809AB3A:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrb r0, [r0,#2]
    mov r1, #2
    and r1, r0
    beq loc_809AB5A
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x68 
    bl sound_play
    ldr r0, [pc, #0x809ad78-0x809ab50-4] // =unk_2033404
    mov r1, #0xb
    bl chatbox_runScript
    b loc_809AC20
loc_809AB5A:
    mov r0, #8
    bl sub_8045F3C
    beq loc_809AC24
    sub sp, sp, #8
    mov r0, r10
    ldr r0, [r0,#0x2c]
    add r0, #0x4c 
    mov r1, sp
    mov r2, #8
    bl sub_800093C
    mov r0, sp
    bl sub_813D41C
    str r4, [r5,#0x78]
    add sp, sp, #8
    cmp r0, #1
    beq loc_809AB92
    cmp r0, #2
    beq loc_809AC14
    ldr r0, [pc, #0x809ad78-0x809ab84-4] // =unk_2033404
    mov r1, #0xd
    bl chatbox_runScript
    mov r0, #1
    strb r0, [r5,#8]
    b loc_809AC20
loc_809AB92:
    mov r4, r10
    ldr r4, [r4,#0x2c]
    str r2, [r4,#0x4c]
    str r3, [r4,#0x50]
    cmp r1, #1
    beq loc_809ABC8
    cmp r1, #2
    beq loc_809ABDC
    cmp r1, #3
    beq loc_809ABF4
    str r2, [r5,#0x7c]
    mov r0, #0x80
    str r3, [r5,r0]
    mov r0, #0
    strh r0, [r5,#6]
    strb r0, [r5,#5]
    add r0, r2, #0
    add r1, r3, #0
    mov r2, #1
    bl dword_8021AEC+2
    ldr r0, [pc, #0x809ac28-0x809abbc-4] // =dword_809AC2C
    bl sub_8000B30
    mov r0, #0xf
    mov r1, #3
    b loc_809AC06
loc_809ABC8:
    push {r2}
    add r0, r2, #0
    mov r1, #1
    bl sub_803CD98
    pop {r0}
    bl sub_809AC48
    mov r1, #3
    b loc_809AC06
loc_809ABDC:
    add r0, r2, #0
    mov r1, #1
    bl sub_803CD98
    tst r0, r0
    bne loc_809ABEE
    mov r0, #0x11
    mov r1, #3
    b loc_809AC06
loc_809ABEE:
    mov r0, #0x12
    mov r1, #0
    b loc_809AC06
loc_809ABF4:
    add r0, r2, #0
    str r0, [r4,#0x4c]
    add r0, r2, #0
    add r1, r3, #0
    mov r2, #1
    bl sub_803D108
    mov r0, #0x13
    mov r1, #3
loc_809AC06:
    str r0, [r5,#0x74]
    strb r1, [r5,#8]
    ldr r0, [pc, #0x809ad7c-0x809ac0a-2] // =byte_86C67E4
    mov r1, #0xe
    bl chatbox_runScript
    b loc_809AC20
loc_809AC14:
    ldr r0, [pc, #0x809ad78-0x809ac14-4] // =unk_2033404
    mov r1, #0x14
    bl chatbox_runScript
    mov r0, #1
    strb r0, [r5,#8]
loc_809AC20:
    mov r0, #0
    pop {r4-r7,pc}
loc_809AC24:
    mov r0, #1
    pop {r4-r7,pc}
off_809AC28:    .word dword_809AC2C
dword_809AC2C:    .word 0x886C7980, 0x2034E00
    .word unk_2033700
    .word 0x886C73D8, 0x2036500, 0x2033700, 0x0
.thumb
sub_809AC48:
    push {r1-r7,lr}
    ldr r1, [pc, #0x809ac64-0x809ac4a-2] // =byte_809AC68
loc_809AC4C:
    ldrb r2, [r1]
    ldrb r3, [r1,#1]
    add r1, #2
    cmp r2, #0xff
    beq loc_809AC5E
    cmp r0, r2
    bne loc_809AC4C
    add r0, r3, #0
    pop {r1-r7,pc}
loc_809AC5E:
    mov r0, #0x1a
    pop {r1-r7,pc}
    .balign 4, 0x00
off_809AC64:    .word byte_809AC68
byte_809AC68:    .byte 0x53
byte_809AC69:    .byte 0x15
    .hword 0x1651
    .word 0xFFFF1755, 0x6FA8B5F0, 0xF7941C00, 0x4840FA5B, 0xF7A56F69
    .word 0x2000FB81, 0xBDF0, 0x483CB5F0, 0xF7A56F69, 0x211CFB79
    .word 0x280F6F68, 0x2100D000, 0x20007229, 0xBDF0, 0x2000B5F0
    .word 0x48087128, 0xFC78F7AB, 0x21806FE8, 0x22005869, 0xF07E2300
    .word 0x4822FDA7, 0x22002158, 0xFDC6F07E, 0xBDF02000, 0x809AA24
    .word 0x7928B5F0, 0x28603010, 0x4656DD06, 0x6CF26AF6, 0x6D3280EA
    .word 0xE008716A, 0x49177128, 0x21581840, 0xF07E2200, 0x2701FDAF
    .word 0x2060E002, 0x27007128, 0xFC5CF7AB, 0xFC78F7AB, 0xBDF01C38
    .word 0x2000B5F0, 0xF79421F5, 0xD00BFA27, 0x38107928, 0xDA002800
    .word 0x71282000, 0x18404908, 0x22002158, 0xFD92F07E, 0xFC44F7AB
    .word 0xFC60F7AB, 0x20802701, 0xF8FEF7AB, 0x2700D100, 0xBDF01C38
    .word 0xFFFFFFD0, 0x2000B5F0, 0xF79421F5, 0x2017F9EB, 0xF7942125
    .word 0x2001F9E7, 0xF92EF799, 0xFDFDF768, 0xFEA3F768, 0xFE15F768
    .word 0xFEBBF768, 0xBDF02000
off_809AD78:    .word unk_2033404
off_809AD7C:    .word byte_86C67E4
    .word 0x2906003F, 0x71731FF, 0x3E14FF02, 0x873B9E0, 0x40FFF3A
    .word 0x1EFF0280, 0x80CFF27, 0x1EFF0207, 0x9ADA94B, 0x43F08
    .word 0xF09BB5F0, 0x2000FFEF, 0xBDF0, 0x3000002, 0x220000
    .word 0x2A0000, 0x0
    .word 0x7000002, 0x220000, 0x400000, 0x0
    .word 0x49A, 0x220000, 0x2A0000, 0x3, 0x220000, 0x400000, 0x7
    .word 0x7000003, 0xFF460000, 0xFF640000, 0x0
    .word 0x3000003, 0xFF460000, 0xFF640000, 0x0, 0x0
    .word 0xFF460000, 0xFF640000, 0x7, 0xFF460000, 0xFF4E0000
    .word 0x3, 0x7000205, 0xFF4A0000, 0xFFBA0000, 0x0
    .word 0x3000205, 0xFF4A0000, 0xFFBA0000, 0x0, 0x0
dword_809AE50:    .word 0xFF4A0000, 0xFFBA0000, 0x7, 0xFF4A0000, 0xFFA40000
    .word 0x3, 0x3E06003F, 0x873B9E0, 0x271EFF02, 0x7080CFF
    .word 0x34A054A, 0x9AF014B, 0x21C3F08, 0xFF271EFF, 0x2070808
    .word 0xFF5382FF, 0x29FF1704, 0x9AEB617, 0x1408, 0x8D4D0000
    .word 0x24FF2700, 0xFF5307FF, 0x1EFF0205, 0x820FF27, 0xAEBC1507
    .word 0x8E4D0809, 0xFFF0200, 0x3A1EFF02, 0x2800404, 0x141EFF
    .word 0x27000000, 0x7080CFF, 0x154034A, 0xAF7D4B3B, 0x3C3F0809
    .word 0x2A00FF53, 0x2A171AFF, 0x21715FF, 0x804C1EFF, 0x0
    .word 0x3F183F00, 0x3C0004, 0xAEC61540, 0x809, 0x4F2EB5F0
    .word 0x6BC94651, 0x223C7C89, 0x18BF434A, 0x6AB96A78, 0xF0032200
    .word 0x6AF8F945, 0xF9C7F003, 0xF0036AF8, 0xF003F90B, 0xF003F9E9
    .word 0xB4F0FAE5, 0x6B39202E, 0x23006B7A, 0xF7696BBC, 0xBCF0FC51
    .word 0x42006A38, 0x1C00D002, 0xF8E4F794, 0x2017242D, 0xF7942129
    .word 0xD000F907, 0x712C242E, 0xF7952000, 0x6A78F928, 0x6B3B6AB9
    .word 0x18C06B7C, 0x10401909, 0x22001049, 0xF932F795, 0xBDF02000
    .word 0x4F0FB5F0, 0x6BC94651, 0x223C7C89, 0x18BF434A, 0x20172600
    .word 0xF7942129, 0xD100F8E7, 0x19BF2610, 0x6878636F, 0x68FA68B9
    .word 0xF8FEF003, 0xF00378F8, 0x78F8F980, 0xF8C4F003, 0xF9A2F003
    .word 0xBDF02000, 0x809ADB4, 0x3F06003F, 0xB00D4B1C, 0x20120809
    .word 0x809AFEC, 0xAFFE2412, 0x28120809, 0x809B004, 0x2013200A
    .word 0x28132413, 0x3F0AFF02, 0x43F18, 0xFF040440, 0x10FF0147
    .word 0x20FF0542, 0xFF014700, 0x554B1100, 0x110809B0, 0x9B0D94B
    .word 0x1108, 0x4657B5F0, 0x69B86BFF, 0xF796301C, 0x38C0FD30
    .word 0x5C08490B, 0x201A7128, 0x20027168, 0x6A4969B9, 0x293C1409
    .word 0x2003DA00, 0x280271A8, 0x2018D001, 0x2000E000, 0x20008368
    .word 0x832843C0, 0xBDF02000, 0x809B050, 0x105, 0x4657B5F0
    .word 0x20026BFF, 0x6A4969B9, 0x293C1409, 0x2003DA00, 0x79A971E8
    .word 0xD0132902, 0xD1014288, 0xBDF02001, 0x200B69BB, 0x39408BD9
    .word 0x32408C5A, 0x33408CDB, 0x20E1B40F, 0xFA9EF765, 0xF934F003
    .word 0xE015BC0F, 0x42007C28, 0x2001D001, 0x69BBBDF0, 0x8BD9200B
    .word 0x8C5A3940, 0x8CDB3240, 0xB40F3350, 0xF76520E2, 0x2004FA89
    .word 0xF91FF003, 0xE7FFBC0F, 0x4120409, 0x4C02041B, 0xFB88F769
    .word 0xBDF02000, 0x48020000, 0x79A8B5F0, 0xD1052802, 0x5E28201A
    .word 0x83683801, 0xE009DC1E, 0x5E28201A, 0x83683801, 0x79E8DD18
    .word 0xD0012802, 0xBDF02001, 0x5A282018, 0x83283001, 0x42082107
    .word 0x4657D10C, 0x69BB6BFF, 0x40079E8, 0x43044C04, 0x69D9200B
    .word 0x6A5B6A1A, 0xFB5CF769, 0xBDF02001, 0x48000001, 0x4657B5F0
    .word 0x69B86BFF, 0xF796301C, 0x38C0FC9E, 0x280FDB0F, 0x2017DC0D
    .word 0xF7942129, 0xD104F80B, 0x49074806, 0xFE9CF79B, 0x4803E003
    .word 0xF79B2100, 0x2000FE97, 0xBDF0, 0x809AFC0, 0x8098384
    .word 0x8010002, 0x5000003, 0x1460000, 0x1C0000, 0x400000
    .word 0xFFE6008A, 0x30050, 0x5E0032, 0x780082, 0x8A0000
    .word 0x500086, 0x280003, 0x780050, 0x3800A0, 0x3000004
    .word 0xFF4C0000, 0xFED60000, 0x200000, 0x126008A, 0x70050
    .word 0x5E0032, 0x8C0096, 0x8A0038, 0x500086, 0x280007
    .word 0x780050, 0xA0, 0x3000005, 0xFF640000, 0xFF380000
    .word 0x600000, 0x86FFEA, 0x10050, 0x5E0032, 0x8C0096
    .word 0x8A0039, 0x500086, 0x280005, 0x780050, 0x3900A0
    .word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
    .word 0x126008A, 0x70050, 0x5E0032, 0x8C0096, 0x8A0038, 0x500086
    .word 0x280005, 0x780050, 0x3900A0, 0x5000001, 0x900000, 0x740000
    .word 0x0
    .word 0xFF76016A, 0x30090, 0x5E0032, 0x780082, 0x16A0000
    .word 0x900016, 0x280007, 0x780050, 0xA0, 0x3000004
    .word 0xFF4C0000, 0xFED60000, 0x200000, 0xFF76016A, 0x30090
    .word 0x5E0032, 0x780082, 0x16A0000, 0x900016, 0x280007
    .word 0x780050, 0xA0, 0x3000005, 0xFF640000, 0xFF380000
    .word 0x600000, 0xFF76016A, 0x30090, 0x5E0032, 0x780082
    .word 0x16A0000, 0x900016, 0x280007, 0x780050, 0xA0
    .word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
    .word 0xFF76016A, 0x30090, 0x5E0032, 0x780082, 0x16A0000
    .word 0x900016, 0x280007, 0x780050, 0xA0, 0x5000001
    .word 0x900000, 0x740000, 0x0
    .word 0xFEF6FFBA, 0x70050, 0x5E0032, 0x8C0096, 0xFFBA0000
    .word 0x50FE56, 0x280003, 0x780050, 0xA0, 0x5000003
    .word 0x1460000, 0x1C0000, 0x400000, 0xFEF6FFBA, 0x70050
    .word 0x5E0032, 0x8C0096, 0xFFBA0000, 0x50FE56, 0x280003
    .word 0x780050, 0xA0, 0x3000005, 0xFF640000, 0xFF380000
    .word 0x600000, 0xFEF6FFBA, 0x70050, 0x5E0032, 0x8C0096
    .word 0xFFBA0000, 0x50FE56, 0x280003, 0x780050, 0xA0
    .word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
    .word 0xFEF6FFBA, 0x70050, 0x5E0032, 0x8C0096, 0xFFBA0000
    .word 0x50FE56, 0x280003, 0x780050, 0xA0, 0x5000001
    .word 0x900000, 0x740000, 0x0
    .word 0xFF2EFFF2, 0x500B0, 0x5E0032, 0x780082, 0xFF520000
    .word 0xB0FF2E, 0x280001, 0x780050, 0x78, 0x5000003
    .word 0x1460000, 0x1C0000, 0x400000, 0xFF2EFFF2, 0x500B0
    .word 0x5E0032, 0x780082, 0xFF520000, 0xB0FF2E, 0x280001
    .word 0x780050, 0x78, 0x3000004, 0xFF4C0000, 0xFED60000
    .word 0x200000, 0xFF2EFFF2, 0x500B0, 0x5E0032, 0x780082
    .word 0xFF520000, 0xB0FF2E, 0x280001, 0x780050, 0x78
    .word 0x5000000, 0xFFE20000, 0xFF940000, 0x0
    .word 0xFF2EFFF2, 0x500B0, 0x5E0032, 0x780082, 0xFF520000
    .word 0xB0FF2E, 0x280001, 0x780050, 0x78, 0x5000001
    .word 0x900000, 0x740000, 0x0, 0x0
    .word 0x40000, 0x0, 0x0, 0x0, 0x0
    .word 0x4, 0x0, 0x0
    .word 0x5000003, 0x1460000, 0x1C0000, 0x400000, 0x0
    .word 0x40000, 0x0, 0x0, 0x0, 0x0
    .word 0x4, 0x0, 0x0
    .word 0x3000004, 0xFF4C0000, 0xFED60000, 0x200000, 0x0
    .word 0x40000, 0x0, 0x0, 0x0, 0x0
    .word 0x4, 0x0, 0x0
    .word 0x3000005, 0xFF640000, 0xFF380000, 0x600000, 0x0
    .word 0x40000, 0x0, 0x0, 0x0, 0x0
    .word 0x4, 0x0, 0x0
    .word 0x86008A18, 0x20005000, 0x6A180800, 0x90001601, 0x8002000
    .word 0x56FFBA18, 0x200050FE, 0x52180800, 0xB0FF2EFF, 0x8002000
    .word 0x6003F08, 0x143F1C3F, 0x73C0D83E, 0xB7A54B88, 0x43A0809
    .word 0x81C8004, 0x9B65AFF, 0x81C08, 0x809B669, 0x6901081C
    .word 0x1C0809B6, 0xB6690208, 0x81C0809, 0x9B66903, 0x4081C08
    .word 0x809B688, 0x8805081C, 0x1C0809B6, 0xB6880608, 0x81C0809
    .word 0x9B68807, 0x8081C08, 0x809B6A7, 0xA709081C, 0x1C0809B6
    .word 0xB6A70A08, 0x81C0809, 0x9B6A70B, 0xC081C08, 0x809B6C6
    .word 0xC60D081C, 0x1C0809B6, 0xB6C60E08, 0x81C0809, 0x9B6C60F
    .word 0x10081C08, 0x809B6E5, 0xE511081C, 0x1C0809B6, 0xB6E51208
    .word 0x81C0809, 0x9B6E513, 0xB65A1508, 0x20120809, 0x809B752
    .word 0x183F200A, 0x43F103F, 0x64201200, 0x120809B7, 0x9B77B24
    .word 0xA200A08, 0x1EFF0224, 0xB5840054, 0x15080809, 0x809B70A
    .word 0xB7642012, 0x24120809, 0x809B77B, 0x240A200A, 0x541EFF02
    .word 0x9B58E00, 0xA150808, 0x120809B7, 0x9B76420, 0x7B241208
    .word 0xA0809B7, 0x2240A20, 0x541EFF, 0x809B598, 0xB70A1508
    .word 0x20120809, 0x809B764, 0xB77B2412, 0x200A0809, 0xFF02240A
    .word 0xA200541E, 0x80809B5, 0x9B70A15, 0x64201208, 0x120809B7
    .word 0x9B77B24, 0xA200A08, 0x1EFF0224, 0x401FF3A, 0x1EFF0280
    .word 0x9B8694B, 0xB72B1508, 0xFF020809, 0xFF3A1E, 0xFF028004
    .word 0xB8014B1E, 0x914B0809, 0x20809B8, 0x20125AFF, 0x809B747
    .word 0x27010909, 0x7080CFF, 0x293CFF02, 0x28003AFF, 0x804CFFFF
    .word 0x0
    .word 0x183F3B00, 0x4B00043F
    .word sub_809B910+1
    .word 0x9B9754B, 0x4401108, 0x147FF05, 0xFF4210FF, 0x47001008
    .word 0x1100FF01, 0x9B7ED4B, 0x5044008, 0xFF0147FF, 0x8FF4210
    .word 0x1470010, 0x401100FF, 0x210FF0C, 0xC4002FF, 0xFF020CFF
    .word 0xFF0C4002, 0x2FF0208, 0x4FF0C40, 0x4002FF02, 0x200FF0C
    .word 0x343F02FF, 0x11383F, 0x4C0AB5F0, 0x6BC04650, 0x807900
    .word 0x78201824, 0x78607128, 0xF0027168, 0x78A0FD78, 0xFCBCF002
    .word 0x69644654, 0x74202000, 0xBDF02000, 0x809B7D4, 0xFF010532
    .word 0xFF01050A
    .word 0xFFFFFFFF
    .byte 0x14
    .byte 5
    .byte 1
    .byte 0xFF
    .byte 0x1E
    .byte 3
    .byte 7
    .byte 0xFF
    .byte 0x28 
    .byte 3
    .byte 7
    .byte 0xFF
    .byte 0xF0
    .byte 0xB5
    .byte 2
    .byte 0xF0
    .byte 0x63 
    .byte 0xFD
    .byte 4
    .byte 0x30 
    .byte 7
    .byte 0x21 
    .byte 8
    .byte 0x40 
    .byte 0x68 
    .byte 0x71 
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0xF0
    .byte 0xB5
    .byte 0x28 
    .byte 0x7A 
    .byte 0x21 
    .byte 0x4F 
    .byte 0x34 
    .byte 0x21 
    .byte 0x41 
    .byte 0x43 
    .byte 0x7F 
    .byte 0x18
    .byte 0x6F 
    .byte 0x63 
    .byte 0x70 
    .byte 0x20
    .byte 0x2E 
    .byte 0x18
    .byte 0x20
    .byte 0xB4
    .byte 0xC
    .byte 0x20
    .byte 0x10
    .byte 0x21 
    .byte 0x79 
    .byte 0x5E 
    .byte 9
    .byte 4
    .byte 0x31 
    .byte 0x60 
    .byte 0x12
    .byte 0x22 
    .byte 0xBA
    .byte 0x5E 
    .byte 0x12
    .byte 4
    .byte 0x72 
    .byte 0x60 
    .byte 0x14
    .byte 0x23 
    .byte 0xFB
    .byte 0x5E 
    .byte 0x1B
    .byte 4
    .byte 0xB3
    .byte 0x60 
    .byte 0xFC
    .byte 0x8A
    .byte 0x64 
    .byte 8
    .byte 0xF4
    .byte 0x60 
    .byte 0x68 
    .byte 0xF7
    .byte 0xD4
    .byte 0xFF
    .byte 0x28 
    .byte 0x1C
    .byte 0x20
    .byte 0xBC
    .byte 0x30 
    .byte 0x61 
    .byte 0xF8
    .byte 0x8B
    .byte 0x70 
    .byte 0x61 
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0x61 
    .byte 0x68 
    .byte 0x61 
    .byte 0
    .byte 0x20
    .byte 0x38 
    .byte 0x21 
    .byte 0x93
    .byte 0xF7
    .byte 0x60 
    .byte 0xFC
    .byte 0
    .byte 0x20
    .byte 0x39 
    .byte 0x21 
    .byte 0x93
    .byte 0xF7
    .byte 0x5C 
    .byte 0xFC
    .byte 0x38 
    .byte 0x8C
    .byte 0
    .byte 0x42 
    .byte 2
    .byte 0xD0
    .byte 0
    .byte 0x1C
    .byte 0x93
    .byte 0xF7
    .byte 0x66 
    .byte 0xFC
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0xF0
    .byte 0xB5
    .byte 0x28 
    .byte 0x7A 
    .byte 7
    .byte 0x4F 
    .byte 0x34 
    .byte 0x21 
    .byte 0x41 
    .byte 0x43 
    .byte 0x7F 
    .byte 0x18
    .byte 0x6F 
    .byte 0x63 
    .byte 0
    .byte 0x20
    .byte 0x38 
    .byte 0x21 
    .byte 0x93
    .byte 0xF7
    .byte 0x49 
    .byte 0xFC
    .byte 0
    .byte 0x20
    .byte 0x39 
    .byte 0x21 
    .byte 0x93
    .byte 0xF7
    .byte 0x45 
    .byte 0xFC
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x74 
    .byte 0xB1
    .byte 9
    .byte 8
    .byte 0xF0
    .byte 0xB5
    .byte 0x6F 
    .byte 0x6B 
    .byte 0x70 
    .byte 0x20
    .byte 0x2E 
    .byte 0x18
    .byte 0x68 
    .byte 0x69 
    .byte 1
    .byte 0x30 
    .byte 0x68 
    .byte 0x61 
    .byte 0x70 
    .byte 0x69 
    .byte 1
    .byte 0x38 
    .byte 0
    .byte 0xDB
    .byte 0x70 
    .byte 0x61 
    .byte 0x6B 
    .byte 0x69 
    .byte 0
    .byte 0x24 
    .byte 0x38 
    .byte 0x8B
    .byte 0x83
    .byte 0x42 
    .byte 9
    .byte 0xDB
    .byte 1
    .byte 0x24 
    .byte 0x78 
    .byte 0x8B
    .byte 0x83
    .byte 0x42 
    .byte 5
    .byte 0xDB
    .byte 2
    .byte 0x24 
    .byte 0xB8
    .byte 0x8B
    .byte 0x83
    .byte 0x42 
    .byte 1
    .byte 0xDB
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 9
    .byte 0x4B 
    .byte 0
    .byte 0xF0
    .byte 0x91
    .byte 0xF8
    .byte 0xF0
    .byte 0x69 
    .byte 0
    .byte 0x42 
    .byte 0xB
    .byte 0xD1
    .byte 0xF0
    .byte 0xB4
    .byte 0x35 
    .byte 0x69 
    .byte 0x67 
    .byte 0xF7
    .byte 0x96
    .byte 0xFA
    .byte 0xF0
    .byte 0xBC
    .byte 5
    .byte 0xD0
    .byte 1
    .byte 0x20
    .byte 0xF0
    .byte 0x61 
    .byte 0x8D
    .byte 0x20
    .byte 0xFF
    .byte 0x30 
    .byte 0x64 
    .byte 0xF7
    .byte 0x72 
    .byte 0xFE
    .byte 1
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0xF0
    .byte 0xB8
    .byte 9
    .byte 8
    .byte 8
    .byte 0
    .byte 4
    .byte 0
    .byte 2
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0
    .byte 8
    .byte 0
    .byte 4
    .byte 0
    .byte 2
    .byte 0xFF
    .byte 0xFF
    .byte 0xF8
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFE
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFE
    .byte 0xFF
    .byte 0xFF
// end of function sub_809AC48

.thumb
sub_809B910:
    push {r4-r7,lr}
    ldr r7, [r5,#0x34]
    mov r0, #0x70 
    add r6, r5, r0
    mov r1, #0x22 
    ldrsh r1, [r7,r1]
    lsl r1, r1, #0x10
    str r1, [r6]
    mov r2, #0x24 
    ldrsh r2, [r7,r2]
    lsl r2, r2, #0x10
    str r2, [r6,#4]
    mov r3, #0x26 
    ldrsh r3, [r7,r3]
    lsl r3, r3, #0x10
    str r3, [r6,#8]
    ldrh r4, [r7,#0x28]
    lsr r4, r4, #1
    str r4, [r6,#0xc]
    ldrh r0, [r7,#0x30]
    str r0, [r6,#0x18]
    mov r0, #0x10
    str r0, [r6,#0x14]
    mov r0, #0
    str r0, [r6,#0x1c]
    str r0, [r5,#0x14]
    mov r0, #0
    mov r1, #0x38 
    bl sub_802F110
    mov r0, #0
    mov r1, #0x39 
    bl sub_802F110
    ldrh r0, [r7,#0x32]
    tst r0, r0
    beq loc_809B960
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
loc_809B960:
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #1
    add r1, r6, #0
    bl sub_80301B2
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0x74 
    .byte 0xB1
    .byte 9
    .byte 8
    .byte 0xF0
    .byte 0xB5
    .byte 0x6F 
    .byte 0x6B 
    .byte 0x70 
    .byte 0x20
    .byte 0x2E 
    .byte 0x18
    .byte 0x68 
    .byte 0x69 
    .byte 1
    .byte 0x30 
    .byte 0x68 
    .byte 0x61 
    .byte 0xB0
    .byte 0x69 
    .byte 1
    .byte 0x38 
    .byte 1
    .byte 0xDB
    .byte 0xB0
    .byte 0x61 
    .byte 1
    .byte 0xE0
    .byte 1
    .byte 0x20
    .byte 0x68 
    .byte 0x72 
    .byte 0x6B 
    .byte 0x69 
    .byte 0
    .byte 0x24 
    .byte 0x78 
    .byte 0x8D
    .byte 0x83
    .byte 0x42 
    .byte 8
    .byte 0xDB
    .byte 1
    .byte 0x24 
    .byte 0xB8
    .byte 0x8D
    .byte 0x83
    .byte 0x42 
    .byte 4
    .byte 0xDB
    .byte 2
    .byte 0x24 
    .byte 0xF8
    .byte 0x8D
    .byte 0x83
    .byte 0x42 
    .byte 0
    .byte 0xDB
    .byte 3
    .byte 0x24 
    .byte 6
    .byte 0x4B 
    .byte 0
    .byte 0xF0
    .byte 0x1D
    .byte 0xF8
    .byte 0xF0
    .byte 0x69 
    .byte 0
    .byte 0x42 
    .byte 5
    .byte 0xD1
    .byte 1
    .byte 0x20
    .byte 0xF0
    .byte 0x61 
    .byte 0x8E
    .byte 0x20
    .byte 0xFF
    .byte 0x30 
    .byte 0x64 
    .byte 0xF7
    .byte 4
    .byte 0xFE
    .byte 1
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0xCC
    .byte 0xB9
    .byte 9
    .byte 8
    .byte 4
    .byte 0
    .byte 4
    .byte 0
    .byte 8
    .byte 0
    .byte 0xC
    .byte 0
    .byte 0
    .byte 4
    .byte 0
    .byte 4
    .byte 0
    .byte 8
    .byte 0
    .byte 0xC
    .byte 0xFC
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xF4
    .byte 0
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xFC
    .byte 0
    .byte 0xF8
    .byte 0
    .byte 0xF4
// end of function sub_809B910

.thumb
sub_809B9EC:
    push {r4-r7,lr}
    ldr r0, [r6,#0xc]
    lsl r0, r0, #3
    add r3, r3, r0
    lsl r0, r4, #1
    add r3, r3, r0
    mov r0, #0
    ldrsb r0, [r3,r0]
    lsl r0, r0, #0xe
    mov r2, #1
    ldrsb r2, [r3,r2]
    lsl r2, r2, #0xe
    ldr r1, [r6]
    add r1, r1, r0
    str r1, [r6]
    ldr r3, [r6,#4]
    add r3, r3, r2
    str r3, [r6,#4]
    pop {r4-r7,pc}
    .byte 0
    .byte 0
// end of function sub_809B9EC

.thumb
sub_809BA14:
    push {r5-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x10]
    mov r0, #0x70 
    add r6, r5, r0
    ldr r0, [r6]
    ldr r1, [r6,#4]
    ldr r2, [r6,#8]
    ldr r3, [r6,#0xc]
    ldr r4, [r6,#0x14]
    cmp r4, #0x10
    ble locret_809BA2E
    mov r4, #0x10
locret_809BA2E:
    pop {r5-r7,pc}
    .byte 0x8A
    .byte 0
    .byte 0x26 
    .byte 1
    .byte 0x50 
    .byte 0
    .byte 7
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x38 
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0x8A
    .byte 0
    .byte 0xE6
    .byte 0xFF
    .byte 0x50 
    .byte 0
    .byte 3
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xEA
    .byte 0xFF
    .byte 0x86
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 1
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x39 
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xEA
    .byte 0xFF
    .byte 0x86
    .byte 0
    .byte 0x50 
    .byte 0
    .byte 1
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0x39 
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0x6A 
    .byte 1
    .byte 0x76 
    .byte 0xFF
    .byte 0x90
    .byte 0
    .byte 3
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0x6A 
    .byte 1
    .byte 0x76 
    .byte 0xFF
    .byte 0x90
    .byte 0
    .byte 3
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0x6A 
    .byte 1
    .byte 0x76 
    .byte 0xFF
    .byte 0x90
    .byte 0
    .byte 3
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0x6A 
    .byte 1
    .byte 0x76 
    .byte 0xFF
    .byte 0x90
    .byte 0
    .byte 3
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xBA
    .byte 0xFF
    .byte 0xF6
    .byte 0xFE
    .byte 0x50 
    .byte 0
    .byte 7
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xBA
    .byte 0xFF
    .byte 0xF6
    .byte 0xFE
    .byte 0x50 
    .byte 0
    .byte 7
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xBA
    .byte 0xFF
    .byte 0xF6
    .byte 0xFE
    .byte 0x50 
    .byte 0
    .byte 7
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xBA
    .byte 0xFF
    .byte 0xF6
    .byte 0xFE
    .byte 0x50 
    .byte 0
    .byte 7
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x96
    .byte 0
    .byte 0x8C
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xF2
    .byte 0xFF
    .byte 0x2E 
    .byte 0xFF
    .byte 0xB0
    .byte 0
    .byte 5
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xF2
    .byte 0xFF
    .byte 0x2E 
    .byte 0xFF
    .byte 0xB0
    .byte 0
    .byte 5
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xF2
    .byte 0xFF
    .byte 0x2E 
    .byte 0xFF
    .byte 0xB0
    .byte 0
    .byte 5
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0xF2
    .byte 0xFF
    .byte 0x2E 
    .byte 0xFF
    .byte 0xB0
    .byte 0
    .byte 5
    .byte 0
    .byte 0x32 
    .byte 0
    .byte 0x5E 
    .byte 0
    .byte 0x82
    .byte 0
    .byte 0x78 
    .byte 0
    .byte 0
    .byte 0
    .byte 0xFF
    .byte 0xFF
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x40000, 0x0, 0x0
    .word 0xFFFF0000, 0x0
    .word 0x40000, 0x0, 0x0
    .word 0xFFFF0000, 0x0
    .word 0x40000, 0x0, 0x0
    .word 0xFFFF0000, 0x0
    .word 0x40000, 0x0, 0x0
    .word 0xFFFF0000, 0x74009018, 0x20000000, 0x46180800, 0x40001C01
    .word 0x8002000, 0xD6FF4C18, 0x200020FE, 0x64180800, 0x60FF38FF
    .word 0x8002000, 0x6003F08, 0x73C0D83E, 0x1FF0288, 0x1C3F343F
    .word 0xB94B143F, 0x1C0809BD, 0xBC8B0008, 0x81C0809, 0x9BC8B01
    .word 0x2081C08, 0x809BC8B, 0x8B03081C, 0x1C0809BC, 0xBCBA0408
    .word 0x81C0809, 0x9BCBA05, 0x6081C08, 0x809BCBA, 0xBA07081C
    .word 0x1C0809BC, 0xBCE90808, 0x81C0809, 0x9BCE909, 0xA081C08
    .word 0x809BCE9, 0xE90B081C, 0x1C0809BC, 0xBD180C08, 0x81C0809
    .word 0x9BD180D, 0xE081C08, 0x809BD18, 0x180F081C, 0x1C0809BD
    .word 0xBD471008, 0x81C0809, 0x9BD4711, 0x12081C08, 0x809BD47
    .word 0x4713081C, 0x120809BD, 0x9BD7320, 0x8FF2708, 0x200A0708
    .word 0x541EFF02, 0x9BBC000, 0xFF020808, 0x7C20121E, 0x120809BD
    .word 0x9BD8E24, 0xA200A08, 0xBD641524, 0x20120809, 0x809BD73
    .word 0x808FF27, 0x2200A07, 0x541EFF, 0x809BBCA, 0x1EFF0208
    .word 0xBD7C2012, 0x24120809, 0x809BD8E, 0x240A200A, 0x9BD6415
    .word 0x73201208, 0x270809BD, 0x70808FF, 0xFF02200A, 0xD400541E
    .word 0x80809BB, 0x121EFF02, 0x9BD7C20, 0x8E241208, 0xA0809BD
    .word 0x15240A20, 0x809BD64, 0xBD732012, 0xFF270809, 0xA070808
    .word 0x1EFF0220, 0xBBDE0054, 0x2080809, 0x20121EFF, 0x809BD7C
    .word 0xBD8E2412, 0x200A0809, 0x6415240A, 0x270809BD, 0x70808FF
    .word 0x121EFF02, 0x9BD7C20, 0x8E241208, 0xA0809BD, 0x15240A20
    .word 0x809BD64, 0x3AFF2A, 0x128FF2A, 0x103F183F, 0x4D00043F
    .word 0xC14B018C, 0x110809BE, 0x303F0154, 0x10FF0147, 0x1010FF42
    .word 0xFF014700, 0xC401100, 0xFF0200FF, 0xFF0C4002, 0x2FF0204
    .word 0x8FF0C40, 0x4002FF02, 0x20CFF0C, 0xC4002FF, 0xFF0210FF
    .word 0x3F303F02, 0x1138, 0x2001B5F0, 0xF7932128, 0xD001F9D1
    .word 0xE00E2003, 0x46524C27, 0x89936BD2, 0x20008892, 0x42918861
    .word 0x8821D102, 0xD0024299, 0x30013404, 0x7228E7F6, 0xDA322810
    .word 0x186E2170, 0x21144F1C, 0x187F4341, 0xB42061F7, 0x2100200C
    .word 0x4095E79, 0x22026031, 0x4125EBA, 0x23046072, 0x41B5EFB
    .word 0x88FC60B3, 0x60F40864, 0xFCE0F768, 0xBC201C28, 0x89F86130
    .word 0x20006170, 0x20006168, 0xF7932138, 0x2000F96D, 0xF7932139
    .word 0x8A38F969, 0xD0024200, 0xF7931C00, 0x2001F973, 0xF7941C31
    .word 0x4653F9B0, 0x6A586BDB, 0x6ADA6A99, 0xF9A2F002, 0xBDF02000
    .word 0x809BA30, 0x809BE6C, 0x10003, 0x10004, 0x10005
    .word 0x10000, 0x30001, 0x30004, 0x30005, 0x30000
    .word 0x40001, 0x40003, 0x40005, 0x40000, 0x50001
    .word 0x50003, 0x50004, 0x50000, 0x1, 0x3
    .word 0x4, 0x5, 0x0
// end of function sub_809BA14

    push {r4-r7,lr}
    mov r0, #0x70 
    add r6, r5, r0
    ldr r7, [r6,#0x1c]
    ldr r0, [r5,#0x14]
    add r0, #1
    str r0, [r5,#0x14]
    ldr r0, [r6,#0x14]
    sub r0, #1
    blt loc_809BED6
    str r0, [r6,#0x14]
loc_809BED6:
    ldr r3, [r5,#0x14]
    mov r4, #0
    ldrh r0, [r7,#8]
    cmp r3, r0
    blt loc_809BEF4
    mov r4, #1
    ldrh r0, [r7,#0xa]
    cmp r3, r0
    blt loc_809BEF4
    mov r4, #2
    ldrh r0, [r7,#0xc]
    cmp r3, r0
    blt loc_809BEF4
    mov r0, #0
    pop {r4-r7,pc}
loc_809BEF4:
    ldr r3, [pc, #0x809bf00-0x809bef4-4] // =dword_809BF04
    bl sub_809B9EC
    mov r0, #1
    pop {r4-r7,pc}
    .byte 0, 0
off_809BF00:    .word dword_809BF04
dword_809BF04:    .word 0x40008, 0xFFFF0002, 0x4000800, 0xFFFF0200, 0xFC00F8
    .word 0xFFFF00FE, 0xFC00F800, 0xFFFFFE00, 0x100018C, 0xFF600000
    .word 0xFFF20000, 0x0
    .word 0xFF001004, 0x67BFF06, 0xFF0684, 0x1000A8C, 0xFF600000
    .word 0xFFF20000, 0x0
    .word 0xFF001004, 0x856FF08, 0xFF0861, 0x1000F8C, 0xFF600000
    .word 0xFFF20000, 0x0
    .word 0xFF001004, 0xA44FF07, 0xFF0ABC, 0x100008D, 0xFF600000
    .word 0xFFF20000, 0x0
    .word 0xFF001004, 0xC6DFF09, 0xFF0CDE, 0x100018D, 0xFF600000
    .word 0xFFF20000, 0x0
    .word 0xFF001004, 0xCA7FF0A, 0xFF0CE2, 0x2906003F, 0x4B1731FF
    .word 0x809BFE9, 0xCAFF051C, 0x3A0809BF, 0x2800405, 0x62714FF
    .word 0x207FFFF, 0x1D4B1EFF, 0x4C0809C0, 0x80, 0xE3150000
    .word 0x3F0809BF, 0x4, 0x7929B5F0, 0x221C480A, 0x1880434A
    .word 0x7CC16368, 0x7C017169, 0x7C4171A9, 0x465271E9, 0x7C816BD2
    .word 0xD00229FF, 0x21107591, 0x200075D1, 0xBDF0, 0x809BF24
    .word 0x6B6FB5F0, 0x1C008AF8, 0xF8A0F793, 0x2001D00B, 0xF7932120
    .word 0xD006F899, 0xF7992000, 0x4653F995, 0x20806BDB, 0x6B6F7198
    .word 0x42008B38, 0x1C00D002, 0xF870F793, 0xF839F765, 0xF7657D38
    .word 0xF084F832, 0xF797FEC9, 0x2000FFBD, 0xBDF0, 0x2906003F
    .word 0x21731FF, 0x471EFF, 0x44004FF, 0xE03E04FF, 0x70873B9
    .word 0x2FF0553, 0xFF533EFF, 0xC09D4B01, 0x43A0809, 0xFF2A8004
    .word 0x43F173C, 0x0
    push {r4-r7,lr}
    bl sub_8140974
    add r2, r0, #0
    ldr r0, [pc, #0x809c0e4-0x809c0a4-4] // =0x1CA0
    ldrb r1, [r5,#6]
    add r0, r0, r1
    add r0, r0, r2
    bl sub_802F238
    ldrb r0, [r5,#7]
    tst r0, r0
    beq loc_809C0DE
    bl sub_8140974
    add r2, r0, #0
    ldr r0, [pc, #0x809c0e8-0x809c0bc-4] // =0x1D20
    ldrb r1, [r5,#6]
    add r0, r0, r1
    add r0, r0, r2
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    bl sub_8140974
    add r2, r0, #0
    ldr r0, [pc, #0x809c0ec-0x809c0d0-4] // =0x1DA0
    ldrb r1, [r5,#6]
    add r0, r0, r1
    add r0, r0, r2
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
loc_809C0DE:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
dword_809C0E4:    .word 0x1CA0
dword_809C0E8:    .word 0x1D20
dword_809C0EC:    .word 0x1DA0
off_809C0F0:    .word dword_809C108
    .word off_809C140
    .word off_809C174
    .byte 0, 0, 0, 0
    .word off_809C1DC
    .word off_809C2A8
dword_809C108:    .word 0x0
    .word dword_809C110
dword_809C110:    .word 0xFFA80000, 0xFEF80000, 0x0
    .word 0x101, 0x12A, 0x18E, 0xFFA80000, 0xFF580000, 0x0
    .word 0x103, 0x12A, 0x18E
off_809C140:    .word dword_809C144
dword_809C144:    .word 0xFF8A0000, 0x1260000, 0x400000, 0x1, 0x12B, 0x18F, 0xFF8A0000
    .word 0x1660000, 0x400000, 0x3, 0x12B, 0x18F
off_809C174:    .word dword_809C17C
    .word dword_809C1AC
dword_809C17C:    .word 0xFF900000, 0xFEF00000, 0x200000, 0x0
    .word 0x12C
    .word 0x190
    .word 0xFFD00000, 0xFEF00000, 0x200000, 0x2, 0x12C, 0x190
dword_809C1AC:    .word 0xFE6A0000, 0x1560000, 0x0, 0x0
    .word 0x12D, 0x191, 0xFEAA0000, 0x1560000, 0x0
    .word 0x2, 0x12D, 0x191
off_809C1DC:    .word dword_809C1E8
    .word dword_809C248
    .word off_809C278
dword_809C1E8:    .word 0xFF1E0000, 0xE00000, 0x0
    .word 0x201, 0x12E, 0x192, 0xFF1E0000, 0x1600000, 0x0
    .word 0x203, 0x12E, 0x192, 0xFE220000, 0xBC0000, 0x200000
    .word 0x100, 0x12F, 0x193, 0xFE820000, 0xBC0000, 0x200000
    .word 0x102, 0x12F, 0x193
dword_809C248:    .word 0xFF680000, 0xFEF80000, 0x400000, 0x0
    .word 0x130
    .word 0x194
    .word 0xFFA80000, 0xFEF80000, 0x400000, 0x2, 0x130, 0x194
off_809C278:    .word unk_2020000
    .word 0xFEDE0000, 0x0
    .word 0x1, 0x131, 0x195, 0x2020000, 0xFF1E0000, 0x0
    .word 0x3, 0x131, 0x195
off_809C2A8:    .word dword_809C2AC
dword_809C2AC:    .word 0xA0000, 0x1560000, 0x0, 0x0
    .word 0x132, 0x196, 0x4A0000, 0x1560000, 0x0
    .word 0x2, 0x132, 0x196, 0x4004, 0x1, 0x60040800, 0x10000, 0x8000000
    .word 0x8004, 0x1, 0x40040800, 0x0
    .word 0x8000001, 0x6004, 0x10000, 0x80040800, 0x0
    .word 0x8000001, 0x4004, 0xFF, 0x60040800, 0xFF0000, 0x8000000
    .word 0x8004, 0xFF, 0x40040800, 0x0
    .word 0x80000FF, 0x6004, 0xFF0000, 0x80040800, 0x0
dword_809C350:    .word 0x80000FF, 0x14, 0x6003F00, 0xFF021C3F, 0xB9E03E01
    .word 0xFF020873, 0xBBFF1901, 0x9C37E01, 0x1EFF3A08, 0xFF028004
    .word 0x3F183F01, 0xFF020004, 0xCFF2708, 0x54A0708, 0x9C7A14B
    .word 0xC7FD4B08, 0x154B0809, 0x4B0809C8, 0x809C831, 0x271EFF02
    .word 0x70808FF, 0x3A1EFF02, 0x800441FF, 0x1C1EFF02, 0xC4030005
    .word 0x51C0809, 0x9C40E01, 0x2051C08, 0x809C419, 0x2403051C
    .word 0x1C0809C4, 0xC42F0405, 0x51C0809, 0x9C43A05, 0x6051C08
    .word 0x809C445, 0x5007051C, 0x1C0809C4, 0xC45B0805, 0x51C0809
    .word 0x9C46609, 0xA051C08, 0x809C471, 0x7C0B051C, 0x120809C4
    .word 0x9C4AA20, 0xC4821508, 0x20120809, 0x809C4CF, 0x9C48215
    .word 0xE201208, 0x150809C5, 0x809C482, 0xC5672012, 0x82150809
    .word 0x120809C4, 0x9C58C20, 0xC4821508, 0x20120809, 0x809C5CB
    .word 0x9C48215, 0x24201208, 0x150809C6, 0x809C482, 0xC6492012
    .word 0x82150809, 0x120809C4, 0x9C68820, 0xC4821508, 0x20120809
    .word 0x809C6E1, 0x9C48215, 0x6201208, 0x150809C7, 0x809C482
    .word 0xC7452012, 0x200A0809, 0x271EFF02, 0x7080CFF, 0x9C9554B
    .word 0x13034A08, 0x52404920, 0x2012C01, 0xFF271EFF, 0x54070808
    .word 0x3F183F01, 0x490004, 0x27, 0x0
    .word 0x49000000, 0x2801, 0x0, 0x0
    .word 0x2010809, 0x44001FF, 0x491101FF, 0x2700, 0x0, 0x0
    .word 0x280149, 0x0, 0x0
    .word 0x27024900
    .word 0x0
    .word 0x10000, 0x3490000, 0x28, 0x1000000, 0x9000000, 0xFF020108
    .word 0xFF044001, 0x491101, 0x27
    .word 0x0
    .word 0x49000000, 0x2801, 0x0, 0x0
    .word 0x270249, 0x0
    .word 0x100
    .word 0x28034900
    .word 0x0
    .word 0x10000, 0x4490000, 0x27, 0x2000000, 0x49000000, 0x2805
    .word 0x0
    .word 0x2, 0x2010809, 0x44001FF, 0x491101FF, 0x2700, 0x0
    .word 0x100
    .word 0x280149, 0x0, 0x0
    .word 0x1080900, 0x4001FF02, 0x1103FF04, 0x270049, 0x0
    .word 0x10000, 0x28014900, 0x0, 0x0
    .word 0x2490000, 0x27, 0x1000000, 0x49000001, 0x2803, 0x0
    .word 0x1, 0x2010809, 0x44001FF, 0x491103FF, 0x2700, 0x0
    .word 0x100
    .word 0x280149, 0x0, 0x0
    .word 0x27024900
    .word 0x0
    .word 0x1010000, 0x3490000, 0x28, 0x1000000, 0x49000000
    .word 0x2704, 0x0
    .word 0x102, 0x280549, 0x0
    .word 0x200
    .word 0x1080900, 0x4001FF02, 0x1103FF04, 0x270049, 0x0, 0x0
    .word 0x28014900
    .word 0x0
    .word 0x0
    .word 0x8090000
    .word 0x1FF0201, 0x5FF0440, 0x27004911, 0x0, 0x0
    .word 0x1490000, 0x28, 0x0
    .word 0x49000000, 0x2702, 0x0
    .word 0x1, 0x280349, 0x0
    .word 0x100
    .word 0x1080900, 0x4001FF02, 0x1105FF04, 0x270049, 0x0
    .word 0x0
    .word 0x28014900
    .word 0x0
    .byte 0, 0, 0, 0
    .word 0x2490000, 0x27, 0x1000000, 0x49000000, 0x2803, 0x0
    .word 0x1, 0x270449, 0x0
    .word 0x200
    .word 0x28054900
    .word 0x0
    .word 0x20000, 0x8090000, 0x1FF0201, 0x5FF0440, 0x27004911
    .word 0x0
    .word 0x1000000, 0x1490000, 0x28, 0x0
    .word 0x9000000, 0xFF020108, 0xFF044001, 0x491107, 0x27
    .word 0x0
    .word 0x49000001
    .word 0x2801
    .word 0
    .byte 0, 0, 0, 0
    .word 0x270249, 0x0
    .word 0x10100, 0x28034900
    .word 0x0
    .word 0x10000, 0x8090000, 0x1FF0201, 0x7FF0440, 0x27004911
    .word 0x0
    .word 0x1000000, 0x1490000, 0x28, 0x0
    .word 0x49000000, 0x2702, 0x0
    .word 0x101, 0x280349, 0x0
    .word 0x100
    .word 0x27044900
    .word 0x0
    .byte 0
    .byte 0
    .byte 2
    .byte 1
    .byte 0
    .byte 0
    .byte 0x49 
    .byte 5
    .byte 0x28 
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 9
    .byte 8
    .byte 1
    .byte 2
    .byte 0xFF
    .byte 1
    .byte 0x40 
    .byte 4
    .byte 0xFF
    .byte 7
    .byte 0x11
    .byte 0
    .byte 0
    .byte 0xF0
    .byte 0xB5
    .byte 0x68 
    .byte 0x68 
    .byte 0x28 
    .byte 0x67 
    .byte 0x14
    .byte 0x49 
    .byte 0
    .byte 0x22 
    .byte 0xA
    .byte 0x70 
    .byte 0
    .byte 0x22 
    .byte 0x82
    .byte 0x58 
    .byte 0x12
    .byte 0xC
    .byte 0x12
    .byte 1
    .byte 1
    .byte 0x23 
    .byte 0xCA
    .byte 0x54 
    .byte 0x12
    .byte 0xA
    .byte 1
    .byte 0x33 
    .byte 0xCA
    .byte 0x54 
    .byte 4
    .byte 0x22 
    .byte 0x82
    .byte 0x58 
    .byte 0x12
    .byte 0xC
    .byte 0x12
    .byte 1
    .byte 3
    .byte 0x23 
    .byte 0xCA
    .byte 0x54 
    .byte 0x12
    .byte 0xA
    .byte 1
    .byte 0x33 
    .byte 0xCA
    .byte 0x54 
    .byte 8
    .byte 0x22 
    .byte 0x82
    .byte 0x58 
    .byte 0x12
    .byte 0xC
    .byte 0x12
    .byte 1
    .byte 5
    .byte 0x23 
    .byte 0xCA
    .byte 0x54 
    .byte 0x12
    .byte 0xA
    .byte 1
    .byte 0x33 
    .byte 0xCA
    .byte 0x54 
    .byte 8
    .byte 0x22 
    .byte 0xCA
    .byte 0x71 
    .byte 1
    .byte 0x22 
    .byte 0xEA
    .byte 0x74 
    .byte 0xE9
    .byte 0x63 
    .byte 8
    .byte 0x1C
    .byte 0x9A
    .byte 0xF7
    .byte 0xD3
    .byte 0xFB
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0xE0
    .byte 0x65 
    .byte 0
    .byte 2
    .byte 0xF0
    .byte 0xB5
    .byte 0x2B 
    .byte 0x6F 
    .byte 0
    .byte 0x20
    .byte 0x18
    .byte 0x58 
    .byte 4
    .byte 0x21 
    .byte 0x59 
    .byte 0x58 
    .byte 8
    .byte 0x22 
    .byte 0x9A
    .byte 0x58 
    .byte 1
    .byte 0xF0
    .byte 0xBC
    .byte 0xFC
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0xF0
    .byte 0xB5
    .byte 0x2B 
    .byte 0x6F 
    .byte 0xC
    .byte 0x20
    .byte 0x18
    .byte 0x5C 
    .byte 2
    .byte 0x49 
    .byte 8
    .byte 0x5C 
    .byte 1
    .byte 0xF0
    .byte 0x8C
    .byte 0xFC
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0x2C 
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 1
    .byte 3
    .byte 5
    .byte 7
    .byte 0xF0
    .byte 0xB5
    .byte 0x2B 
    .byte 0x6F 
    .byte 0xC
    .byte 0x20
    .byte 0x18
    .byte 0x5C 
    .byte 0x80
    .byte 0
    .byte 0xD
    .byte 0x21 
    .byte 0x59 
    .byte 0x5C 
    .byte 3
    .byte 0x4A 
    .byte 0x12
    .byte 0x58 
    .byte 0x50 
    .byte 0x5C 
    .byte 0x68 
    .byte 0x71 
    .byte 0
    .byte 0x20
    .byte 0xF0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x50 
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0x60 
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0x64 
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0x68 
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0x6C 
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0
    .byte 1
    .byte 2
    .byte 0
    .byte 3
    .byte 4
    .byte 5
    .byte 0
    .byte 6
    .byte 7
    .byte 8
    .byte 0
    .byte 9
    .byte 0xA
    .byte 0xB
    .byte 0
    .byte 0
    .byte 0xB5
    .byte 0x68 
    .byte 0x79 
    .byte 2
    .byte 0x49 
    .byte 8
    .byte 0x5C 
    .byte 0xA8
    .byte 0x71 
    .byte 0
    .byte 0x20
    .byte 0
    .byte 0xBD
    .byte 0
    .byte 0
    .byte 0x84
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 1
    .byte 1
    .byte 1
    .byte 3
    .byte 3
    .byte 3
    .byte 5
    .byte 5
    .byte 5
    .byte 7
    .byte 7
    .byte 7
.thumb
sub_809C890:
    push {r4-r7,lr}
    bl sub_809E1BC
    lsr r1, r1, #0x10
    lsr r2, r2, #0x10
    lsr r3, r3, #0x10
    ldr r0, [pc, #0x809c93c-0x809c89c-4] // =unk_2011C50
    ldr r0, [r0,#0x70] // (dword_2011CC0 - 0x2011c50)
    ldrb r0, [r0,#0xc]
    lsl r0, r0, #2
    ldrb r4, [r5,#4]
    lsl r4, r4, #3
    ldr r6, [pc, #0x809c8c8-0x809c8a8-4] // =unk_809C8CC
    ldr r0, [r6,r0]
    add r0, r0, r4
    ldrh r4, [r0]
    add r1, r1, r4
    lsl r1, r1, #0x10
    add r0, #2
    ldrh r4, [r0]
    add r2, r2, r4
    lsl r2, r2, #0x10
    add r0, #2
    ldrh r4, [r0]
    add r3, r3, r4
    lsl r3, r3, #0x10
    mov r0, #0
    pop {r4-r7,pc}
off_809C8C8:    .word unk_809C8CC
unk_809C8CC:    .byte 0xDC
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0xF4
    .byte 0xC8
    .byte 9
    .byte 8
    .byte 0xC
    .byte 0xC9
    .byte 9
    .byte 8
    .byte 0x24 
    .byte 0xC9
    .byte 9
    .byte 8
    .byte 0x20
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .word 0x40
    .word 0x0
    .word 0x60
    .word 0x0
    .word 0x200000, 0x0
    .word 0x400000, 0x0
    .word 0x600000, 0x0
    .word 0xFFE0, 0x0
    .word 0xFFC0, 0x0
    .word 0xFFA0, 0x0
    .word 0xFFE00000, 0x0
    .word 0xFFC00000, 0x0
    .word 0xFFA00000, 0x0
off_809C93C:    .word unk_2011C50
// end of function sub_809C890

.thumb
sub_809C940:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809c950-0x809c942-2] // =unk_2011C50
    ldr r0, [r0,#0x70] // (dword_2011CC0 - 0x2011c50)
    ldr r0, [r0,#0x14]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    pop {r4-r7,pc}
off_809C950:    .word unk_2011C50
// end of function sub_809C940

    push {r4-r7,lr}
    ldr r0, [r5,#0x70]
    mov r1, #0x10
    ldr r0, [r0,r1]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
.thumb
sub_809C968:
    push {r4-r7,lr}
    bl sub_8034C36
    beq loc_809CA26
    mov r0, #2
    mov r1, #0x24 
    bl sub_802F164
    beq loc_809CA26
    mov r0, #1
    mov r1, #0xb9
    bl sub_802F164
    bne loc_809C9B6
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r6, [r7,#4]
    cmp r6, #0x80
    blt loc_809CA26
    bl sub_8036F36
    bne loc_809CA26
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#0xe]
    tst r0, r0
    beq loc_809CA26
    cmp r0, #0x30 
    blt loc_809CA26
    cmp r0, #0x33 
    bgt loc_809CA26
    ldr r1, [pc, #0x809cabc-0x809c9a6-2] // =byte_2009F40
    mov r2, #0x83 // (byte_2009FC3 - 0x2009f40)
    strb r0, [r1,r2]
    mov r0, #1
    mov r1, #0xb9
    bl sub_802F110
    b locret_809CA1E
loc_809C9B6:
    mov r0, #1
    mov r1, #0xba
    bl sub_802F164
    bne loc_809C9CA
    mov r0, #1
    mov r1, #0xba
    bl sub_802F110
    b locret_809CA1E
loc_809C9CA:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldrb r0, [r3,#0xe]
    tst r0, r0
    bne loc_809CA26
    ldr r0, [pc, #0x809cac0-0x809c9d4-4] // =byte_2009F40
    mov r1, #0x83 // (byte_2009FC3 - 0x2009f40)
    ldrb r0, [r0,r1]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r6, [r7,#4]
    ldrb r4, [r7,#5]
    sub r6, #0x90
    lsl r6, r6, #2
    lsl r4, r4, #2
    ldr r1, [pc, #0x809ca38-0x809c9e8-4] // =off_809C0F0
    ldr r1, [r1,r6]
    ldr r1, [r1,r4]
    tst r1, r1
    beq loc_809CA26
    mov r2, #0x18
    sub r0, #0x30 
    mul r0, r2
    add r0, r0, r1
    add r4, r0, #0
    ldr r0, [r4,#0x10]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    bne loc_809CA26
    mov r0, #0x2c 
    bl sub_803CE28
    ldrb r1, [r4,#0xd]
    add r1, #1
    cmp r0, r1
    blt loc_809CA20
    ldr r0, [pc, #0x809ca3c-0x809ca14-4] // =dword_809C350+4
    add r1, r4, #0
    bl sub_8036E90
    b loc_809CA26
locret_809CA1E:
    pop {r4-r7,pc}
loc_809CA20:
    mov r0, #0x69 
    bl sound_play
loc_809CA26:
    mov r0, #1
    mov r1, #0xba
    bl sub_802F12C
    mov r0, #1
    mov r1, #0xb9
    bl sub_802F12C
    pop {r4-r7,pc}
off_809CA38:    .word off_809C0F0
off_809CA3C:    .word dword_809C350+4
// end of function sub_809C968

.thumb
sub_809CA40:
    push {r4-r7,lr}
    cmp r0, #0x30 
    blt loc_809CA7A
    cmp r0, #0x33 
    bgt loc_809CA7A
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r6, [r7,#4]
    ldrb r4, [r7,#5]
    sub r6, #0x90
    lsl r6, r6, #2
    lsl r4, r4, #2
    ldr r1, [pc, #0x809ca80-0x809ca58-4] // =off_809C0F0
    ldr r1, [r1,r6]
    ldr r1, [r1,r4]
    tst r1, r1
    beq loc_809CA7A
    mov r2, #0x18
    sub r0, #0x30 
    mul r0, r2
    add r0, r0, r1
    add r4, r0, #0
    ldr r0, [r4,#0x10]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_809CA7A
    mov r0, #1
    pop {r4-r7,pc}
loc_809CA7A:
    mov r0, #0
    pop {r4-r7,pc}
    .byte 0, 0
off_809CA80:    .word off_809C0F0
// end of function sub_809CA40

.thumb
sub_809CA84:
    push {r4-r7,lr}
    ldr r0, [pc, #0x809cac4-0x809ca86-2] // =byte_2009F40
    mov r1, #0x83 // (byte_2009FC3 - 0x2009f40)
    ldrb r0, [r0,r1]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r6, [r7,#4]
    ldrb r4, [r7,#5]
    sub r6, #0x90
    lsl r6, r6, #2
    lsl r4, r4, #2
    ldr r1, [pc, #0x809cab8-0x809ca9a-2] // =off_809C0F0
    ldr r1, [r1,r6]
    ldr r1, [r1,r4]
    tst r1, r1
    beq loc_809CAB2
    mov r2, #0x18
    sub r0, #0x30 
    mul r0, r2
    add r0, r0, r1
    ldrb r0, [r0,#0xd]
    add r0, #1
    pop {r4-r7,pc}
loc_809CAB2:
    mov r0, #0
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809CAB8:    .word off_809C0F0
off_809CABC:    .word byte_2009F40
off_809CAC0:    .word byte_2009F40
off_809CAC4:    .word byte_2009F40
    .word 0x5000016, 0x5010116, 0x5020216, 0xFFFFFFFF
unk_809CAD8:    .byte 0x3F 
    .byte 0
    .byte 6
    .byte 0x29 
    .byte 0xFF
    .byte 0x31 
    .byte 0x17
    .byte 0x47 
    .word 0x4B00FF01, 0x809CB69, 0x9CB894B, 0x1081C08, 0x809CB0D
    .word 0x302081C, 0x170809CB, 0x490163FF, 0x40809CB, 0xCD454B80
    .word 0x43F0809, 0xCC014B00, 0xFF020809, 0x1081C01, 0x809CB28
    .word 0x9CD354B, 0x15880408, 0x809CB40, 0x9CC614B, 0x81C08
    .word 0x809CB1C, 0xD54B8804, 0x20809CD, 0x880401FF, 0xCD454B3B
    .word 0x43F0809, 0xCDC54B00, 0x614B0809, 0x20809CD, 0x880401FF
    .word 0x9CDD54B, 0x1FF0208, 0x40158804, 0x809CB, 0x2000B5F0
    .word 0xFA28F797, 0xFF08F766, 0xFFAEF766, 0x211E48CD, 0xFC02F7A3
    .word 0x72282000, 0xBDF06728, 0x2008B5F0, 0xF9D6F7A9, 0x481AD031
    .word 0xF9D2F7A9, 0x48C5D007, 0xF7A32120, 0x2002FBF1, 0x200060A8
    .word 0xF7A9BDF0, 0x2800F9CF, 0x2001D114, 0xF7922163, 0xD007FAD5
    .word 0xFA83F764, 0xF7642000, 0x2000FA7C, 0xE00D6728, 0x211F48B8
    .word 0xFBD8F7A3, 0x60A82001, 0xBDF02000, 0x21632001, 0xFAC0F792
    .word 0xE7F1D000, 0x212048B1, 0xFBCAF7A3, 0x60A82000, 0x2001BDF0
    .word 0xBDF0, 0x100, 0x6F28B5F0, 0xD1094200, 0x67282001
    .word 0xFC5CF7A2, 0xF7A22000, 0xF7A2FD4D, 0xE01CFC7C, 0x24012600
    .word 0xF7A24667, 0x46BCFC9D, 0x2601D009, 0x490B2400, 0x42008848
    .word 0x3801D002, 0xE00C8048, 0x1C202600, 0xFC54F7A2, 0x4224722C
    .word 0x4899D003, 0xF7A32122, 0x2000FB99, 0x2001E000, 0xBDF0
    .word 0x200AD04, 0xF000B5F0, 0xD003F8D7, 0x72282000, 0xE0402000
    .word 0xF7A92008, 0xD03BF963, 0x24006F68, 0x59134A1D, 0xDB1D4298
    .word 0x4298330F, 0x4651DA1A, 0x6F686C09, 0x48206308, 0x67A85900
    .word 0x21632001, 0xFA38F792, 0xFA11F764, 0x6AD24652, 0x64D06FA8
    .word 0xFA07F764, 0xF763208D, 0x487EFC8B, 0xF7A32123, 0xE011FB63
    .word 0x2C1C3404, 0x4650DBDB, 0x88406840, 0x42082102, 0x2068D00E
    .word 0xFC7AF763, 0xF9F5F764, 0x21204874, 0xFB50F7A3, 0xF9F8F0A7
    .word 0x72282001, 0xE0002000, 0xBDF02001, 0x809CCF8, 0x141
    .word 0x19B, 0x1AA, 0x1B9, 0x1C8, 0x1D7
    .word 0x1E6, 0x809CD18, 0x0
    .word 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0x485EB5F0, 0xF7A32121, 0x2000FB23
    .word 0xBDF0, 0x2001B5F0, 0xF93AF797, 0xFE09F766, 0xFEAFF766, 0xFE21F766, 0xFEC7F766, 0xBDF02000, 0x6F28B5F0
    .word 0xD1094200, 0x67282001, 0xFBACF7A2, 0xF7A22000, 0xF7A2FC9D, 0xE01EFBCC, 0x24012600, 0xF7A24667, 0x46BCFBED
    .word 0x2601D009, 0x490C2400, 0x42008848, 0x3801D002, 0xE00E8048, 0x1C202600, 0xFBA4F7A2, 0x2001722C, 0xF7922163
    .word 0x4840F9BF, 0xF7A32131, 0x2000FAE7, 0x2001E000, 0xBDF0, 0x200AD04, 0x483AB5F0, 0xF7A3211F, 0x2000FADB
    .word 0xBDF0, 0xF764B500, 0x4200F96E, 0xF000D102, 0xE001F82F, 0xF804F084, 0xFAE0F09F, 0xF0832000, 0xD00CFF8F
    .word 0x29102032, 0x2034D003, 0xD000290F, 0x1C012033, 0xF7A3482A, 0x2000FABD, 0x2000E000, 0xBD00, 0x2401B5F0
    .word 0xF7A24667, 0x46BCFBA1, 0xD1094200, 0xFC0EF7A2, 0x2004D006, 0xFC88F7A2, 0xD1014209, 0x2400676A, 0x42001C20
    .word 0xBDF0, 0xB08AB5F0, 0x4650466F, 0x79C46C00, 0x25004E0C, 0x48165971, 0xD0054281, 0xF7761C20, 0x5178FCAC
    .word 0xE7F53504, 0x59712500, 0x42814810, 0x597AD005, 0xF7762000, 0x3504FC94, 0xB00AE7F5, 0xBDF0, 0x809CE84
    .word 0x2D, 0x2E, 0x2F, 0x30, 0x56, 0x57, 0x58, 0x59, 0x5A
    .word 0x5B, 0xFFFFFFFF, 0x2033404
unk_809CEB4:    .byte 0x3F 
    .byte 0
    .byte 6
    .byte 2
    .byte 0xFF
    .byte 0x10
    .byte 0x47 
    .byte 0
    .byte 0xFF
    .byte 4
    .byte 0x40 
    .byte 4
    .byte 0xFF
    .byte 4
    .byte 0x3E 
    .byte 0xE0
    .word 0x20873B9, 0x43A10FF, 0xFF028004, 0x7B10, 0x9CEDE00
    .word 0xCF281508, 0xFF530809, 0x3CFF0203, 0x201FF53, 0x7C1EFF
    .word 0xCEFB0000, 0xCF1D0809, 0x28150809, 0x470809CF, 0x21AFF00
    .word 0x4713FF, 0xFF021BFF, 0x3CFF3A10, 0xFF028004, 0xFF004710
    .word 0x10FF0204, 0x9CF2815, 0x1EFF0208, 0x43CFF3A, 0x10FF0280
    .word 0x43F
// end of function sub_809CA84

.thumb
sub_809CF2C:
    push {r4-r7,lr}
    bl sub_8034C36
    beq locret_809CF4E
    bl sub_81407D8
    tst r0, r0
    beq locret_809CF4E
    ldr r0, [pc, #0x809cf50-0x809cf3c-4] // =unk_809CEB4
    ldr r1, [pc, #0x809cf58-0x809cf3e-2] // =byte_2005780
    ldr r2, [pc, #0x809cf54-0x809cf40-4] // =0xE
    ldrb r1, [r1,r2]
    sub r1, #1
    add r1, #0x32 
    bl sub_8036E90
    b locret_809CF4E
locret_809CF4E:
    pop {r4-r7,pc}
off_809CF50:    .word unk_809CEB4
dword_809CF54:    .word 0xE
off_809CF58:    .word byte_2005780
dword_809CF5C:    .word 0x8, 0x10000, 0xFFFF0000, 0x9, 0x10000, 0x0
    .word 0xA, 0x8000, 0x8000, 0xB, 0x0
    .word 0x10000, 0xC, 0xFFFF0000, 0x10000, 0x10D, 0xFFFF0000
    .word 0x0
    .word 0x10E, 0xFFFF8000, 0xFFFF8000, 0xF, 0x0
dword_809CFB8:    .word 0xFFFF0000, 0x10, 0x20000, 0xFFFE0000, 0x11, 0x20000
    .word 0x0
    .word 0x12, 0x10000, 0x10000, 0x13, 0x0
    .word 0x20000, 0x14, 0xFFFE0000, 0x20000, 0x115, 0xFFFE0000
    .word 0x0
    .word 0x116, 0xFFFF0000, 0xFFFF0000, 0x17, 0x0
    .word 0xFFFE0000, 0xC, 0x10000, 0xFFFF0000, 0xD, 0x10000
    .word 0x0
    .word 0xE, 0x8000, 0x8000, 0xF, 0x0
    .word 0x10000, 0x8, 0xFFFF0000, 0x10000, 0x109, 0xFFFF0000
    .word 0x0
    .word 0x10A, 0xFFFF8000, 0xFFFF8000, 0xB, 0x0
dword_809D078:    .word 0xFFFF0000, 0x1, 0x40000, 0x0
    .word 0x3, 0x0
    .word 0x40000, 0x105, 0xFFFC0000, 0x0
    .word 0x7, 0x0
    .word 0xFFFC0000, 0x1, 0x40000, 0x0
    .word 0x3, 0x0
    .word 0x40000, 0x105, 0xFFFC0000, 0x0
    .word 0x7, 0x0
dword_809D0D8:    .word 0xFFFC0000, 0x10, 0x40000, 0xFFFC0000, 0x11, 0x40000
    .word 0x0
    .word 0x12, 0x20000, 0x20000, 0x13, 0x0
    .word 0x40000, 0x14, 0xFFFC0000, 0x40000, 0x115, 0xFFFC0000
    .word 0x0
    .word 0x116, 0xFFFE0000, 0xFFFE0000, 0x17, 0x0
dword_809D138:    .word 0xFFFC0000, 0x10, 0x40000, 0xFFFC0000, 0x11, 0x40000
    .word 0x0
    .word 0x12, 0x20000, 0x20000, 0x13, 0x0
    .word 0x40000, 0x14, 0xFFFC0000, 0x40000, 0x115, 0xFFFC0000
    .word 0x0
    .word 0x116, 0xFFFE0000, 0xFFFE0000, 0x17, 0x0
    .word 0xFFFC0000
// end of function sub_809CF2C

loc_809D19C:
    push {lr}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F12C
    mov r0, #0xb
    mov r1, #0xe4
    bl sub_802F164
    bne loc_809D1D2
    bl getPETNaviSelect
    mov r1, #0x35 
    bl sub_80137B6
    tst r0, r0
    beq loc_809D1D2
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    mov r1, #0x80
    cmp r0, r1
    blt loc_809D1D2
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F110
loc_809D1D2:
    ldr r0, [pc, #0x809d258-0x809d1d2-2] // =off_809D25C
    ldrb r1, [r5,#8]
    ldr r0, [r0,r1]
    mov lr, pc
    bx r0
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    cmp r0, r1
    beq loc_809D1EE
    strb r0, [r5,#0x15]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
loc_809D1EE:
    ldr r7, [pc, #0x809d268-0x809d1ee-2] // =byte_2000AA0
    mov r6, r10
    ldr r6, [r6,#0x3c]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_809D222
    bl sub_8002D14
    ldrb r0, [r7,#0x2] // (byte_2000AA2 - 0x2000aa0)
    ldrb r1, [r7]
    ldrb r2, [r7,#0x1] // (byte_2000AA1 - 0x2000aa0)
    cmp r0, #0
    bne loc_809D212
    cmp r1, #0x40 
    bne loc_809D212
    cmp r2, #0x40 
    bne loc_809D212
    b loc_809D218
loc_809D212:
    bl sub_8002C24
    b loc_809D21C
loc_809D218:
    bl sprite_makeUnscalable
loc_809D21C:
    ldrh r0, [r7,#0x6] // (word_2000AA6 - 0x2000aa0)
    cmp r0, #0
    bne loc_809D234
loc_809D222:
    bl sub_8002EE8
    mov r0, #0x1c
    add r0, r0, r5
    bl sub_8031A7A
    cmp r0, #0x3c 
    bne loc_809D238
    ldr r0, [pc, #0x809d344-0x809d232-2] // =0xA108
loc_809D234:
    bl sub_8002ED0
loc_809D238:
    ldrb r0, [r7,#0x5] // (byte_2000AA5 - 0x2000aa0)
    bl sprite_setPallete
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    beq loc_809D252
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#0x10]
    tst r0, r0
    beq locret_809D256
loc_809D252:
    bl anim_80026C4
locret_809D256:
    pop {pc}
off_809D258:    .word off_809D25C
off_809D25C:    .word sub_809D270+1
    .word loc_809D348+1
    .word sub_809D7F8+1
off_809D268:    .word byte_2000AA0
    .word byte_200ACE0
.thumb
sub_809D270:
    push {r4,lr}
    mov r0, #3
    strb r0, [r5]
    bl getPETNaviSelect
    ldr r4, [pc, #0x809d324-0x809d27a-2] // =unk_809D328
    ldrb r4, [r4,r0]
    mov r6, #0x18
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    mov r3, #0x80
    cmp r0, r3
    bge loc_809D29E
    mov r4, #0x37 
    mov r0, #0x17
    mov r1, #0x29 
    bl sub_802F164
    bne loc_809D29E
    mov r4, #0
    mov r6, #0x18
    b loc_809D2B2
loc_809D29E:
    ldr r7, [pc, #0x809d340-0x809d29e-2] // =byte_2000AA0
    ldrb r0, [r7,#0x4] // (byte_2000AA4 - 0x2000aa0)
    tst r0, r0
    beq loc_809D2B2
    sub r0, #1
    lsl r0, r0, #1
    ldr r4, [pc, #0x809d334-0x809d2aa-2] // =dword_809D338
    add r4, r4, r0
    ldrb r6, [r4]
    ldrb r4, [r4,#1]
loc_809D2B2:
    mov r0, #0x80
    add r1, r6, #0
    add r2, r4, #0
    bl sub_80026E4
    mov r0, #0
    strb r0, [r5,#0x14]
    mov r0, #0xff
    strb r0, [r5,#0x15]
    bl sub_8002F90
    mov r0, r10
    ldr r0, [r0,#0x3c]
    str r5, [r0,#0x18]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #0x48 
// memBlock
    add r0, r0, r5
// numWords
    mov r1, #0x20 
    bl CpuSet_ZeroFillWord
    mov r0, #1
    strb r0, [r5,#0x17]
    strb r0, [r5,#0xc]
    mov r0, #0
    strb r0, [r5,#0x16]
    ldrb r0, [r5,#0x10]
    mov r1, #7
    and r0, r1
    strb r0, [r5,#0x10]
    mov r0, #0xff
    strb r0, [r5,#0x11]
    mov r0, #0
    mov r3, #0x4c 
    strh r0, [r5,r3]
    mov r3, #0x4e 
    strh r0, [r5,r3]
    str r0, [r5,#0x38]
    str r0, [r5,#0x3c]
    str r0, [r5,#0x40]
    str r0, [r5,#0x44]
    strb r0, [r5,#0xd]
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strh r0, [r5,#0x18]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    strb r0, [r7,#0x10]
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x20]
    ldr r2, [r5,#0x24]
    str r0, [r5,#0x28]
    str r1, [r5,#0x2c]
    str r2, [r5,#0x30]
    bl loc_809D348
    pop {r4,pc}
off_809D324:    .word unk_809D328
unk_809D328:    .byte 0x37 
    .byte 0x47 
    .hword 0x4B49
    .word 0x4A484F50, 0x374E4D4C
off_809D334:    .word dword_809D338
dword_809D338:    .word 0x21C541C, 0x6C1C
off_809D340:    .word byte_2000AA0
dword_809D344:    .word 0xA108
// end of function sub_809D270

loc_809D348:
    push {lr}
    mov r0, #0
    mov r7, r10
    ldr r7, [r7,#0x3c]
    strb r0, [r7,#0x11]
    strb r0, [r5,#0x13]
    strb r0, [r5,#0x13]
    ldrb r1, [r5,#0xe]
    strb r1, [r5,#0xf]
    ldrb r1, [r5,#0xd]
    strb r1, [r5,#0xe]
    strb r0, [r5,#0xd]
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x20]
    ldr r2, [r5,#0x24]
    str r0, [r5,#0x28]
    str r1, [r5,#0x2c]
    str r2, [r5,#0x30]
    ldr r7, [pc, #0x809d468-0x809d36c-4] // =off_809D450
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq loc_809D3BC
    bl sub_809E3D6
    mov r0, #0x1c
    add r0, r0, r5
    bl sub_8030B6A
    tst r0, r0
    beq loc_809D3BC
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq loc_809D3BC
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    beq loc_809D3A8
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F110
loc_809D3A8:
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F12C
    bl sub_809DE60
loc_809D3BC:
    bl sub_809E46E
    bl sub_809DB60
    bl sub_809E3A2
    bne loc_809D3E6
    ldrb r0, [r5,#0x17]
    tst r0, r0
    beq loc_809D3E6
    mov r0, #0xb
    mov r1, #0xe4
    bl sub_802F164
    bne loc_809D3E6
    mov r0, #0x1c
    add r0, r0, r5
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
loc_809D3E6:
    mov r0, #0x17
    mov r1, #0x18
    bl sub_802F164
    beq loc_809D3FC
    mov r0, #0x17
    mov r1, #0x18
    bl sub_802F12C
    bl sub_809E0C8
loc_809D3FC:
    ldrb r0, [r5,#0x16]
    tst r0, r0
    bne loc_809D40A
    add r0, r5, #0
    add r0, #0x1c
    bl sub_8035694
loc_809D40A:
    bl sub_8002E14
    bl sub_809DFA0
    tst r0, r0
    beq loc_809D446
    bl sub_8036F36
    tst r0, r0
    bne loc_809D446
    ldrb r1, [r5,#0x13]
    mov r7, r10
    ldr r7, [r7,#0x40]
    ldrh r0, [r7,#0x12]
    add r0, r0, r1
    strh r0, [r7,#0x12]
    ldr r0, [r7,#0x24]
    tst r0, r0
    beq loc_809D438
    sub r0, r0, r1
    bge loc_809D436
    mov r0, #0
loc_809D436:
    str r0, [r7,#0x24]
loc_809D438:
    ldr r0, [r7,#0x28]
    tst r0, r0
    beq loc_809D446
    sub r0, r0, r1
    bge loc_809D444
    mov r0, #0
loc_809D444:
    str r0, [r7,#0x28]
loc_809D446:
    bl sub_809DFC0
    bl sub_809DE98
    pop {pc}
off_809D450:    .word dword_809D470+1
    .word sub_809D4DC+1
    .word sub_809D61A+1
    .word loc_809D75E+1
    .word sub_809D800+1
    .word sub_809D8F4+1
off_809D468:    .word off_809D450
    .word 0xFFFF
dword_809D470:    .word 0xF000B510
    .word 0x7AA8FAB5, 0xD1034200, 0x75287C28, 0x72A82004, 0xFB64F000
    .word 0x2014D003, 0xFDBAF000, 0xF000BD10, 0x4200FB31, 0x2004D003
    .word 0xFDB2F000, 0xF000BD10, 0x4200FB2E, 0x2008D003, 0xFDAAF000
    .word 0xF000BD10, 0x4200FD0F, 0x200CD003, 0xFDA2F000, 0xF000BD10
    .word 0x4200FD31, 0x2000D005, 0x20107078, 0xFD98F000, 0xBD10BD10
    .word 0x2000AA0
.thumb
sub_809D4DC:
    push {lr}
    bl sub_809D9E0
    tst r0, r0
    beq loc_809D4FC
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_809D4F2
    mov r0, #0
    strb r0, [r5,#0xa]
loc_809D4F2:
    ldr r7, [pc, #0x809d55c-0x809d4f2-2] // =off_809D554
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
loc_809D4FC:
    bl sub_809DF28
    tst r0, r0
// end of function sub_809D4DC

    beq loc_809D510
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x10
    bl sub_809E004
    b locret_809D552
loc_809D510:
    bl sub_809DED4
    tst r0, r0
    beq loc_809D520
    mov r0, #0xc
    bl sub_809E004
    b locret_809D552
loc_809D520:
    bl sub_809DB02
    tst r0, r0
    beq loc_809D530
    mov r0, #8
    bl sub_809E004
    b loc_809D54E
loc_809D530:
    bl sub_809DB50
    beq loc_809D53E
    mov r0, #0x14
    bl sub_809E004
    b locret_809D552
loc_809D53E:
    bl sub_809DAF8
    tst r0, r0
    bne loc_809D54E
    mov r0, #0
    bl sub_809E004
    b locret_809D552
loc_809D54E:
    ldrb r0, [r5,#0x13]
    strb r0, [r5,#0x13]
locret_809D552:
    pop {pc}
off_809D554:    .word sub_809D560+1
    .word sub_809D5C4+1
off_809D55C:    .word off_809D554
.thumb
sub_809D560:
    push {lr}
    mov r1, #0
    ldr r7, [pc, #0x809d714-0x809d564-4] // =byte_2000AA0
    mov r6, r10
    ldr r6, [r6,#0x3c]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_809D572
    ldrb r1, [r7,#0x3] // (byte_2000AA3 - 0x2000aa0)
loc_809D572:
    ldrb r0, [r5,#0x10]
    ldr r7, [pc, #0x809d5ac-0x809d574-4] // =off_809D5B0
    push {r0,r1,r3-r5}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq loc_809D584
    ldr r7, [pc, #0x809d5b8-0x809d582-2] // =off_809D5BC
loc_809D584:
    pop {r0,r1,r3-r5}
    ldr r7, [r7,r1]
    ldr r6, [pc, #0x809d8ac-0x809d588-4] // =byte_200ACE0
    ldr r1, [r6,#0x18] // (dword_200ACF8 - 0x200ace0)
    tst r1, r1
    beq loc_809D592
    ldr r7, [r6,#0x20] // (dword_200AD00 - 0x200ace0)
loc_809D592:
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x38]
    ldr r0, [r7,#8]
    str r0, [r5,#0x3c]
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
off_809D5AC:    .word off_809D5B0
off_809D5B0:    .word dword_809CF5C
    .word dword_809D0D8+4
off_809D5B8:    .word off_809D5BC
off_809D5BC:    .word dword_809CFB8+4
    .word dword_809D0D8+4
// end of function sub_809D560

.thumb
sub_809D5C4:
    push {lr}
    bl sub_809DDCC
    tst r0, r0
    beq loc_809D60C
    mov r0, #0x1c
    add r0, r0, r5
    bl sub_8031612
    mov r2, #0
    mov r3, #1
    cmp r1, #1
    bne loc_809D5F4
    mov r2, #1
    mov r3, #2
    push {r3}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    pop {r3}
    beq loc_809D5F4
    mov r2, #0
    mov r3, #1
loc_809D5F4:
    strb r3, [r5,#0x13]
    ldr r0, [r5,#0x38]
    lsl r0, r2
    ldr r1, [r5,#0x1c]
    add r1, r1, r0
    str r1, [r5,#0x1c]
    ldr r0, [r5,#0x3c]
    lsl r0, r2
    ldr r1, [r5,#0x20]
    add r1, r1, r0
    str r1, [r5,#0x20]
    pop {pc}
loc_809D60C:
    ldr r0, [r5,#0x28]
    ldr r1, [r5,#0x2c]
    ldr r2, [r5,#0x30]
    str r0, [r5,#0x1c]
    str r1, [r5,#0x20]
    str r2, [r5,#0x24]
    pop {pc}
// end of function sub_809D5C4

.thumb
sub_809D61A:
    push {lr}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq loc_809D630
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    bne loc_809D646
loc_809D630:
    bl sub_809D9E0
    tst r0, r0
    beq loc_809D650
    ldrb r0, [r5,#0x10]
    ldrb r1, [r5,#0x11]
    cmp r0, r1
    beq loc_809D646
    mov r0, #0
    strb r0, [r5,#0xa]
    b loc_809D646
loc_809D646:
    ldr r7, [pc, #0x809d6b8-0x809d646-2] // =off_809D6B0
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
loc_809D650:
    bl sub_809DF28
    tst r0, r0
// end of function sub_809D61A

    beq loc_809D668
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x10
    bl sub_809E004
    bl sub_809DE30
    b locret_809D6AE
loc_809D668:
    bl sub_809DED4
    tst r0, r0
    beq loc_809D678
    mov r0, #0xc
    bl sub_809E004
    b locret_809D6AE
loc_809D678:
    bl sub_809DB50
    beq loc_809D68A
    mov r0, #0x14
    bl sub_809E004
    bl sub_809DE30
    b locret_809D6AE
loc_809D68A:
    bl sub_809DAF8
    tst r0, r0
    beq loc_809D69A
    mov r0, #4
    bl sub_809E004
    b loc_809D6AA
loc_809D69A:
    bl sub_809DB02
    tst r0, r0
    bne loc_809D6AA
    mov r0, #0
    bl sub_809E004
    b locret_809D6AE
loc_809D6AA:
    bl sub_809DDF0
locret_809D6AE:
    pop {pc}
off_809D6B0:    .word sub_809D6BC+1
    .word sub_809D730+1
off_809D6B8:    .word off_809D6B0
.thumb
sub_809D6BC:
    push {lr}
    mov r1, #0
    ldr r7, [pc, #0x809d714-0x809d6c0-4] // =byte_2000AA0
    mov r6, r10
    ldr r6, [r6,#0x3c]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_809D6CE
    ldrb r1, [r7,#0x3] // (byte_2000AA3 - 0x2000aa0)
loc_809D6CE:
    ldrb r0, [r5,#0x10]
    ldr r7, [pc, #0x809d718-0x809d6d0-4] // =off_809D71C
    push {r0,r1,r3-r5}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq loc_809D6F4
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    bne loc_809D6F2
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F164
    bne loc_809D6F4
loc_809D6F2:
    ldr r7, [pc, #0x809d724-0x809d6f2-2] // =off_809D728
loc_809D6F4:
    pop {r0,r1,r3-r5}
    ldr r7, [r7,r1]
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x38]
    ldr r0, [r7,#8]
    str r0, [r5,#0x3c]
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
    .balign 4, 0x00
off_809D714:    .word byte_2000AA0
off_809D718:    .word off_809D71C
off_809D71C:    .word dword_809CFB8+4
    .word dword_809D0D8+4
off_809D724:    .word off_809D728
off_809D728:    .word dword_809D138+4
    .word dword_809D0D8+4
// end of function sub_809D6BC

.thumb
sub_809D730:
    push {lr}
    bl sub_809DDCC
    tst r0, r0
    beq loc_809D750
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x1c]
    add r1, r1, r0
    str r1, [r5,#0x1c]
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x20]
    add r1, r1, r0
    str r1, [r5,#0x20]
    mov r0, #2
    strb r0, [r5,#0x13]
    pop {pc}
loc_809D750:
    ldr r0, [r5,#0x28]
    ldr r1, [r5,#0x2c]
    ldr r2, [r5,#0x30]
    str r0, [r5,#0x1c]
    str r1, [r5,#0x20]
    str r2, [r5,#0x24]
    pop {pc}
// end of function sub_809D730

loc_809D75E:
    push {lr}
    ldr r7, [pc, #0x809d7a4-0x809d760-4] // =off_809D798
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    ldr r7, [pc, #0x809d8ac-0x809d76a-2] // =byte_200ACE0
    ldrb r0, [r7,#0x1c] // (byte_200ACFC - 0x200ace0)
    cmp r0, #0xff
    beq loc_809D778
    strb r0, [r5,#0x14]
    mov r0, #0xff
    strb r0, [r7,#0x1c] // (byte_200ACFC - 0x200ace0)
loc_809D778:
    bl sub_809DF28
    tst r0, r0
    beq locret_809D796
    mov r0, #2
    strb r0, [r7,#0x1] // (byte_200ACE1 - 0x200ace0)
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r0, #0
    strb r0, [r7,#0x10]
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #0x10
    bl sub_809E004
locret_809D796:
    pop {pc}
off_809D798:    .word sub_809D7A8+1
    .word 0x809D7C9, 0x809D7D9
off_809D7A4:    .word off_809D798
.thumb
sub_809D7A8:
    push {lr}
    bl sub_8036F36
    tst r0, r0
    bne loc_809D7E2
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x14]
    ldr r7, [r5,#0x58]
    ldrb r0, [r7,#0x17]
    tst r0, r0
    bne locret_809D7C6
    mov r0, #1
    strb r0, [r7,#0x18]
    mov r0, #4
    strb r0, [r5,#0xa]
locret_809D7C6:
    pop {pc}
    push {lr}
    ldr r7, [r5,#0x58]
    ldrb r0, [r7,#0xa]
    cmp r0, #4
    bne locret_809D7D6
    mov r0, #8
    strb r0, [r5,#0xa]
locret_809D7D6:
    pop {pc}
    push {lr}
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_809D7F6
loc_809D7E2:
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r0, #0
    strb r0, [r7,#0x10]
    mov r0, #0
    strb r0, [r5,#7]
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
locret_809D7F6:
    pop {pc}
// end of function sub_809D7A8

.thumb
sub_809D7F8:
    push {lr}
    bl sub_8003B86
    pop {pc}
// end of function sub_809D7F8

.thumb
sub_809D800:
    push {lr}
    ldr r7, [pc, #0x809d8ac-0x809d802-2] // =byte_200ACE0
    ldr r0, [r5,#0x1c]
    ldr r1, [r5,#0x20]
    ldr r2, [r5,#0x24]
    str r0, [r5,#0x28]
    str r1, [r5,#0x2c]
    str r2, [r5,#0x30]
    ldr r0, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
    str r0, [r5,#0x1c]
    ldr r0, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
    str r0, [r5,#0x20]
    ldr r0, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
    str r0, [r5,#0x24]
    ldrb r0, [r7,#0x15] // (byte_200ACF5 - 0x200ace0)
    tst r0, r0
    bne loc_809D828
    ldrb r0, [r7,#0x2] // (byte_200ACE2 - 0x200ace0)
    strb r0, [r5,#0x14]
    b loc_809D832
loc_809D828:
    ldr r7, [pc, #0x809d8c8-0x809d828-4] // =off_809D8B0
    ldrb r0, [r5,#0xb]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
loc_809D832:
    bl sub_809DF36
    tst r0, r0
    bne loc_809D844
    ldr r6, [pc, #0x809d8a8-0x809d83a-2] // =dword_809D89C
    ldrb r0, [r7,#0x1] // (byte_200ACE1 - 0x200ace0)
    lsl r0, r0, #2
    ldr r0, [r6,r0]
    str r0, [r5,#8]
loc_809D844:
    ldrb r0, [r5,#0xc]
    tst r0, r0
    beq loc_809D856
    bl sub_809E3D6
    mov r0, #0x1c
    add r0, r0, r5
    bl sub_8030B6A
loc_809D856:
    ldr r7, [pc, #0x809d8ac-0x809d856-2] // =byte_200ACE0
    ldr r0, [r5,#0x1c]
    str r0, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
    ldr r0, [r5,#0x20]
    str r0, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
    ldr r0, [r5,#0x24]
    str r0, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
    bl sub_809E3A2
    bne loc_809D886
    ldrb r0, [r5,#0x17]
    tst r0, r0
    beq loc_809D886
    mov r0, #0xb
    mov r1, #0xe4
    bl sub_802F164
    bne loc_809D886
    mov r0, #0x1c
    add r0, r0, r5
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
loc_809D886:
    ldrb r0, [r5,#0x16]
    tst r0, r0
    bne loc_809D894
    add r0, r5, #0
    add r0, #0x1c
    bl sub_8035694
loc_809D894:
    bl sub_8002E14
    pop {pc}
    .balign 4, 0x00
dword_809D89C:    .word 0x40004, 0x80C04, 0x4
off_809D8A8:    .word dword_809D89C
off_809D8AC:    .word byte_200ACE0
off_809D8B0:    .word dword_809D470+1
    .word sub_809D4DC+1
    .word sub_809D61A+1
    .word loc_809D75E+1
    .word sub_809D800+1
    .word sub_809D8F4+1
off_809D8C8:    .word off_809D8B0
// end of function sub_809D800

    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_809D8DE
    mov r0, #4
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x14]
    mov r0, #4
    strb r0, [r5,#0xa]
loc_809D8DE:
    mov r0, #0x80
    bl sub_8045F3C
    bne locret_809D8F0
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
locret_809D8F0:
    pop {pc}
    .balign 4, 0x00
.thumb
sub_809D8F4:
    push {lr}
    ldr r7, [pc, #0x809d928-0x809d8f6-2] // =off_809D91C
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_809DF28
    tst r0, r0
// end of function sub_809D8F4

    beq locret_809D91A
    mov r0, #0
    strb r0, [r7,#1]
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F12C
    mov r0, #0x10
    bl sub_809E004
locret_809D91A:
    pop {pc}
off_809D91C:    .word sub_809D92C+1
    .word sub_809D964+1
    .word sub_809D9A0+1
off_809D928:    .word off_809D91C
.thumb
sub_809D92C:
    push {lr}
    mov r1, #0x64 
    ldrh r0, [r5,r1]
    cmp r0, #3
    bgt loc_809D938
    add r0, #4
loc_809D938:
    mov r2, #0x66 
    strh r0, [r5,r2]
    ldr r7, [pc, #0x809d9d8-0x809d93c-4] // =off_809D9DC
    ldr r7, [r7]
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x38]
    ldr r0, [r7,#8]
    str r0, [r5,#0x3c]
    ldrb r0, [r7]
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r0, #4
    strb r0, [r5,#0xa]
    mov r0, #1
    mov r1, #0x5c 
    strb r0, [r5,r1]
    pop {pc}
// end of function sub_809D92C

.thumb
sub_809D964:
    push {lr}
    mov r0, #1
    mov r1, #0x5c 
    ldrb r0, [r5,r1]
    sub r0, #1
    strb r0, [r5,r1]
    tst r0, r0
    bne loc_809D97E
    mov r0, #6
    strb r0, [r5,r1]
    mov r0, #0x98
    bl sound_play
loc_809D97E:
    mov r1, #0x64 
    ldrh r0, [r5,r1]
    mov r2, #0x66 
    ldrh r3, [r5,r2]
    cmp r0, r3
    bne loc_809D98E
    mov r0, #8
    strb r0, [r5,#0xa]
loc_809D98E:
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x1c]
    add r1, r1, r0
    str r1, [r5,#0x1c]
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x20]
    add r1, r1, r0
    str r1, [r5,#0x20]
    pop {pc}
// end of function sub_809D964

.thumb
sub_809D9A0:
    push {lr}
    add r0, r5, #0
    add r0, #0x1c
    bl sub_8031A7A
    cmp r0, #0x4c 
    blt loc_809D9C4
    cmp r0, #0x4f 
    bgt loc_809D9C4
    ldr r0, [r5,#0x38]
    ldr r1, [r5,#0x1c]
    add r1, r1, r0
    str r1, [r5,#0x1c]
    ldr r0, [r5,#0x3c]
    ldr r1, [r5,#0x20]
    add r1, r1, r0
    str r1, [r5,#0x20]
    b locret_809D9D6
loc_809D9C4:
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F12C
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strb r0, [r5,#0xa]
    strb r0, [r5,#0xb]
locret_809D9D6:
    pop {pc}
off_809D9D8:    .word off_809D9DC
off_809D9DC:    .word dword_809D078+4
// end of function sub_809D9A0

.thumb
sub_809D9E0:
    push {lr}
    sub sp, sp, #0xc
    mov r8, sp
    ldr r7, [pc, #0x809daf4-0x809d9e6-2] // =byte_200ACE0
    ldrb r0, [r7,#0x15] // (byte_200ACF5 - 0x200ace0)
    tst r0, r0
    bne loc_809DA98
    bl engine_isScreeneffectAnimating
    beq loc_809DA94
    push {r0}
    mov r0, #0x17
    mov r1, #0x14
    bl sub_802F164
    pop {r0}
    beq loc_809DA82
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164
    bne loc_809DA94
    bl sub_8036F36
    bne loc_809DA94
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r0, #0
    mov r7, r10
    ldr r7, [r7,#4]
    ldrh r1, [r7,#2]
    mov r2, #8
    tst r2, r1
    bne loc_809DA82
    mov r2, #1
    tst r2, r1
    beq loc_809DA62
    push {r0,r1,r7}
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #2
    ldr r7, [pc, #0x809dbbc-0x809da30-4] // =off_809DC0C
    ldr r7, [r7,r0]
    mov r6, r8
    ldr r0, [r5,#0x1c]
    ldr r1, [r7]
    add r0, r0, r1
    str r0, [r6]
    ldr r0, [r5,#0x20]
    ldr r1, [r7,#4]
    add r0, r0, r1
    str r0, [r6,#4]
    ldr r0, [r5,#0x24]
    ldr r1, [r7,#8]
    add r0, r0, r1
    str r0, [r6,#8]
    add r0, r6, #0
    bl sub_8031A7A
    add r2, r0, #0
    strb r2, [r5,#0xd]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    mov r2, #1
    strb r2, [r7,#0x11]
    pop {r0,r1,r7}
loc_809DA62:
    ldrh r1, [r7]
    mov r2, #0xf0
    and r2, r1
    beq loc_809DA82
    lsr r2, r2, #4
    ldr r7, [pc, #0x809daec-0x809da6c-4] // =dword_809DAD8
    ldrb r2, [r7,r2]
    orr r0, r2
    mov r2, #2
    tst r2, r1
    beq loc_809DA7E
    mov r1, #0x20 
    orr r0, r1
    b loc_809DA82
loc_809DA7E:
    mov r1, #0x10
    orr r0, r1
loc_809DA82:
    mov r3, #0x4c 
    strh r0, [r5,r3]
    mov r1, #0xf
    and r1, r0
    beq loc_809DA90
    sub r1, #1
    strb r1, [r5,#0x10]
loc_809DA90:
    add sp, sp, #0xc
    pop {pc}
loc_809DA94:
    mov r0, #0
    b loc_809DA82
loc_809DA98:
    ldrb r0, [r5,#0x10]
    strb r0, [r5,#0x11]
    mov r0, #0
    ldr r7, [pc, #0x809daf4-0x809da9e-2] // =byte_200ACE0
    ldrh r1, [r7,#0x18] // (dword_200ACF8 - 0x200ace0)
    ldrh r1, [r7,#0x1a] // (dword_200ACF8+2 - 0x200ace0)
    mov r2, #0xf0
    and r2, r1
    beq loc_809DAC2
    lsr r2, r2, #4
    ldr r7, [pc, #0x809daec-0x809daac-4] // =dword_809DAD8
    ldrb r2, [r7,r2]
    orr r0, r2
    mov r2, #2
    tst r2, r1
    beq loc_809DABE
    mov r1, #0x20 
    orr r0, r1
    b loc_809DAC2
loc_809DABE:
    mov r1, #0x10
    orr r0, r1
loc_809DAC2:
    mov r3, #0x4c 
    strh r0, [r5,r3]
    mov r1, #0xf
    and r1, r0
    beq loc_809DAD0
    sub r1, #1
    strb r1, [r5,#0x10]
loc_809DAD0:
    add sp, sp, #0xc
    pop {pc}
    .byte 0
    .byte 0x20
    .byte 0xF4
    .byte 0xE7
dword_809DAD8:    .word 0x70300, 0x80201, 0x60405, 0x0
    .word 0x200
off_809DAEC:    .word dword_809DAD8
    .word byte_2000AA0
off_809DAF4:    .word byte_200ACE0
// end of function sub_809D9E0

.thumb
sub_809DAF8:
    mov r3, #0x4c 
    ldrh r0, [r5,r3]
    mov r1, #0x10
    and r0, r1
    mov pc, lr
// end of function sub_809DAF8

.thumb
sub_809DB02:
    push {lr}
    mov r3, #0x4c 
    ldrh r0, [r5,r3]
    mov r1, #0x20 
    push {r0,r1}
    and r0, r1
    tst r0, r0
    beq loc_809DB4A
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    bne loc_809DB4A
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F164
    bne loc_809DB4A
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq loc_809DB4A
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F110
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F110
    mov r0, #0x36 
    add r0, #0xff
    bl sound_play
    b loc_809DB4A
loc_809DB4A:
    pop {r0,r1}
    and r0, r1
    pop {pc}
// end of function sub_809DB02

.thumb
sub_809DB50:
    push {lr}
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F164
    bne locret_809DB5E
    mov r0, #0
locret_809DB5E:
    pop {pc}
// end of function sub_809DB50

.thumb
sub_809DB60:
    push {lr}
    ldr r0, [pc, #0x809dbf0-0x809db62-2] // =dword_809DBF4
    mov r1, #0x34 
    add r1, r1, r5
    bl sub_809DBC4
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    bne loc_809DB82
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0]
    mov r1, #0xf0
    tst r0, r1
    beq loc_809DB92
loc_809DB82:
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #2
    ldr r7, [pc, #0x809dbc0-0x809db86-2] // =off_809DCEC
    ldr r0, [r7,r0]
    mov r1, #0x50 
    add r1, r1, r5
    bl sub_809DBC4
loc_809DB92:
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#0x11]
    tst r0, r0
    beq loc_809DBAC
    ldrb r0, [r5,#0x10]
    lsl r0, r0, #2
    ldr r7, [pc, #0x809dbbc-0x809dba0-4] // =off_809DC0C
    ldr r0, [r7,r0]
    mov r1, #0x48 
    add r1, r1, r5
    bl sub_809DBC4
loc_809DBAC:
    mov r0, #0
    mov r3, #0x34 
    str r0, [r5,r3]
    mov r3, #0x48 
    str r0, [r5,r3]
    mov r3, #0x50 
    str r0, [r5,r3]
    pop {pc}
off_809DBBC:    .word off_809DC0C
off_809DBC0:    .word off_809DCEC
// end of function sub_809DB60

.thumb
sub_809DBC4:
    push {r5,lr}
    add r7, r0, #0
    mov r2, #0
    str r2, [r1]
    push {r1}
    ldr r3, [r5,#0x1c]
    ldr r0, [r7]
    add r0, r0, r3
    ldr r3, [r5,#0x20]
    ldr r1, [r7,#4]
    add r1, r1, r3
    ldr r3, [r5,#0x24]
    ldr r2, [r7,#8]
    add r2, r2, r3
    ldr r3, [r7,#0xc]
    ldr r4, [r7,#0x10]
    ldr r5, [r7,#0x14]
    pop {r6}
    bl sub_80037AC
    pop {r5,pc}
    .byte 0, 0
off_809DBF0:    .word dword_809DBF4
dword_809DBF4:    .word 0x0, 0x0, 0x0
    .word 0x804, 0x10000, 0x180000
off_809DC0C:    .word dword_809DC2C
    .word dword_809DC44
    .word dword_809DC5C
    .word dword_809DC74
    .word dword_809DC8C
    .word dword_809DCA4
    .word dword_809DCBC
    .word dword_809DCD4
dword_809DC2C:    .word 0x5A826, 0xFFFA57DA, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DC44:    .word 0x80000, 0x0, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DC5C:    .word 0x5A826, 0x5A826, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DC74:    .word 0x0
    .word 0x80000, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DC8C:    .word 0xFFFA57DA, 0x5A826, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DCA4:    .word 0xFFF80000, 0x0, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DCBC:    .word 0xFFFA57DA, 0xFFFA57DA, 0x0
    .word 0x808, 0x1, 0x60000
dword_809DCD4:    .word 0x0
    .word 0xFFF80000, 0x0
    .word 0x808, 0x1, 0x60000
off_809DCEC:    .word dword_809DD0C
    .word dword_809DD24
    .word dword_809DD3C
    .word dword_809DD54
    .word dword_809DD6C
    .word dword_809DD84
    .word dword_809DD9C
    .word dword_809DDB4
dword_809DD0C:    .word 0x2D413, 0xFFFD2BED, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DD24:    .word 0x40000, 0x0, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DD3C:    .word 0x2D413, 0x2D413, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DD54:    .word 0x0
    .word 0x40000, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DD6C:    .word 0xFFFD2BED, 0x2D413, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DD84:    .word 0xFFFC0000, 0x0, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DD9C:    .word 0xFFFD2BED, 0xFFFD2BED, 0x0
    .word 0x804, 0x200000, 0xC00000
dword_809DDB4:    .word 0x0
    .word 0xFFFC0000, 0x0
    .word 0x804, 0x200000, 0xC00000
// end of function sub_809DBC4

.thumb
sub_809DDCC:
    push {lr}
    mov r0, #0
    ldrh r1, [r5,#0x18]
    tst r1, r1
    beq loc_809DDDE
    sub r1, #1
    strh r1, [r5,#0x18]
    mov r0, #1
    b locret_809DDE8
loc_809DDDE:
    ldr r1, [r5,#0x50]
    ldr r2, [pc, #0x809ddec-0x809dde0-4] // =0xC00000
    tst r2, r1
    bne locret_809DDE8
    mov r0, #1
locret_809DDE8:
    pop {pc}
    .balign 4, 0x00
dword_809DDEC:    .word 0xC00000
// end of function sub_809DDCC

.thumb
sub_809DDF0:
    push {lr}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq locret_809DE2A
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    beq locret_809DE2A
    ldr r1, [r5,#0x50]
    ldr r2, [pc, #0x809de2c-0x809de08-4] // =0xC00000
    tst r2, r1
    beq locret_809DE2A
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F110
    bl sub_809DE60
locret_809DE2A:
    pop {pc}
dword_809DE2C:    .word 0xC00000
// end of function sub_809DDF0

.thumb
sub_809DE30:
    push {lr}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    beq locret_809DE5E
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F164
    beq loc_809DE4E
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F110
loc_809DE4E:
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F12C
locret_809DE5E:
    pop {pc}
// end of function sub_809DE30

.thumb
sub_809DE60:
    push {lr}
    mov r1, #0
    ldr r7, [pc, #0x809e060-0x809de64-4] // =byte_2000AA0
    mov r6, r10
    ldr r6, [r6,#0x3c]
    ldrb r0, [r6,#4]
    cmp r0, #0x80
    blt loc_809DE72
    ldrb r1, [r7,#0x3] // (byte_2000AA3 - 0x2000aa0)
loc_809DE72:
    ldrb r0, [r5,#0x10]
    ldr r7, [pc, #0x809de8c-0x809de74-4] // =off_809DE90
    ldr r7, [r7,r1]
    lsl r1, r0, #3
    lsl r0, r0, #2
    add r0, r0, r1
    add r7, r7, r0
    ldr r0, [r7,#4]
    str r0, [r5,#0x38]
    ldr r0, [r7,#8]
    str r0, [r5,#0x3c]
    pop {pc}
    .balign 4, 0x00
off_809DE8C:    .word off_809DE90
off_809DE90:    .word dword_809CFB8+4
    .word dword_809D0D8+4
// end of function sub_809DE60

.thumb
sub_809DE98:
    push {lr}
    mov r0, #0x17
    mov r1, #0x16
    bl sub_802F164
    bne loc_809DEBE
    mov r0, #0x17
    mov r1, #0x3d 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3e 
    bl sub_802F12C
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F12C
    b locret_809DED2
loc_809DEBE:
    mov r0, r10
    ldr r0, [r0,#4]
    ldrh r0, [r0]
    mov r1, #2
    tst r0, r1
    bne locret_809DED2
    mov r0, #0x17
    mov r1, #0x3f 
    bl sub_802F12C
locret_809DED2:
    pop {pc}
// end of function sub_809DE98

.thumb
sub_809DED4:
    push {lr}
    mov r0, #1
    bl sub_811EBE0
    bne loc_809DEE4
    bl sub_8036F36
    beq loc_809DEEA
loc_809DEE4:
    mov r0, #0
    strb r0, [r5,#7]
    b locret_809DEF6
loc_809DEEA:
    ldrb r0, [r5,#7]
    lsl r0, r0, #2
    ldr r7, [pc, #0x809defc-0x809deee-2] // =off_809DEF8
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
locret_809DEF6:
    pop {pc}
off_809DEF8:    .word sub_809DF00+1
off_809DEFC:    .word off_809DEF8
// end of function sub_809DED4

.thumb
sub_809DF00:
    push {lr}
    bl sub_809E01C
    tst r0, r0
    bne loc_809DF16
    mov r0, #1
    mov r7, r10
    ldr r7, [r7,#0x3c]
    strb r0, [r7,#0x10]
    mov r0, #1
    pop {pc}
loc_809DF16:
    ldrb r0, [r5,#0xf]
    mov r7, r10
    ldr r7, [r7,#0x3c]
    strb r0, [r7,#0xe]
    tst r0, r0
    beq loc_809DF24
    strb r0, [r7,#3]
loc_809DF24:
    mov r0, #0
    pop {pc}
// end of function sub_809DF00

.thumb
sub_809DF28:
    push {lr}
    ldr r7, [pc, #0x809df40-0x809df2a-2] // =byte_200ACE0
    ldrb r0, [r5,#9]
    cmp r0, #0x10
    bne loc_809DF3A
    mov r0, #0
    pop {pc}
// end of function sub_809DF28

.thumb
sub_809DF36:
    push {lr}
    ldr r7, [pc, #0x809df40-0x809df38-4] // =byte_200ACE0
loc_809DF3A:
    ldrb r0, [r7]
    pop {pc}
    .byte 0, 0
off_809DF40:    .word byte_200ACE0
// end of function sub_809DF36

    push {lr}
    ldr r7, [pc, #0x809df9c-0x809df46-2] // =off_809DF9C
    lsl r0, r0, #3
    add r7, r7, r0
    ldr r3, [r7]
    mul r3, r1
    ldr r4, [r7,#4]
    mul r4, r1
    add r0, r3, #0
    add r1, r4, #0
    pop {pc}
    .balign 4, 0x00
    .word 0xB504, 0xFFFF4AFC, 0x10000, 0x0
    .word 0xB504, 0xB504, 0x0
    .word 0x10000, 0xFFFF4AFC, 0xB504, 0xFFFF0000, 0x0
    .word 0xFFFF4AFC, 0xFFFF4AFC, 0x0
    .word 0xFFFF0000
off_809DF9C:    .word off_809DF9C
.thumb
sub_809DFA0:
    push {lr}
    mov r0, #1
    ldr r1, [r5,#0x1c]
    ldr r2, [r5,#0x28]
    cmp r1, r2
    bne locret_809DFBE
    ldr r1, [r5,#0x20]
    ldr r2, [r5,#0x2c]
    cmp r1, r2
    bne locret_809DFBE
    ldr r1, [r5,#0x24]
    ldr r2, [r5,#0x30]
    cmp r1, r2
    bne locret_809DFBE
    mov r0, #0
locret_809DFBE:
    pop {pc}
// end of function sub_809DFA0

.thumb
sub_809DFC0:
    push {lr}
    ldrb r0, [r5,#9]
    cmp r0, #4
    beq loc_809DFCC
    cmp r0, #8
    bne loc_809DFD4
loc_809DFCC:
    bl sub_809DFA0
    tst r0, r0
    beq loc_809DFDC
loc_809DFD4:
    mov r3, #0x56 
    mov r0, #0
    strh r0, [r5,r3]
    b locret_809DFF6
loc_809DFDC:
    mov r3, #0x56 
    ldrb r0, [r5,r3]
    ldrb r2, [r5,#0x10]
    ldr r7, [pc, #0x809dff8-0x809dfe2-2] // =unk_809DFFC
    ldrb r1, [r7,r2]
    orr r0, r1
    strb r0, [r5,r3]
    cmp r0, #0xf
    bne locret_809DFF6
    mov r0, #0xa
    strh r0, [r5,#0x18]
    mov r0, #0
    strb r0, [r5,r3]
locret_809DFF6:
    pop {pc}
off_809DFF8:    .word unk_809DFFC
unk_809DFFC:    .byte 1
    .byte 3
    .byte 2
    .byte 6
    .byte 4
    .byte 0xC
    .byte 8
    .byte 9
// end of function sub_809DFC0

.thumb
sub_809E004:
    push {lr}
    mov r1, #0
    strb r1, [r5,#0xa]
    ldrb r1, [r5,#9]
    cmp r1, #0x10
    bne loc_809E014
    strb r0, [r5,#0xb]
    pop {pc}
loc_809E014:
    strb r0, [r5,#9]
    pop {pc}
    .word byte_200ACE0
// end of function sub_809E004

.thumb
sub_809E01C:
    push {lr}
    ldr r7, [pc, #0x809e044-0x809e01e-2] // =byte_20057B0
    ldr r2, [pc, #0x809e048-0x809e020-4] // =0xD80
    add r2, r2, r7
loc_809E024:
    ldr r0, [r7,#0x50]
    mov r1, #1
    tst r0, r1
    beq loc_809E03A
    ldr r0, [r7,#0x60]
    mov r1, #1
    tst r0, r1
    bne locret_809E042
    str r7, [r5,#0x58]
    mov r0, #0
    b locret_809E042
loc_809E03A:
    add r7, #0xd8
    cmp r7, r2
    blt loc_809E024
    mov r0, #1
locret_809E042:
    pop {pc}
off_809E044:    .word byte_20057B0
dword_809E048:    .word 0xD80
// end of function sub_809E01C

.thumb
sub_809E04C:
    push {r0,r1,lr}
    ldr r0, [pc, #0x809e05c-0x809e04e-2] // =byte_2009F40
    mov r1, #0
    strb r1, [r0,#0xd] // (byte_2009F4D - 0x2009f40)
    strb r1, [r0,#0xe] // (byte_2009F4E - 0x2009f40)
    strb r1, [r0,#0xf] // (byte_2009F4F - 0x2009f40)
    pop {r0,r1,pc}
    .balign 4, 0x00
off_809E05C:    .word byte_2009F40
off_809E060:    .word byte_2000AA0
// end of function sub_809E04C

.thumb
sub_809E064:
    push {r4,r6,r7,lr}
    mov r0, #0
    mov r4, #0
    bl sub_8003B4C
    tst r5, r5
    beq locret_809E088
    mov r6, r10
    ldr r6, [r6,#0x3c]
    str r5, [r6,#0x18]
    ldr r1, [r6,#0x24]
    str r1, [r5,#0x1c]
    ldr r1, [r6,#0x28]
    str r1, [r5,#0x20]
    ldr r1, [r6,#0x2c]
    str r1, [r5,#0x24]
    ldr r1, [r6,#0x30]
    strb r1, [r5,#0x10]
locret_809E088:
    pop {r4,r6,r7,pc}
// end of function sub_809E064

    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8003B86
    pop {r4-r7,pc}
.thumb
sub_809E098:
    push {lr}
    mov r0, #0x17
    mov r1, #0x14
    bl sub_802F110
    pop {pc}
// end of function sub_809E098

.thumb
sub_809E0A4:
    push {lr}
    mov r0, #0x17
    mov r1, #0x14
    bl sub_802F12C
    pop {pc}
// end of function sub_809E0A4

.thumb
sub_809E0B0:
    ldr r3, [pc, #0x809e138-0x809e0b0-4] // =byte_200ACE0
    mov r0, #1
    strb r0, [r3]
    push {lr}
    mov r0, #0x17
    mov r1, #0x18
    bl sub_802F110
    bl sub_809E0A4
    pop {pc}
// end of function sub_809E0B0

    mov pc, lr
.thumb
sub_809E0C8:
    push {lr}
    ldr r3, [pc, #0x809e138-0x809e0ca-2] // =byte_200ACE0
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r1, [r1,#0x18]
    ldr r0, [r1,#0x1c]
    str r0, [r3,#0x8] // (dword_200ACE8 - 0x200ace0)
    ldr r0, [r1,#0x20]
    str r0, [r3,#0xc] // (dword_200ACEC - 0x200ace0)
    ldr r0, [r1,#0x24]
    str r0, [r3,#0x10] // (dword_200ACF0 - 0x200ace0)
    push {r3}
    mov r0, #0x17
    mov r1, #0x19
    bl sub_802F164
    pop {r3}
    bne locret_809E0FA
    mov r2, r10
    ldr r2, [r2,#0x3c]
    ldr r2, [r2,#0x18]
    ldrb r0, [r2,#0x10]
    mov r1, #7
    and r0, r1
    strb r0, [r3,#2]
locret_809E0FA:
    pop {pc}
// end of function sub_809E0C8

loc_809E0FC:
    ldr r3, [pc, #0x809e138-0x809e0fc-4] // =byte_200ACE0
    mov r0, #1
    strb r0, [r3,#0x15] // (byte_200ACF5 - 0x200ace0)
    mov r0, #0
    str r0, [r3,#0x18] // (dword_200ACF8 - 0x200ace0)
    str r0, [r3,#0x20] // (dword_200AD00 - 0x200ace0)
    ldr r1, [pc, #0x809e110-0x809e108-4] // =dword_809CF5C
    str r1, [r3,#0x20] // (dword_200AD00 - 0x200ace0)
    mov pc, lr
    .byte 0, 0
off_809E110:    .word dword_809CF5C
loc_809E114:
    ldr r3, [pc, #0x809e138-0x809e114-4] // =byte_200ACE0
    mov r0, #0
    strb r0, [r3,#0x15] // (byte_200ACF5 - 0x200ace0)
    mov r0, #0
    str r0, [r3,#0x18] // (dword_200ACF8 - 0x200ace0)
    str r0, [r3,#0x20] // (dword_200AD00 - 0x200ace0)
    mov pc, lr
.thumb
sub_809E122:
    push {lr}
    ldr r3, [pc, #0x809e138-0x809e124-4] // =byte_200ACE0
    mov r0, #0
    strb r0, [r3]
    bl sub_809E098
    mov r0, #0x17
    mov r1, #0x19
    bl sub_802F12C
    pop {pc}
off_809E138:    .word byte_200ACE0
// end of function sub_809E122

.thumb
sub_809E13C:
    push {lr}
    ldr r3, [pc, #0x809e184-0x809e13e-2] // =byte_200ACE0
    strb r0, [r3,#0x2] // (byte_200ACE2 - 0x200ace0)
    mov r0, #0x17
    mov r1, #0x19
    bl sub_802F110
    pop {pc}
// end of function sub_809E13C

.thumb
sub_809E14C:
    push {r4-r7,lr}
    add r4, r0, #0
    ldr r7, [pc, #0x809e184-0x809e150-4] // =byte_200ACE0
    bl sub_809E462
    bne loc_809E164
    strb r4, [r7,#0x2] // (byte_200ACE2 - 0x200ace0)
    mov r0, #0x17
    mov r1, #0x19
    bl sub_802F110
    pop {r4-r7,pc}
loc_809E164:
    strb r4, [r7,#0x1c] // (byte_200ACFC - 0x200ace0)
    pop {r4-r7,pc}
// end of function sub_809E14C

    push {lr}
    ldr r3, [pc, #0x809e184-0x809e16a-2] // =byte_200ACE0
    strb r0, [r3,#0x2] // (byte_200ACE2 - 0x200ace0)
    mvn r0, r0
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    strb r0, [r3,#0x15]
    mov r0, #0x17
    mov r1, #0x19
    bl sub_802F110
    pop {pc}
    .balign 4, 0x00
off_809E184:    .word byte_200ACE0
.thumb
sub_809E188:
    push {r7}
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldr r7, [r3,#0x1c]
    str r7, [r3,#0x28]
    ldr r7, [r3,#0x20]
    str r7, [r3,#0x2c]
    ldr r7, [r3,#0x24]
    str r7, [r3,#0x30]
    str r0, [r3,#0x1c]
    str r1, [r3,#0x20]
    str r2, [r3,#0x24]
    pop {r7}
loc_809E1A4:
    ldr r3, [pc, #0x809e214-0x809e1a4-4] // =byte_200ACE0
    str r0, [r3,#0x8] // (dword_200ACE8 - 0x200ace0)
    str r1, [r3,#0xc] // (dword_200ACEC - 0x200ace0)
    str r2, [r3,#0x10] // (dword_200ACF0 - 0x200ace0)
    mov pc, lr
// end of function sub_809E188

.thumb
sub_809E1AE:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldr r0, [r3,#0x1c]
    ldr r1, [r3,#0x20]
    ldr r2, [r3,#0x24]
    mov pc, lr
// end of function sub_809E1AE

.thumb
sub_809E1BC:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldr r1, [r3,#0x1c]
    ldr r2, [r3,#0x20]
    ldr r3, [r3,#0x24]
    mov pc, lr
// end of function sub_809E1BC

    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldr r0, [r3,#0x20]
    ldr r1, [r3,#0x1c]
    ldr r2, [r3,#0x24]
    mov pc, lr
    push {r7}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r3, [r7,#0x1c]
    str r3, [r7,#0x28]
    add r3, r3, r0
    str r3, [r7,#0x1c]
    ldr r3, [r7,#0x20]
    str r3, [r7,#0x2c]
    add r3, r3, r1
    str r3, [r7,#0x20]
    ldr r3, [r7,#0x24]
    str r3, [r7,#0x30]
    add r3, r3, r2
    str r3, [r7,#0x24]
    pop {r7}
    push {r7,lr}
    ldr r7, [pc, #0x809e214-0x809e1fc-4] // =byte_200ACE0
    ldr r3, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
    add r3, r3, r0
    str r3, [r7,#0x8] // (dword_200ACE8 - 0x200ace0)
    ldr r3, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
    add r3, r3, r1
    str r3, [r7,#0xc] // (dword_200ACEC - 0x200ace0)
    ldr r3, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
    add r3, r3, r2
    str r3, [r7,#0x10] // (dword_200ACF0 - 0x200ace0)
    pop {r7,pc}
    .balign 4, 0x00
off_809E214:    .word byte_200ACE0
    ldr r3, [pc, #0x809e224-0x809e218-4] // =byte_200ACE0
    ldrb r1, [r3,#0x15] // (byte_200ACF5 - 0x200ace0)
    tst r1, r1
    beq locret_809E222
    strh r0, [r3,#0x1a] // (dword_200ACF8+2 - 0x200ace0)
locret_809E222:
    mov pc, lr
off_809E224:    .word byte_200ACE0
.thumb
sub_809E228:
    mov r0, #0
    mov pc, lr
    .word byte_200ACE0
// end of function sub_809E228

.thumb
sub_809E230:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    mov r0, #1
    strb r0, [r3,#0x17]
    mov pc, lr
// end of function sub_809E230

.thumb
sub_809E23C:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    mov r0, #0
    strb r0, [r3,#0x17]
    mov pc, lr
// end of function sub_809E23C

.thumb
sub_809E248:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    mov r0, #1
    strb r0, [r3,#0xc]
    mov pc, lr
// end of function sub_809E248

.thumb
sub_809E254:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    mov r0, #0
    strb r0, [r3,#0xc]
    mov pc, lr
// end of function sub_809E254

loc_809E260:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    strb r0, [r3,#0x16]
    mov pc, lr
loc_809E26A:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    mov r0, #0
    strb r0, [r3,#0x16]
    mov pc, lr
.thumb
sub_809E276:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8002F90
    pop {r5,pc}
// end of function sub_809E276

.thumb
sub_809E284:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8002E3C
    pop {r5,pc}
// end of function sub_809E284

.thumb
sub_809E292:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8002E52
    pop {r5,pc}
// end of function sub_809E292

.thumb
sub_809E2A0:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sprite_setPallete
    pop {r5,pc}
// end of function sub_809E2A0

.thumb
sub_809E2AE:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    strb r0, [r3,#0x10]
    mov pc, lr
// end of function sub_809E2AE

.thumb
sub_809E2B8:
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldr r0, [r0,#0x18]
    ldrb r0, [r0,#0x10]
    mov pc, lr
// end of function sub_809E2B8

.thumb
sub_809E2C2:
    mov r0, #0x40 
    mov r1, #0x40 
    mov r2, #0
    ldr r3, [pc, #0x809e430-0x809e2c8-4] // =byte_2000AA0
    strb r0, [r3]
    strb r1, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
    strb r2, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
    mov pc, lr
// end of function sub_809E2C2

    ldr r3, [pc, #0x809e430-0x809e2d2-2] // =byte_2000AA0
    ldrb r0, [r3]
    ldrb r1, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
    ldrb r2, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
    mov pc, lr
    push {r4,lr}
    ldr r3, [pc, #0x809e430-0x809e2de-2] // =byte_2000AA0
    ldrb r4, [r3]
    add r4, r4, r0
    strb r4, [r3]
    ldrb r4, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
    add r4, r4, r1
    strb r4, [r3,#0x1] // (byte_2000AA1 - 0x2000aa0)
    ldrb r4, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
    add r4, r4, r2
    strb r4, [r3,#0x2] // (byte_2000AA2 - 0x2000aa0)
    pop {r4,pc}
.thumb
sub_809E2F4:
    mov r0, #0
    ldr r3, [pc, #0x809e430-0x809e2f6-2] // =byte_2000AA0
    strh r0, [r3,#0x6] // (word_2000AA6 - 0x2000aa0)
    mov pc, lr
// end of function sub_809E2F4

.thumb
sub_809E2FC:
    mov r0, #0
loc_809E2FE:
    ldr r3, [pc, #0x809e430-0x809e2fe-2] // =byte_2000AA0
    strb r0, [r3,#0x5] // (byte_2000AA5 - 0x2000aa0)
    mov pc, lr
// end of function sub_809E2FC

.thumb
sub_809E304:
    mov r0, #0
loc_809E306:
    ldr r3, [pc, #0x809e430-0x809e306-2] // =byte_2000AA0
    strb r0, [r3,#0x3] // (byte_2000AA3 - 0x2000aa0)
    mov pc, lr
// end of function sub_809E304

    ldr r3, [pc, #0x809e430-0x809e30c-4] // =byte_2000AA0
    ldrb r0, [r3,#0x3] // (byte_2000AA3 - 0x2000aa0)
    mov pc, lr
.thumb
sub_809E312:
    mov r0, #0
loc_809E314:
    ldr r3, [pc, #0x809e430-0x809e314-4] // =byte_2000AA0
    strb r0, [r3,#0x4] // (byte_2000AA4 - 0x2000aa0)
    mov pc, lr
// end of function sub_809E312

    push {r4-r7,lr}
    ldr r3, [pc, #0x809e430-0x809e31c-4] // =byte_2000AA0
    mov r0, #0
    strb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
    strb r0, [r3,#0x4] // (byte_2000AA4 - 0x2000aa0)
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0x48 
    bl sub_80026E4
    ldrb r0, [r5,#0x14]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    bl anim_80026C4
    mov r0, #0
    bl sub_8001172
    mov r0, #6
    mov r1, #0x8e
    bl sub_802F110
    mov r0, #6
    mov r1, #0x8f
    bl sub_802F12C
    pop {r4-r7,pc}
    push {r4-r7,lr}
    ldr r3, [pc, #0x809e430-0x809e360-4] // =byte_2000AA0
    mov r0, #1
    strb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
    strb r0, [r3,#0x4] // (byte_2000AA4 - 0x2000aa0)
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0x54 
    bl sub_80026E4
    ldrb r0, [r5,#0x14]
    bl sprite_setAnimation
    .hword 0xF764
    .word 0xF764F991
    .word 0xF764FE05, 0x2054F99D, 0xFEF1F762, 0x218E2006, 0xFECAF790
    .word 0x218F2006, 0xFEB8F790
    pop {r4-r7,pc}
.thumb
sub_809E3A2:
    ldr r3, [pc, #0x809e430-0x809e3a2-2] // =byte_2000AA0
    ldrb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
    tst r0, r0
    mov pc, lr
// end of function sub_809E3A2

.thumb
sub_809E3AA:
    ldr r3, [pc, #0x809e430-0x809e3aa-2] // =byte_2000AA0
    mov r0, #0
    strb r0, [r3,#0x8] // (byte_2000AA8 - 0x2000aa0)
    mov pc, lr
// end of function sub_809E3AA

.thumb
sub_809E3B2:
    push {r4-r7,lr}
    ldr r4, [pc, #0x809e430-0x809e3b4-4] // =byte_2000AA0
    mov r0, #0
    strb r0, [r4,#0xb] // (byte_2000AAB - 0x2000aa0)
    strh r0, [r4,#0xc] // (dword_2000AAC - 0x2000aa0)
    strh r0, [r4,#0x10] // (dword_2000AB0 - 0x2000aa0)
    strh r0, [r4,#0x14] // (dword_2000AB4 - 0x2000aa0)
    strh r0, [r4,#0x18] // (dword_2000AB8 - 0x2000aa0)
    pop {r4-r7,pc}
// end of function sub_809E3B2

.thumb
sub_809E3C4:
    push {r4-r7,lr}
    ldr r4, [pc, #0x809e430-0x809e3c6-2] // =byte_2000AA0
    str r0, [r4,#0xc] // (dword_2000AAC - 0x2000aa0)
    str r1, [r4,#0x10] // (dword_2000AB0 - 0x2000aa0)
    str r2, [r4,#0x14] // (dword_2000AB4 - 0x2000aa0)
    str r3, [r4,#0x18] // (dword_2000AB8 - 0x2000aa0)
    mov r0, #1
    strb r0, [r4,#0xb] // (byte_2000AAB - 0x2000aa0)
    pop {r4-r7,pc}
// end of function sub_809E3C4

.thumb
sub_809E3D6:
    push {r4-r7,lr}
    ldr r4, [pc, #0x809e430-0x809e3d8-4] // =byte_2000AA0
    ldrb r0, [r4,#0xb] // (byte_2000AAB - 0x2000aa0)
    tst r0, r0
    beq locret_809E42C
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#4]
    cmp r0, #0x80
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r0, [r4,#0xc] // (dword_2000AAC - 0x2000aa0)
    ldr r1, [r7,#0x1c]
    cmp r0, r1
    ble loc_809E3FE
    str r0, [r7,#0x1c]
    ldr r0, [r7,#0x2c]
    str r0, [r7,#0x20]
    b locret_809E42C
loc_809E3FE:
    ldr r0, [r4,#0x14] // (dword_2000AB4 - 0x2000aa0)
    ldr r1, [r7,#0x1c]
    cmp r0, r1
    bge loc_809E40E
    str r0, [r7,#0x1c]
    ldr r0, [r7,#0x2c]
    str r0, [r7,#0x20]
    b locret_809E42C
loc_809E40E:
    ldr r0, [r4,#0x10] // (dword_2000AB0 - 0x2000aa0)
    ldr r1, [r7,#0x20]
    cmp r0, r1
    ble loc_809E41E
    str r0, [r7,#0x20]
    ldr r0, [r7,#0x28]
    str r0, [r7,#0x1c]
    b locret_809E42C
loc_809E41E:
    ldr r0, [r4,#0x18] // (dword_2000AB8 - 0x2000aa0)
    ldr r1, [r7,#0x20]
    cmp r0, r1
    bge locret_809E42C
    str r0, [r7,#0x20]
    ldr r0, [r7,#0x28]
    str r0, [r7,#0x1c]
locret_809E42C:
    pop {r4-r7,pc}
    .byte 0, 0
off_809E430:    .word byte_2000AA0
// end of function sub_809E3D6

.thumb
sub_809E434:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8002DEA
    pop {r5,pc}
// end of function sub_809E434

.thumb
sub_809E442:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldrb r0, [r3]
    mov r1, #2
    orr r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_809E442

.thumb
sub_809E452:
    mov r3, r10
    ldr r3, [r3,#0x3c]
    ldr r3, [r3,#0x18]
    ldrb r0, [r3]
    mov r1, #2
    bic r0, r1
    strb r0, [r3]
    mov pc, lr
// end of function sub_809E452

.thumb
sub_809E462:
    push {lr}
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldrb r0, [r1,#0x10]
    tst r0, r0
    pop {pc}
// end of function sub_809E462

.thumb
sub_809E46E:
    push {r7,lr}
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r0, [r7,#0x18]
    add r0, #0x1c
    bl sub_8031A7A
    cmp r0, #0x48 
    blt locret_809E494
    cmp r0, #0x4f 
    bgt locret_809E494
    sub r0, #0x48 
    ldr r7, [r7,#0x18]
    mov r2, #0x64 
    strh r0, [r7,r2]
    mov r0, #0x17
    mov r1, #0x17
    bl sub_802F110
locret_809E494:
    pop {r7,pc}
// end of function sub_809E46E

    ldr r1, [pc, #0x809e49c-0x809e496-2] // =byte_200ACE0
    str r0, [r1,#0x20] // (dword_200AD00 - 0x200ace0)
    mov pc, lr
off_809E49C:    .word byte_200ACE0
.thumb
sub_809E4A0:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8002C7A
    pop {r5,pc}
// end of function sub_809E4A0

.thumb
sub_809E4AE:
    push {r5,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    bl sub_8002CCE
    pop {r5,pc}
// end of function sub_809E4AE

.thumb
sub_809E4BC:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x29 
    bl sub_802F148
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    mov r4, #0x37 
    mov r0, #0x17
    mov r1, #0x29 
    bl sub_802F164
    bne loc_809E4DA
    mov r4, #0
loc_809E4DA:
    mov r0, #0x80
    mov r1, #0x18
    add r2, r4, #0
    bl sub_80026E4
    ldrb r0, [r5,#0x14]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
// end of function sub_809E4BC

    bl sub_8002F90
    bl anim_80026C4
    pop {r4-r7,pc}
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldr r5, [r5,#0x18]
    mov r0, #0x80
    mov r1, #0x18
    mov r2, #0
    bl sub_80026E4
    ldrb r0, [r5,#0x14]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
    bl sub_8002F90
    bl anim_80026C4
    pop {r4-r7,pc}
    .byte 0, 0
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#1]
    cmp r0, #6
    ble locret_809E52E
    sub r0, #5
locret_809E52E:
    pop {pc}
dword_809E530:    .word 0x15000805, 0x10090110, 0x1200A00, 0x3D00003C, 0x183E0100
    .word 0x2183F00, 0x41081840, 0x30420428, 0xA185706, 0x44000043
    .word 0x450200, 0x1004600, 0x5D05005C, 0x5E0700, 0xB005F09
    .word 0xFF
loc_809E570:
    push {lr}
    ldr r7, [pc, #0x809e58c-0x809e572-2] // =0x809E580
    ldrb r0, [r5,#8]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .byte 0, 0
    .byte 0x91
    .byte 0xE5
    .byte 9
    .byte 8
    .byte 0xE3
    .byte 0xE5
    .byte 9
    .byte 8
    .byte 0xDB
    .byte 0xEA
    .byte 9
    .byte 8
dword_809E58C:    .word 0x809E580
    push {lr}
    ldr r0, [r5,#0x60]
    bl sub_809F506
    mov r0, #0
    str r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    strb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    strb r0, [r5,#0x17]
    strb r0, [r5,#7]
    strb r0, [r5,#0x16]
    str r0, [r5,#0x60]
    str r0, [r5,#0x64]
    str r0, [r5,#0x50]
    str r0, [r5,#0x54]
    str r0, [r5,#0x58]
    strb r0, [r5,#0x11]
    strb r0, [r5,#0x12]
    strb r0, [r5,#0x13]
    mov r0, #0xff
    strh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    strb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    mov r0, #4
    strb r0, [r5,#8]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #8
    strb r0, [r5,#0xd]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl loc_809E5E2
    pop {pc}
loc_809E5E2:
    push {lr}
    ldrb r0, [r5,#0x18]
    tst r0, r0
    beq loc_809E5F0
    bl sub_809F5FC
    b loc_809E658
loc_809E5F0:
    bl loc_809EBDC
    ldr r7, [pc, #0x809e6c0-0x809e5f4-4] // =off_809E6A4
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    .hword 0x2000
aNB:    .byte 0x2A, 0x6E, 0x8, 0x21
    .byte 0xA, 0x42, 0x0
    .byte 0xD0
    mov r0, #1
    bl sub_8002F5C
    ldrh r0, [r5,#0x3c]
    ldrh r1, [r5,#0x3e]
    cmp r0, r1
    beq loc_809E648
    add r2, r0, #0
    mov r0, #0x80
    ldr r1, [r5,#0x78]
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    tst r0, r1
    bne loc_809E632
    bl sub_8002F90
    b loc_809E644
loc_809E632:
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x809e6c4-0x809e634-4] // =0x100
    tst r0, r1
    beq loc_809E640
    bl sub_8002E3C
    b loc_809E644
loc_809E640:
    bl sub_8002E52
loc_809E644:
    mov r0, #0xff
    strb r0, [r5,#0x15]
loc_809E648:
    ldrb r0, [r5,#0x14]
    ldrb r1, [r5,#0x15]
    cmp r0, r1
    beq loc_809E658
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
loc_809E658:
    bl anim_80026C4
    ldrb r0, [r5,#0x16]
    bl sprite_setPallete
    ldr r0, [r5,#0x68]
    ldr r1, [r5,#0x6c]
    cmp r0, r1
    beq loc_809E66E
    bl sub_8002FA6
loc_809E66E:
    ldrb r0, [r5,#0xe]
    strb r0, [r5,#0xf]
    ldrb r0, [r5,#0x14]
    strb r0, [r5,#0x15]
    ldrh r0, [r5,#0x3c]
    strh r0, [r5,#0x3e]
    ldr r0, [r5,#0x68]
    str r0, [r5,#0x6c]
    bl sub_809F526
    ldr r0, [r5,#0x64]
    tst r0, r0
    bne loc_809E690
    add r0, r5, #0
    add r0, #0x24 
    bl sub_8035694
loc_809E690:
    bl sub_8002E14
    ldr r0, [r5,#0x60]
    mov r1, #0x40 
    tst r0, r1
    beq locret_809E6A0
    bl sub_809F922
locret_809E6A0:
    pop {pc}
    .balign 4, 0x00
off_809E6A4:    .word sub_809E6C8+1
off_809E6A8:    .word loc_809E6DC+1
    .word sub_809E8CC+1
    .word sub_809EA3C+1
    .word loc_809EA74+1
    .word sub_809EA82+1
    .word sub_809EAA0+1
off_809E6C0:    .word off_809E6A4
off_809E6C4:    .word 0x100
.thumb
sub_809E6C8:
    push {lr}
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_809E6D6
    bl sub_809F516
loc_809E6D6:
    bl sub_809EBF8
    pop {pc}
// end of function sub_809E6C8

loc_809E6DC:
    push {lr}
    ldr r7, [pc, #0x809e700-0x809e6de-2] // =0x809E6F0
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_809EBF8
    pop {pc}
    .byte 0, 0
    .byte 5
    .byte 0xE7
    .byte 9
    .byte 8
    .byte 0xD9
    .byte 0xE7
    .byte 9
    .byte 8
    .byte 0x4F 
    .byte 0xE8
    .byte 9
    .byte 8
    .byte 0x79 
    .byte 0xE8
    .byte 9
    .byte 8
dword_809E700:    .word 0x809E6F0
.thumb
sub_809E704:
    push {lr}
    ldr r7, [pc, #0x809e7c4-0x809e706-2] // =unk_809E77E
    ldrb r0, [r5,#0xe]
    lsl r0, r0, #2
    add r7, r7, r0
    ldr r0, [r5,#0x24]
    mov r3, #0
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x70]
    ldr r0, [r5,#0x28]
    mov r3, #2
    ldrsh r1, [r7,r3]
    lsl r1, r1, #0x10
    add r0, r0, r1
    str r0, [r5,#0x74]
    ldr r0, [pc, #0x809e7c8-0x809e726-2] // =0x80000
    ldrb r1, [r5,#4]
    push {r5}
    bl SWI_Div
    pop {r5}
    ldr r1, [pc, #0x809e7d4-0x809e732-2] // =0xFFC
    add r0, r0, r1
    lsr r0, r0, #0xc
    strh r0, [r5,#0x20]
    ldr r7, [pc, #0x809e7c0-0x809e73a-2] // =0x809E79C
    ldrb r0, [r5,#0xe]
    add r0, r0, r0
    add r7, r7, r0
    ldrb r4, [r5,#4]
    mov r3, #0
    ldrsb r1, [r7,r3]
    mul r1, r4
    lsl r1, r1, #0xc
    str r1, [r5,#0x40]
    mov r3, #1
    ldrsb r1, [r7,r3]
    mul r1, r4
    lsl r1, r1, #0xc
    str r1, [r5,#0x44]
    mov r0, #0
    str r0, [r5,#0x48]
    mov r0, #4
    strb r0, [r5,#0xa]
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x24]
    add r0, r0, r1
    str r0, [r5,#0x30]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x28]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r1, [r5,#0x48]
    ldr r0, [r5,#0x2c]
    add r0, r0, r1
    str r0, [r5,#0x38]
    bl sub_809F5B0
    pop {pc}
unk_809E77E:    .byte 0
    .byte 0
    .word 0x80000, 0x0, 0x0
    .word 0x8, 0xFFF80000, 0x0, 0x0
    .word 0xFFF8, 0x1, 0x100, 0xFF, 0x900FF00, 0xD000B00, 0x1000F00
    .word 0x5000300, 0x700
dword_809E7C0:    .word 0x809E79E
off_809E7C4:    .word unk_809E77E
dword_809E7C8:    .word 0x80000
    .byte 0xAE
    .byte 0xE7
    .byte 9
    .byte 8
    .byte 0xB6
    .byte 0xE7
    .hword 0x809
dword_809E7D4:    .word 0xFFF
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #0x10
    tst r0, r1
    bne loc_809E7EA
    bl sub_809F638
    tst r0, r0
    bne loc_809E848
loc_809E7EA:
    ldr r0, [r5,#0x30]
    str r0, [r5,#0x24]
    ldr r0, [r5,#0x34]
    str r0, [r5,#0x28]
    ldr r0, [r5,#0x38]
    str r0, [r5,#0x2c]
    ldrh r0, [r5,#0x20]
    sub r0, #1
    strh r0, [r5,#0x20]
    bne loc_809E81A
    ldr r0, [r5,#0x70]
    str r0, [r5,#0x24]
    ldr r0, [r5,#0x74]
    str r0, [r5,#0x28]
    ldrb r0, [r5,#5]
    sub r0, #1
    strb r0, [r5,#5]
    bne loc_809E814
    bl sub_809F516
    pop {pc}
loc_809E814:
    bl sub_809E704
    pop {pc}
loc_809E81A:
    ldr r1, [r5,#0x40]
    ldr r0, [r5,#0x30]
    add r0, r0, r1
    str r0, [r5,#0x30]
    ldr r1, [r5,#0x44]
    ldr r0, [r5,#0x34]
    add r0, r0, r1
    str r0, [r5,#0x34]
    ldr r0, [r5,#0x60]
    mov r1, #0x20 
    lsl r1, r1, #4
    tst r0, r1
    bne loc_809E842
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    str r0, [r5,#0x38]
loc_809E842:
    bl sub_809F5B0
    pop {pc}
loc_809E848:
    bl sub_809F5B0
    pop {pc}
    push {lr}
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    ldrb r2, [r5,#6]
    tst r0, r0
    beq loc_809E872
    sub r0, #1
    strb r0, [r5,#4]
    tst r1, r1
    bne loc_809E86A
    ldrh r1, [r5,#0x2e]
    add r1, r1, r2
    strh r1, [r5,#0x2e]
    b locret_809E870
loc_809E86A:
    ldrh r1, [r5,#0x2e]
    sub r1, r1, r2
    strh r1, [r5,#0x2e]
locret_809E870:
    pop {pc}
loc_809E872:
    bl sub_809F516
    pop {pc}
    push {lr}
    ldrb r0, [r5,#4]
    tst r0, r0
    beq loc_809E8BA
    sub r0, #1
    strb r0, [r5,#4]
    ldr r0, [pc, #0x809e8c0-0x809e884-4] // =dword_809E8C4
    ldrb r1, [r5,#6]
    lsl r1, r1, #1
    ldrb r2, [r0,r1]
    add r1, #1
    ldrb r1, [r0,r1]
    ldrb r0, [r5,#7]
    tst r1, r1
    bne loc_809E89E
    ldrh r1, [r5,r2]
    add r1, r1, r0
    strh r1, [r5,r2]
    b loc_809E8A4
loc_809E89E:
    ldrh r1, [r5,r2]
    sub r1, r1, r0
    strh r1, [r5,r2]
loc_809E8A4:
    ldrb r1, [r5,#5]
    tst r1, r1
    bne loc_809E8B2
    ldrh r1, [r5,#0x2e]
    add r1, #1
    strh r1, [r5,#0x2e]
    b locret_809E8B8
loc_809E8B2:
    ldrh r1, [r5,#0x2e]
    sub r1, #1
    strh r1, [r5,#0x2e]
locret_809E8B8:
    pop {pc}
loc_809E8BA:
    bl sub_809F516
    pop {pc}
off_809E8C0:    .word dword_809E8C4
dword_809E8C4:    .word 0x2A0026
    .word 0x12A0126
// end of function sub_809E704

.thumb
sub_809E8CC:
    push {lr}
    ldr r7, [pc, #0x809e8f8-0x809e8ce-2] // =off_809E8E0
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl sub_809EBF8
    pop {pc}
    .byte 0, 0
off_809E8E0:    .word sub_809E8FC+1
    .word sub_809E916+1
    .word sub_809E944+1
    .word sub_809E95E+1
    .word 0x809E9C1, 0x809E9DB
off_809E8F8:    .word off_809E8E0
// end of function sub_809E8CC

.thumb
sub_809E8FC:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #4
    strb r0, [r5,#0xa]
    pop {pc}
// end of function sub_809E8FC

.thumb
sub_809E916:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    cmp r0, r2
    bpl loc_809E940
    str r2, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_809F516
    pop {pc}
loc_809E940:
    str r0, [r5,#0x2c]
    pop {pc}
// end of function sub_809E916

.thumb
sub_809E944:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0xc
    strb r0, [r5,#0xa]
    pop {pc}
// end of function sub_809E944

.thumb
sub_809E95E:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    push {r2}
    mov r3, #6
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r2, [pc, #0x809e9b4-0x809e974-4] // =dword_809E9B8
    ldrb r0, [r2,r3]
    add r3, #1
    ldrb r1, [r2,r3]
    mov r3, #7
    ldrb r2, [r5,r3]
    tst r1, r1
    beq loc_809E98C
    ldrh r1, [r5,r0]
    sub r1, r1, r2
    strh r1, [r5,r0]
    b loc_809E992
loc_809E98C:
    ldrh r1, [r5,r0]
    add r1, r1, r2
    strh r1, [r5,r0]
loc_809E992:
    pop {r2}
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    cmp r0, r2
    bpl loc_809E9B0
    str r2, [r5,#0x2c]
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_809F516
    pop {pc}
loc_809E9B0:
    str r0, [r5,#0x2c]
    pop {pc}
off_809E9B4:    .word dword_809E9B8
dword_809E9B8:    .word 0x2A0026
    .word 0x12A0126
// end of function sub_809E95E

.thumb
sub_809E9C0:
    push {lr}
    ldrb r0, [r5,#4]
    lsl r0, r0, #0xc
    str r0, [r5,#0x48]
    mov r3, #5
    ldrsb r0, [r5,r3]
    lsl r0, r0, #0xc
    str r0, [r5,#0x44]
    mov r0, #1
    strb r0, [r5,#0x17]
    mov r0, #0x14
    strb r0, [r5,#0xa]
    pop {pc}
// end of function sub_809E9C0

.thumb
sub_809E9DA:
    push {lr}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    push {r2}
    mov r3, #6
    ldrb r3, [r5,r3]
    lsl r3, r3, #1
    ldr r2, [pc, #0x809ea30-0x809e9f0-4] // =unk_809EA34
    ldrb r0, [r2,r3]
    add r3, #1
    ldrb r1, [r2,r3]
    mov r3, #7
    ldrb r2, [r5,r3]
    tst r1, r1
    beq loc_809EA08
    ldrh r1, [r5,r0]
    sub r1, r1, r2
    strh r1, [r5,r0]
    b loc_809EA0E
loc_809EA08:
    ldrh r1, [r5,r0]
    add r1, r1, r2
    strh r1, [r5,r0]
loc_809EA0E:
    pop {r2}
    ldr r0, [r5,#0x48]
    ldr r1, [r5,#0x44]
    add r0, r0, r1
    str r0, [r5,#0x48]
    cmp r0, #0
    bgt loc_809EA26
    mov r0, #0
    strb r0, [r5,#0x17]
    bl sub_809F516
    pop {pc}
loc_809EA26:
    ldr r1, [r5,#0x2c]
    add r0, r0, r1
    str r0, [r5,#0x2c]
    pop {pc}
    .byte 0, 0
off_809EA30:    .word unk_809EA34
unk_809EA34:    .byte 0x26 
    .byte 0
    .byte 0x2A 
    .byte 0
    .byte 0x26 
    .byte 1
    .byte 0x2A 
    .byte 1
// end of function sub_809E9DA

.thumb
sub_809EA3C:
    push {lr}
    ldrb r0, [r5,#0xa]
    tst r0, r0
    bne loc_809EA4A
    mov r0, #4
    strb r0, [r5,#0xa]
    b loc_809EA6E
loc_809EA4A:
    mov r7, #0x80
    ldr r7, [r5,r7]
    mov r1, #0xc0
    tst r7, r1
    beq loc_809EA62
    bl sub_8002DEA
    tst r0, r7
    beq loc_809EA6E
    bl sub_809F516
    b loc_809EA6E
loc_809EA62:
    bl sub_8002DEA
    cmp r0, r7
    bne loc_809EA6E
    bl sub_809F516
loc_809EA6E:
    bl sub_809EBF8
    pop {pc}
// end of function sub_809EA3C

loc_809EA74:
    push {lr}
    ldr r7, [r5,#0x7c]
    mov lr, pc
    bx r7
    bl sub_809EBF8
    pop {pc}
.thumb
sub_809EA82:
    push {r4,r7,lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    mov r7, #0x80
    ldr r0, [r5,r7]
    mov r7, #0x84
    ldr r1, [r5,r7]
    ldrb r0, [r4,r0]
    cmp r0, r1
    bne loc_809EA9A
    bl sub_809F516
loc_809EA9A:
    bl sub_809EBF8
    pop {r4,r7,pc}
// end of function sub_809EA82

.thumb
sub_809EAA0:
    push {r4,r7,lr}
    mov r7, #0x80
    ldr r0, [r5,r7]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_809EAD4
    bl sub_809F516
    mov r0, #1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8004602
    bl sub_809F51E
loc_809EAD4:
    bl sub_809EBF8
    pop {r4,r7,pc}
// end of function sub_809EAA0

    push {lr}
    ldr r7, [pc, #0x809eb00-0x809eadc-4] // =off_809EAFC
    ldrb r0, [r5,#9]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    bl anim_80026C4
    bl sub_809F526
    ldr r0, [r5,#0x60]
    mov r1, #0x40 
    tst r0, r1
    beq locret_809EAFA
    bl sub_809F922
locret_809EAFA:
    pop {pc}
off_809EAFC:    .word sub_809EB04+1
off_809EB00:    .word off_809EAFC
.thumb
sub_809EB04:
    push {lr}
    ldr r7, [pc, #0x809eb1c-0x809eb06-2] // =0x809EB14
    ldrb r0, [r5,#0xa]
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    pop {pc}
    .balign 4, 0x00
    .word sub_809EB20+1
    .byte 0xBD
    .byte 0xEB
    .byte 9
    .byte 8
dword_809EB1C:    .word 0x809EB14
// end of function sub_809EB04

.thumb
sub_809EB20:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #2
    tst r0, r1
    bne loc_809EB54
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldr r7, [r7,#0x18]
    ldr r0, [r7,#0x20]
    ldr r2, [r5,#0x28]
    sub r0, r0, r2
    ldr r1, [r7,#0x1c]
    ldr r2, [r5,#0x24]
    sub r1, r1, r2
    bl calcAngle_800117C
    add r0, #0x20 
    mov r1, #0xc0
    and r0, r1
    lsr r0, r0, #6
    lsl r0, r0, #1
    add r0, #1
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
loc_809EB54:
    ldr r2, [r5,#0x60]
    ldr r1, [pc, #0x809ebb4-0x809eb56-2] // =0x400
    tst r2, r1
    beq loc_809EBA4
    ldr r1, [pc, #0x809ebb8-0x809eb5c-4] // =0x800
    tst r2, r1
    beq loc_809EB76
    mov r7, r10
    ldr r7, [r7,#0x2c]
    mov r1, #0x90
    ldr r0, [r5,r1]
    str r0, [r7,#0x4c]
    bl sub_809FC96
    str r0, [r7,#0x54]
    str r1, [r7,#0x58]
    strb r2, [r5,#0x1c]
loc_809EB76:
    cmp r3, #8
    bne loc_809EB98
    cmp r0, #0x70 
    bne loc_809EB98
    push {r0,r1,r3-r7}
    bl getPETNaviSelect
    add r2, r0, #0
    pop {r0,r1,r3-r7}
    cmp r2, #0
    beq loc_809EB98
    mov r2, #0x94
    ldr r0, [r5,r2]
    mov r1, #0x78 
    bl chatbox_runScript
    b loc_809EBAA
loc_809EB98:
    mov r2, #0x94
    ldr r0, [r5,r2]
    ldrb r1, [r5,#0x1c]
    bl chatbox_runScript
    b loc_809EBAA
loc_809EBA4:
    ldrb r0, [r5,#0x1c]
    bl chatbox_runScript_202da04
loc_809EBAA:
    mov r0, #4
    strb r0, [r5,#0xa]
    bl sub_809EBBC
    pop {pc}
off_809EBB4:    .word 0x400
dword_809EBB8:    .word 0x800
// end of function sub_809EB20

.thumb
sub_809EBBC:
    push {lr}
    mov r0, #0x17
    mov r1, #0x15
    bl sub_802F164
    bne locret_809EBDA
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#0x10]
    tst r0, r0
    bne locret_809EBDA
    mov r0, #0
    strb r0, [r5,#7]
    bl sub_809F612
locret_809EBDA:
    pop {pc}
// end of function sub_809EBBC

loc_809EBDC:
    push {lr}
loc_809EBDE:
    ldrb r0, [r5,#0x19]
    tst r0, r0
    bne locret_809EBF6
    ldr r6, [r5,#0x4c]
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r7, [pc, #0x809ec2c-0x809ebea-2] // =off_809EC30
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    str r6, [r5,#0x4c]
    b loc_809EBDE
locret_809EBF6:
    pop {pc}
.thumb
sub_809EBF8:
    push {lr}
loc_809EBFA:
    ldrb r0, [r5,#0x1f]
    tst r0, r0
    bne loc_809EC16
    ldr r6, [r5,#0x5c]
    tst r6, r6
    beq locret_809EC1A
    ldrb r0, [r6]
    lsl r0, r0, #2
    ldr r7, [pc, #0x809ec2c-0x809ec0a-2] // =off_809EC30
    ldr r7, [r7,r0]
    mov lr, pc
    bx r7
    str r6, [r5,#0x5c]
    b loc_809EBFA
loc_809EC16:
    bl sub_809EC1C
locret_809EC1A:
    pop {pc}
// end of function sub_809EBF8

.thumb
sub_809EC1C:
    push {lr}
    ldrh r0, [r5,#0x22]
    sub r0, #1
    strh r0, [r5,#0x22]
    bne locret_809EC2A
    mov r0, #0
    strb r0, [r5,#0x1f]
locret_809EC2A:
    pop {pc}
off_809EC2C:    .word off_809EC30
off_809EC30:    .word sub_809ED80+1
    .byte 0, 0, 0, 0
    .word sub_809ED88+1
    .word sub_809ED94+1
    .word sub_809EDB2+1
    .word sub_809EDD0+1
    .word sub_809EDEE+1
    .word sub_809EE00+1
    .word 0x809EE13, 0x809EE1B, 0x809EE23, 0x809EE2B, 0x809EE33
    .word 0x809EE49, 0x809EE57, 0x809EE63, 0x809EE6D, 0x809EE83
    .word 0x809EE9D, 0x809EEAB, 0x809EEB7, 0x809EEDB, 0x809EEF9
    .word 0x809EF01, 0x809EF41, 0x809EF49, 0x809EF51, 0x809EF59
    .word 0x809EF61, 0x809EF6F, 0x809EF83, 0x809EF9B, 0x809EFA7
    .word 0x809EFB5, 0x809EFC7, 0x809EFD9, 0x809EFFD, 0x809F01D
    .word 0x809F031, 0x809F03D, 0x809F049, 0x809F059, 0x809F0ED
    .word 0x809F105, 0x0
    .word sub_809F114+1
    .word 0x809F12D, 0x809F139, 0x809F151, 0x809F15B, 0x809F16F
    .word 0x809F17D, 0x809F18F, 0x809F199, 0x809F1C7, 0x809F1D9
    .word 0x809F219, 0x809F23F, 0x809F26B, 0x809F271, 0x809F293
    .word 0x809F2A3, 0x809F2C1, 0x809F2DF, 0x809F2FD, 0x809F30D
    .word 0x0, 0x0
    .word sub_809F31C+1
    .word sub_809F338+1
    .word sub_809F354+1
    .word sub_809F36E+1
    .word sub_809F37E+1
    .word sub_809F388+1
    .word sub_809F392+1
    .word sub_809F3A6+1
    .word sub_809F3C0+1
    .word sub_809F3E8+1
    .word sub_809F3F6+1
    .word sub_809F418+1
    .word sub_809F438+1
    .word sub_809F45A+1
    .word sub_809F4B8+1
    .word sub_809F4EE+1
// end of function sub_809EC1C

.thumb
sub_809ED80:
    push {lr}
    bl sub_809F51E
    pop {pc}
// end of function sub_809ED80

.thumb
sub_809ED88:
    push {lr}
    add r0, r6, #1
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
// end of function sub_809ED88

.thumb
sub_809ED94:
    push {lr}
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
// end of function sub_809ED94

    bl sub_8004602
    bl sub_809F51E
    pop {pc}
.thumb
sub_809EDB2:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    beq loc_809EDCC
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809EDCC:
    add r6, #7
    pop {pc}
// end of function sub_809EDB2

.thumb
sub_809EDD0:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    bne loc_809EDEA
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809EDEA:
    add r6, #7
    pop {pc}
// end of function sub_809EDD0

.thumb
sub_809EDEE:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F114
    add r6, #3
    pop {pc}
// end of function sub_809EDEE

.thumb
sub_809EE00:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    add r6, #3
    pop {pc}
// end of function sub_809EE00

    mov r0, #3
    strb r0, [r5]
    add r6, #1
    mov pc, lr
    mov r0, #1
    strb r0, [r5]
    add r6, #1
    mov pc, lr
    ldrb r0, [r6,#1]
    strb r0, [r5,#0xc]
    add r6, #2
    mov pc, lr
    ldrb r0, [r6,#1]
    strb r0, [r5,#0xd]
    add r6, #2
    mov pc, lr
    mov r1, #1
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x11]
    mov r1, #2
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x12]
    mov r1, #3
    ldrsb r0, [r6,r1]
    strb r0, [r5,#0x13]
    add r6, #4
    mov pc, lr
    mov r0, #1
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    mov r0, #1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x16]
    add r6, #2
    pop {pc}
    push {lr}
    mov r0, #0
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x20]
    bl sub_809F51E
    add r6, #2
    pop {pc}
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_809F51E
    add r6, #3
    pop {pc}
    mov r0, #2
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    mov r0, #2
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
    add r0, r6, #3
    bl sub_809F64C
    lsl r0, r0, #0x10
    str r0, [r5,#0x28]
    add r0, r6, #5
    bl sub_809F64C
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    add r6, #7
    pop {pc}
    push {lr}
    ldrb r2, [r6,#1]
    strb r2, [r5,#0xe]
    ldrb r2, [r6,#2]
    strb r2, [r5,#4]
    ldrb r2, [r6,#3]
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_809F51E
    add r6, #4
    pop {pc}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x14]
    add r6, #2
    mov pc, lr
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x3c]
    mov r1, #0
    strb r1, [r5,#0x16]
    str r1, [r5,#0x68]
    ldr r1, [pc, #0x809ef3c-0x809ef0a-2] // =dword_809E530
    mov r3, #0
loc_809EF0E:
    ldrb r2, [r1,r3]
    cmp r2, r0
    beq loc_809EF1C
    cmp r2, #0xff
    beq loc_809EF2A
    add r3, #3
    b loc_809EF0E
loc_809EF1C:
    add r3, #1
    ldrb r0, [r1,r3]
    lsl r0, r0, #0x18
    str r0, [r5,#0x68]
    add r3, #1
    ldrb r0, [r1,r3]
    strb r0, [r5,#0x16]
loc_809EF2A:
    mov r0, #0x18
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #2
    mov pc, lr
    .balign 4, 0x00
off_809EF3C:    .word dword_809E530
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    add r6, #2
    mov pc, lr
    mov r0, #0
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
    mov r0, #2
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
    mov r0, #3
    str r0, [r5,#0x64]
    add r6, #1
    mov pc, lr
    push {lr}
    add r0, r6, #1
    bl sub_809F656
    str r0, [r5,#0x68]
    add r6, #5
    pop {pc}
    push {lr}
    ldrb r0, [r6,#1]
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    ldr r0, [r5,#0x68]
    orr r0, r1
    str r0, [r5,#0x68]
    add r6, #2
    pop {pc}
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r0, [r6,#1]
    mov r1, #0x80
    lsl r1, r1, #0x18
    lsr r1, r0
    mvn r1, r1
    ldr r0, [r5,#0x68]
    and r0, r1
    str r0, [r5,#0x68]
    add r6, #2
    pop {pc}
    mov r0, #4
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    mov r0, #4
    mvn r0, r0
    ldr r1, [r5,#0x60]
    and r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    bl sub_8002F90
    add r6, #1
    pop {pc}
    push {lr}
    ldr r0, [pc, #0x809eff4-0x809efc8-4] // =0x180
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    bl sub_8002E3C
    add r6, #1
    pop {pc}
    push {lr}
    mov r0, #0x80
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x809eff8-0x809efe4-4] // =0x100
    bic r0, r1
    str r0, [r5,#0x60]
    bl sub_8002E52
    add r6, #1
    pop {pc}
    .balign 4, 0x00
off_809EFF4:    .word 0x180
off_809EFF8:    .word 0x100
    push {lr}
    bl getPETNaviSelect
    ldr r1, [pc, #0x809f018-0x809f002-2] // =unk_809D328
    ldrb r0, [r1,r0]
    strh r0, [r5,#0x3c]
    mov r0, #0x18
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #1
    pop {pc}
dword_809F018:    .word 0x809D328
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x3c]
    ldrb r0, [r6,#2]
    str r0, [r5,#0x78]
    ldr r0, [r5,#0x60]
    mov r1, #0x80
    bic r0, r1
    str r0, [r5,#0x60]
    add r6, #3
    mov pc, lr
    mov r0, #8
    ldr r1, [r5,#0x60]
    eor r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    mov r0, #0x10
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    mov pc, lr
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    bl sound_play
    add r6, #3
    pop {pc}
    push {lr}
    mov r0, #0xc0
    lsl r0, r0, #4
    mov r1, #2
    orr r0, r1
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r0, r6, #1
    bl sub_809F64C
    mov r1, #0x90
    str r0, [r5,r1]
    bl sub_809FC1C
    tst r0, r0
    beq loc_809F0BE
    ldr r4, [pc, #0x809f0e0-0x809f07a-2] // =dword_809F0E4
    ldrb r4, [r4,r0]
    strb r4, [r5,#0x16]
    mov r4, #0x40 
    mul r4, r1
    ldr r1, [r5,#0x60]
    orr r1, r4
    str r1, [r5,#0x60]
    mov r3, #0xff
    strb r3, [r5,#0x1c]
    ldr r0, [pc, #0x809f0dc-0x809f08e-2] // =dword_873D108
    mov r1, #0x94
    str r0, [r5,r1]
    mov r1, #0
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x24]
    mov r1, #2
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x28]
    mov r1, #4
    ldrsh r0, [r2,r1]
    lsl r0, r0, #0x10
    str r0, [r5,#0x2c]
    mov r0, #4
    strb r0, [r5,#0xc]
    mov r0, #2
    strb r0, [r5,#0x11]
    mov r0, #2
    neg r0, r0
    strb r0, [r5,#0x12]
    add r6, #3
    pop {pc}
loc_809F0BE:
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
    bl sub_8004602
    bl sub_809F51E
    pop {pc}
    .balign 4, 0x00
off_809F0DC:    .word dword_873D108
off_809F0E0:    .word dword_809F0E4
dword_809F0E4:    .word 0x20000FF, 0xFF030102, 0x7870B500, 0x51E82780, 0x7268200C
    .word 0x81682000, 0xFA0FF000, 0xBD003602, 0x1C70B500, 0xFAA0F000
    .word 0xFEE0F763, 0xBD003603
.thumb
sub_809F114:
    push {lr}
    bl sub_8002F2C
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    add r2, r0, r1
    tst r2, r2
    beq loc_809F128
    bl sub_8002EF6
loc_809F128:
    add r6, #3
    pop {pc}
// end of function sub_809F114

    ldrb r0, [r6,#1]
    strb r0, [r5,#0x14]
    mvn r0, r0
    strb r0, [r5,#0x15]
    add r6, #2
    mov pc, lr
    push {lr}
    bl sprite_makeUnscalable
    bl sub_8002D14
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r2, [r6,#3]
    bl sub_8002C24
    add r6, #4
    pop {pc}
    push {lr}
    bl sprite_makeUnscalable
    add r6, #1
    pop {pc}
    push {lr}
    bl sub_8002CCE
    ldrb r0, [r6,#1]
    tst r0, r0
    beq loc_809F16A
    bl sub_8002C7A
loc_809F16A:
    add r6, #2
    pop {pc}
    push {lr}
    add r0, r6, #1
    bl sub_809F656
    str r0, [r5,#0x5c]
    add r6, #5
    pop {pc}
    push {lr}
    mov r0, #0
    strb r0, [r5,#0xb]
    ldrb r0, [r6,#1]
    strh r0, [r5,#0x22]
    mov r0, #1
    strb r0, [r5,#0x1f]
    add r6, #2
    pop {pc}
    mov r0, #0
    str r0, [r5,#0x5c]
    strh r0, [r5,#0x22]
    mov r6, #0
    mov pc, lr
    push {lr}
    mov r4, #0x8c
    add r0, r6, #5
    str r0, [r5,r4]
    add r0, r6, #1
    bl sub_809F656
    str r0, [r5,#0x7c]
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r2, #0x8c
    mov r1, #0x80
    mov r0, #0
loc_809F1B6:
    str r0, [r5,r1]
    add r1, #4
    cmp r1, r2
    ble loc_809F1B6
    bl sub_809F51E
    add r6, #5
    pop {pc}
    push {lr}
    mov r4, #0x8c
    add r0, r6, #5
    str r0, [r5,r4]
    add r0, r6, #1
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
    push {lr}
    mov r4, #0x8c
    mov r1, #9
    add r0, r6, r1
    str r0, [r5,r4]
    ldrb r2, [r6,#1]
    strb r2, [r5,#0xe]
    ldrb r2, [r6,#2]
    strb r2, [r5,#4]
    ldrb r2, [r6,#3]
    strb r2, [r5,#5]
    ldrb r2, [r6,#4]
    strh r2, [r5,#0x20]
    add r0, r6, #5
    bl sub_809F656
    str r0, [r5,#0x7c]
    mov r0, #0x10
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    mov r2, #0x8c
    mov r1, #0x80
    mov r0, #0
loc_809F208:
    str r0, [r5,r1]
    add r1, #4
    cmp r1, r2
    ble loc_809F208
    bl sub_809F51E
    add r6, #9
    pop {pc}
    push {lr}
    mov r4, #0x8c
    mov r1, #8
    add r0, r6, r1
    str r0, [r5,r4]
    ldrb r2, [r6,#1]
    mov r4, #0x81
    strb r2, [r5,r4]
    ldrb r2, [r6,#2]
    mov r4, #0x82
    strb r2, [r5,r4]
    ldrb r2, [r6,#3]
    mov r4, #0x83
    strb r2, [r5,r4]
    add r0, r6, #4
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
    push {lr}
    ldrb r0, [r6,#1]
    mov r4, #0x81
    ldrb r2, [r5,r4]
    add r2, r2, r0
    mov r0, #7
    and r2, r0
    strb r2, [r5,#0xe]
    mov r4, #0x82
    ldrb r2, [r5,r4]
    strb r2, [r5,#4]
    mov r4, #0x83
    ldrb r2, [r5,r4]
    strb r2, [r5,#5]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    bl sub_809F51E
    add r6, #2
    pop {pc}
    mov r4, #0x8c
    ldr r6, [r5,r4]
    mov pc, lr
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#6]
    ldrb r1, [r6,#1]
    cmp r0, r1
    blt loc_809F28E
    ldrb r2, [r6,#2]
    cmp r0, r2
    bgt loc_809F28E
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    b locret_809F290
loc_809F28E:
    add r6, #7
locret_809F290:
    pop {pc}
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    strb r1, [r4,r0]
    add r6, #3
    pop {pc}
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r0, [r4,r0]
    cmp r0, r1
    bne loc_809F2BC
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809F2BC:
    add r6, #7
    pop {pc}
    push {lr}
    mov r4, r10
    ldr r4, [r4,#0x10]
    ldrb r0, [r6,#1]
    ldrb r1, [r6,#2]
    ldrb r0, [r4,r0]
    cmp r0, r1
    beq loc_809F2DA
    add r0, r6, #3
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809F2DA:
    add r6, #7
    pop {pc}
    push {r7,lr}
    mov r0, #0x14
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    ldrb r0, [r6,#1]
    mov r7, #0x80
    str r0, [r5,r7]
    ldrb r0, [r6,#2]
    mov r7, #0x84
    str r0, [r5,r7]
    bl sub_809F51E
    add r6, #3
    pop {r7,pc}
    push {lr}
    mov r0, #0x20 
    lsl r0, r0, #4
    ldr r1, [r5,#0x60]
    bic r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    pop {pc}
    push {lr}
    mov r0, #0x20 
    lsl r0, r0, #4
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r6, #1
    pop {pc}
.thumb
sub_809F31C:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    ldr r0, [pc, #0x809f6ac-0x809f322-2] // =0x400
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    add r0, r6, #2
    bl sub_809F656
    mov r1, #0x94
    str r0, [r5,r1]
    add r6, #6
    pop {pc}
// end of function sub_809F31C

.thumb
sub_809F338:
    push {r7,lr}
    mov r0, #0x18
    strb r0, [r5,#9]
    mov r0, #0
    strh r0, [r5,#0xa]
    add r0, r6, #1
    bl sub_809F64C
    mov r7, #0x80
    str r0, [r5,r7]
    bl sub_809F51E
    add r6, #3
    pop {r7,pc}
// end of function sub_809F338

.thumb
sub_809F354:
    push {lr}
    mov r7, r10
    ldr r4, [r7,#0x1c]
    ldr r7, [pc, #0x809f4b4-0x809f35a-2] // =aPfffff
    bl sub_8002C68
    ldrb r0, [r6,#1]
    tst r0, r0
    bne loc_809F36A
    bl sub_8002C52
loc_809F36A:
    add r6, #2
    pop {pc}
// end of function sub_809F354

.thumb
sub_809F36E:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
    bl sub_80005D4
    add r6, #3
    pop {pc}
// end of function sub_809F36E

.thumb
sub_809F37E:
    push {lr}
    bl sub_8003006
    add r6, #1
    pop {pc}
// end of function sub_809F37E

.thumb
sub_809F388:
    push {lr}
    bl sub_8002E52
    add r6, #1
    pop {pc}
// end of function sub_809F388

.thumb
sub_809F392:
    push {lr}
    add r0, r6, #2
    bl sub_809F64C
    add r1, r0, #0
    ldrb r0, [r6,#1]
    bl sub_80302A8
    add r6, #4
    pop {pc}
// end of function sub_809F392

.thumb
sub_809F3A6:
    push {lr}
    ldrb r0, [r6,#1]
    ldrb r1, [r5,#0x14]
    cmp r1, r0
    bne loc_809F3B4
    add r6, #6
    pop {pc}
loc_809F3B4:
    add r6, #2
    add r0, r6, #0
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
// end of function sub_809F3A6

.thumb
sub_809F3C0:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#0x1c]
    ldr r0, [pc, #0x809f6ac-0x809f3c6-2] // =0x400
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    ldr r3, [pc, #0x809f3d8-0x809f3ce-2] // =unk_202FA04
    mov r1, #0x94
    str r3, [r5,r1]
    add r6, #2
    pop {pc}
off_809F3D8:    .word unk_202FA04
    .word off_809F3E0
off_809F3E0:    .word off_8044470
    .word off_80444C4
// end of function sub_809F3C0

.thumb
sub_809F3E8:
    push {lr}
    add r0, r6, #5
    bl sub_809F656
    add r6, r0, #0
    b locret_809F3F4
locret_809F3F4:
    pop {pc}
// end of function sub_809F3E8

.thumb
sub_809F3F6:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    ldrb r0, [r6,#3]
    strb r0, [r5,#6]
    ldrb r0, [r6,#4]
    strb r0, [r5,#7]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #8
    strh r0, [r5,#0xa]
    bl sub_809F51E
    add r6, #5
    pop {pc}
// end of function sub_809F3F6

.thumb
sub_809F418:
    push {lr}
    ldrb r2, [r6,#1]
    strb r2, [r5,#4]
    ldrb r2, [r6,#2]
    strb r2, [r5,#5]
    ldrb r2, [r6,#3]
    strb r2, [r5,#6]
    mov r0, #4
    strb r0, [r5,#9]
    mov r0, #8
    strh r0, [r5,#0xa]
    bl sub_809F51E
    add r6, #4
    pop {pc}
    .balign 4, 0x00
// end of function sub_809F418

.thumb
sub_809F438:
    push {lr}
    ldrb r0, [r6,#1]
    strb r0, [r5,#4]
    ldrb r0, [r6,#2]
    strb r0, [r5,#5]
    ldrb r0, [r6,#3]
    strb r0, [r5,#6]
    ldrb r0, [r6,#4]
    strb r0, [r5,#7]
    mov r0, #8
    strb r0, [r5,#9]
    mov r0, #0x10
    strh r0, [r5,#0xa]
    bl sub_809F51E
    add r6, #5
    pop {pc}
// end of function sub_809F438

.thumb
sub_809F45A:
    push {lr}
    add r0, r6, #1
    bl sub_809F64C
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F168
    bne loc_809F498
    add r0, r6, #1
    bl sub_809F64C
    bl sub_8143B88
    tst r1, r1
    beq loc_809F498
    strb r2, [r5,#0x1c]
    ldr r3, [pc, #0x809f4b4-0x809f47a-2] // =aPfffff
    mov r2, #0x94
    str r3, [r5,r2]
    add r0, r1, #0
    bl sub_8143DBC
    str r0, [r5,#0x24]
    str r1, [r5,#0x28]
    str r2, [r5,#0x2c]
    add r6, #3
    ldr r0, [pc, #0x809f6b0-0x809f48e-2] // =0x1400
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    pop {pc}
loc_809F498:
    mov r0, #1
    strb r0, [r5]
    mov r0, #0x80
    mov r1, #0x1c
    mov r2, #0xa0
    bl sub_80026E4
    bl sprite_loadAnimationData_80026A4
// end of function sub_809F45A

    bl sub_8004602
    bl sub_809F51E
    pop {pc}
off_809F4B4:    .word aPfffff
.thumb
sub_809F4B8:
    push {lr}
    bl sub_8002DEA
    mov r0, #7
    and r0, r2
    add r0, #0x21 
    strb r0, [r5,#0x14]
    mvn r0, r0
    strb r0, [r5,#0x15]
    mov r0, #0x11
    ldr r1, [r5,#0x60]
    orr r1, r0
    str r1, [r5,#0x60]
    push {r5}
    mov r0, #0
    ldr r1, [r5,#0x24]
    ldr r2, [r5,#0x28]
    ldr r3, [r5,#0x2c]
    mov r4, #1
    bl sub_80047E0
    pop {r5}
    mov r0, #0x76 
    bl sound_play
    add r6, #1
    pop {pc}
// end of function sub_809F4B8

.thumb
sub_809F4EE:
    push {lr}
    bl sub_80062C8
    cmp r1, #0
    beq loc_809F502
    add r0, r6, #1
    bl sub_809F656
    add r6, r0, #0
    pop {pc}
loc_809F502:
    add r6, #5
    pop {pc}
// end of function sub_809F4EE

.thumb
sub_809F506:
    push {lr}
    str r0, [r5,#0x4c]
    mov r0, #0
    strb r0, [r5,#0x19]
    strb r0, [r5,#0x18]
    strb r0, [r5,#0x1f]
    str r0, [r5,#0x5c]
    pop {pc}
// end of function sub_809F506

.thumb
sub_809F516:
    push {lr}
    mov r0, #0
    strb r0, [r5,#0x19]
    pop {pc}
// end of function sub_809F516

.thumb
sub_809F51E:
    push {lr}
    mov r0, #1
    strb r0, [r5,#0x19]
    pop {pc}
// end of function sub_809F51E

.thumb
sub_809F526:
    push {r7,lr}
    ldr r7, [r5,#0x60]
    ldrb r0, [r5]
    mov r1, #1
    tst r0, r1
    beq loc_809F598
    push {r5}
    ldr r4, [pc, #0x809f5a0-0x809f534-4] // =0x20000
    mov r1, #4
    tst r7, r1
    beq loc_809F53E
    mov r4, #0
loc_809F53E:
    ldr r0, [r5,#0x24]
    mov r6, #0x11
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r0, r0, r6
    ldr r1, [r5,#0x28]
    mov r6, #0x12
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r1, r1, r6
    ldrb r2, [r5,#0x17]
    cmp r2, #0
    beq loc_809F56A
    push {r0,r1,r3-r5}
    mov r0, #0x24 
    add r0, r0, r5
    bl sub_8031612
    add r2, r0, #0
    lsl r2, r2, #0x10
    pop {r0,r1,r3-r5}
    b loc_809F56C
loc_809F56A:
    ldr r2, [r5,#0x2c]
loc_809F56C:
    mov r6, #0x13
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r2, r2, r6
    mov r6, #0x50 
    add r6, r6, r5
    ldrh r3, [r5,#0xc]
    push {r0-r5}
    ldr r5, [pc, #0x809f5a4-0x809f57c-4] // =0x50001
    bl sub_80037AC
    mov r1, #0x14
    tst r7, r1
    pop {r0-r5}
    bne loc_809F596
    mov r6, #0x58 
    add r6, r6, r5
    ldr r4, [pc, #0x809f5a8-0x809f58e-2] // =0x400000
    ldr r5, [pc, #0x809f5ac-0x809f590-4] // =0xA00000
    bl sub_80037AC
loc_809F596:
    pop {r5}
loc_809F598:
    mov r0, #0
    str r0, [r5,#0x50]
    str r0, [r5,#0x58]
    pop {r7,pc}
dword_809F5A0:    .word 0x20000
dword_809F5A4:    .word 0x50001
dword_809F5A8:    .word 0x400000
dword_809F5AC:    .word 0xA00000
// end of function sub_809F526

.thumb
sub_809F5B0:
    push {lr}
    ldr r0, [r5,#0x60]
    mov r1, #4
    tst r0, r1
    bne loc_809F5EA
    push {r5}
    ldr r0, [r5,#0x30]
    mov r6, #0x11
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r0, r0, r6
    ldr r1, [r5,#0x34]
    mov r6, #0x12
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r1, r1, r6
    ldr r2, [r5,#0x38]
    mov r6, #0x13
    ldrsb r6, [r5,r6]
    lsl r6, r6, #0x10
    add r2, r2, r6
    mov r6, #0x54 
    add r6, r6, r5
    ldr r3, [pc, #0x809f5f0-0x809f5de-2] // =0x804
    ldr r4, [pc, #0x809f5f4-0x809f5e0-4] // =0x80000
    ldr r5, [pc, #0x809f5f8-0x809f5e2-2] // =0x50000
    bl sub_80037AC
    pop {r5}
loc_809F5EA:
    mov r0, #0
    str r0, [r5,#0x54]
    pop {pc}
dword_809F5F0:    .word 0x804
dword_809F5F4:    .word 0x80000
dword_809F5F8:    .word 0x50000
// end of function sub_809F5B0

.thumb
sub_809F5FC:
    push {lr}
    ldrb r0, [r5,#9]
    strb r0, [r5,#0x1d]
    ldrb r0, [r5,#0xa]
    strb r0, [r5,#0x1e]
    mov r0, #8
    strb r0, [r5,#8]
    mov r0, #0
    strb r0, [r5,#9]
    strh r0, [r5,#0xa]
    pop {pc}
// end of function sub_809F5FC

.thumb
sub_809F612:
    push {lr}
    mov r0, #4
    strb r0, [r5,#8]
    ldrb r0, [r5,#0x1d]
    strb r0, [r5,#9]
    ldrb r0, [r5,#0x1e]
    strb r0, [r5,#0xa]
    ldr r0, [r5,#0x60]
    ldr r1, [pc, #0x809f6b4-0x809f622-2] // =0x1000
    tst r0, r1
    bne loc_809F632
    ldrb r0, [r5,#0x14]
    bl sprite_setAnimation
    bl sprite_loadAnimationData_80026A4
loc_809F632:
    mov r0, #0
    strb r0, [r5,#0x18]
    pop {pc}
// end of function sub_809F612

.thumb
sub_809F638:
    push {lr}
    mov r0, #0
    ldr r2, [pc, #0x809f648-0x809f63c-4] // =0x50000
    ldr r1, [r5,#0x54]
    tst r1, r2
    beq locret_809F646
    mov r0, #1
locret_809F646:
    pop {pc}
dword_809F648:    .word 0x50000
// end of function sub_809F638

.thumb
sub_809F64C:
    ldrb r1, [r0]
    ldrb r0, [r0,#1]
    lsl r0, r0, #8
    orr r0, r1
    mov pc, lr
// end of function sub_809F64C

.thumb
sub_809F656:
    ldrb r1, [r0]
    ldrb r2, [r0,#1]
    lsl r2, r2, #8
    ldrb r3, [r0,#2]
    lsl r3, r3, #0x10
    ldrb r0, [r0,#3]
    lsl r0, r0, #0x18
    orr r0, r1
    orr r0, r2
    orr r0, r3
    mov pc, lr
// end of function sub_809F656

    push {r7}
    mov r3, #0x10
    ldr r7, [pc, #0x809f688-0x809f670-4] // =byte_20057B0
loc_809F672:
    ldrb r1, [r7,#0x10]
    cmp r1, r0
    beq loc_809F680
    add r7, #0xd8
    sub r3, #1
    bne loc_809F672
    mov r7, #0
loc_809F680:
    add r0, r7, #0
    pop {r7}
    mov pc, lr
    .balign 4, 0x00
off_809F688:    .word byte_20057B0
.thumb
sub_809F68C:
    push {lr}
    ldr r3, [pc, #0x809f6a4-0x809f68e-2] // =byte_20057B0
    ldr r2, [pc, #0x809f6a8-0x809f690-4] // =0xD80
    add r2, r2, r3
loc_809F694:
    ldr r0, [r3,#0x50]
    mov r1, #1
    bic r0, r1
    str r0, [r3,#0x50]
    add r3, #0xd8
    cmp r3, r2
    blt loc_809F694
    pop {pc}
off_809F6A4:    .word byte_20057B0
off_809F6A8:    .word 0xD80
off_809F6AC:    .word 0x400
dword_809F6B0:    .word 0x1400
dword_809F6B4:    .word 0x1002
    .word 0xDC9E1122, 0x220F1021, 0x21DC9E11, 0xB8027810, 0x809F6
dword_809F6CC:    .word 0xCC020110, 0x809F6, 0x390916, 0x3C100116, 0x4390D16
    .word 0x3C100516, 0x9F6D402, 0x8, 0x390B16, 0x3C100316
    .word 0x4390F16, 0x3C100716, 0x9F6EC02, 0x8, 0x390F16
    .word 0x3C100716, 0x4390B16, 0x3C100316, 0x9F70402, 0x8
    .word 0x390D16, 0x3C100516, 0x4390916, 0x3C100116, 0x9F71C02
    .word 0x8, 0x390916, 0xD160116, 0x5160439, 0x9F73402
    .word 0x8, 0x390B16, 0xF160316, 0x7160439, 0x9F74802
    .word 0x8, 0x390F16, 0xB160716, 0x3160439, 0x9F75C02
    .word 0x8, 0x390D16, 0x9160516, 0x1160439, 0x9F77002
    .word 0x8, 0x390916, 0x6390F16, 0x4390D16, 0x2390B16
    .word 0x9F78402, 0x8, 0x390B16, 0x2390D16, 0x4390F16
    .word 0x6390916, 0x9F79C02, 0x8, 0x390916, 0x3C100116
    .word 0x3A, 0x390D16, 0x3C100516, 0x3A, 0x390B16
    .word 0x3C100316, 0x3A, 0x390F16, 0x3C100716, 0x3A
    .word 0x3C100516, 0x3C100316, 0x9F7E402, 0x8, 0x3C100716
    .word 0x3C100116, 0x9F7F402, 0x8, 0x390F16, 0x3C100116
    .word 0x4390B16, 0x3C100116, 0x9F80402, 0x8, 0x390D16
    .word 0x3C100716, 0x4390916, 0x3C100716, 0x9F81C02, 0x8
    .word 0x390916, 0x3A, 0x390D16, 0x3A, 0x390B16
    .word 0x3A, 0x390F16, 0x3A, 0x390916, 0x4390D16
    .word 0x3A, 0x390F16, 0x4390B16, 0x3A, 0x8007628
    .word 0xC02A002E, 0x3, 0x2A002E08, 0x3C0, 0x8007628
    .word 0xC02A012E, 0x14330903, 0x801CE28, 0x89020A33, 0x90809F8
    .word 0xCE280A33, 0xA330801, 0x9F89702, 0x5330908, 0x801CE28
    .word 0xA5020533, 0x340809F8, 0x9143308, 0xB4020A33, 0x80809F8
    .word 0x33090A33, 0xF8BF020A, 0x33080809, 0x5330905, 0x9F8CA02
    .word 0x33093408, 0x15E2814, 0x20A3308, 0x809F8D6, 0x280A3309
    .word 0x3308015E, 0xF8E4020A, 0x33090809, 0x15E2805, 0x2053308
    .word 0x809F8F2, 0x34, 0x2000B500, 0xBD007668
// end of function sub_809F68C

.thumb
sub_809F90C:
    push {lr}
    mov r0, #0x17
    mov r1, #8
    bl sub_802F164
    bne locret_809F920
    ldr r0, [pc, #0x809f9c4-0x809f918-4] // =byte_2000210
    mov r1, #0
    strb r1, [r0]
    str r1, [r0,#0x8] // (dword_2000218 - 0x2000210)
locret_809F920:
    pop {pc}
// end of function sub_809F90C

.thumb
sub_809F922:
    push {r4,r6,r7,lr}
    mov r0, #0x17
    mov r1, #8
    bl sub_802F164
    bne locret_809F940
    ldr r7, [pc, #0x809f9c4-0x809f92e-2] // =byte_2000210
    ldrb r6, [r7]
    cmp r6, #0x10
    bge locret_809F940
    add r4, r6, #1
    strb r4, [r7]
    lsl r6, r6, #2
    add r6, #0x10
    str r5, [r7,r6]
locret_809F940:
    pop {r4,r6,r7,pc}
// end of function sub_809F922

.thumb
sub_809F942:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #8
    bl sub_802F164
    bne locret_809F9BC
    ldr r7, [pc, #0x809f9c4-0x809f94e-2] // =byte_2000210
    ldrb r6, [r7]
    mov r4, r10
    ldr r4, [r4,#0x3c]
    ldr r4, [r4,#0x18]
    add r7, #0x10
loc_809F95A:
    sub r6, #1
    blt loc_809F9A6
    ldr r5, [r7]
    ldr r2, [r4,#0x24]
    ldr r0, [r5,#0x2c]
    cmp r0, r2
    bne loc_809F9A2
    ldr r2, [r4,#0x1c]
    ldr r3, [r4,#0x20]
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    sub r0, r0, r2
    sub r1, r1, r3
    mov r3, #0x24 
    lsl r3, r3, #0x10
    sub r2, r0, r1
    cmp r2, r3
    bgt loc_809F9A2
    mov r3, #0x38 
    lsl r3, r3, #0x10
    neg r3, r3
    sub r2, r0, r1
    cmp r2, r3
    blt loc_809F9A2
    mov r3, #0x1c
    lsl r3, r3, #0x10
    add r2, r0, r1
    cmp r2, r3
    bgt loc_809F9A2
    mov r3, #0x1c
    lsl r3, r3, #0x10
    neg r3, r3
    add r2, r0, r1
    cmp r2, r3
    blt loc_809F9A2
    b loc_809F9AE
loc_809F9A2:
    add r7, #4
    b loc_809F95A
loc_809F9A6:
    bl sub_809F90C
    mov r0, #0
    pop {r4-r7,pc}
loc_809F9AE:
    push {r5}
    bl sub_809F90C
    pop {r0}
    ldr r7, [pc, #0x809f9c4-0x809f9b6-2] // =byte_2000210
    str r0, [r7,#0x8] // (dword_2000218 - 0x2000210)
    pop {r4-r7,pc}
locret_809F9BC:
    pop {r4-r7,pc}
// end of function sub_809F942

.thumb
sub_809F9BE:
    ldr r7, [pc, #0x809f9c4-0x809f9be-2] // =byte_2000210
    ldr r7, [r7,#0x8] // (dword_2000218 - 0x2000210)
    mov pc, lr
off_809F9C4:    .word byte_2000210
// end of function sub_809F9BE

.thumb
sub_809F9C8:
    push {r4-r7,lr}
    mov r0, r10
    ldr r0, [r0,#0x70]
    ldr r1, [pc, #0x809f9d8-0x809f9ce-2] // =0x480
    bl sub_8000900
    pop {r4-r7,pc}
    .balign 4, 0x00
off_809F9D8:    .word 0x480
// end of function sub_809F9C8

.thumb
sub_809F9DC:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    bl sub_809FD70
    ldr r4, [pc, #0x809fc14-0x809f9e6-2] // =off_80A336C
loc_809F9E8:
    ldr r6, [r4]
    cmp r6, #1
    beq loc_809FA5E
    cmp r6, #0
    beq loc_809FA5A
    ldr r6, [r4,#4]
loc_809F9F4:
    ldr r7, [r6]
    cmp r7, #0
    beq loc_809FA5A
    mov r0, #0
    mov r12, r0
    sub sp, sp, #0x10
    mov r5, sp
    mov r0, sp
    mov r1, #0x10
    mov r2, #0xff
    bl initMemblockToByte
loc_809FA0C:
    ldrb r0, [r7]
    cmp r0, #0
    beq loc_809FA46
    cmp r0, #5
    bne loc_809FA42
    ldr r1, [r7,#8]
    bl sub_809FBF2
    add r1, r0, #0
    ldr r0, [r7,#4]
    mov r2, sp
    bl sub_809FA68
    strb r1, [r5]
    add r5, #1
    add r2, r1, #0
    add r1, r0, #0
    ldrh r0, [r7,#2]
    bl sub_809FACE
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
    mov r0, r12
    add r0, #1
    mov r12, r0
loc_809FA42:
    add r7, #0xc
    b loc_809FA0C
loc_809FA46:
    add sp, sp, #0x10
    ldr r0, [r4]
    ldr r1, [r4,#4]
    sub r1, r6, r1
    lsr r1, r1, #2
    mov r2, r12
    bl sub_809FDCE
    add r6, #4
    b loc_809F9F4
loc_809FA5A:
    add r4, #8
    b loc_809F9E8
loc_809FA5E:
    bl sub_809FDE0
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
// end of function sub_809F9DC

.thumb
sub_809FA68:
    push {r4-r7,lr}
    add r5, r2, #0
    sub sp, sp, #0x20
    add r7, r1, #0
    tst r0, r0
    beq loc_809FA90
    mov r4, #0
    mov r2, sp
loc_809FA78:
    ldrb r3, [r0]
    cmp r3, #0
    beq loc_809FA88
    ldrb r3, [r0,#1]
    strb r3, [r2,r4]
    add r4, #1
    add r0, #8
    b loc_809FA78
loc_809FA88:
    mov r0, sp
    add r1, r4, #0
    bl sub_8000E3A
loc_809FA90:
    add r6, r0, #0
    add r1, r7, #0
    mov r4, #0
    mov r2, sp
loc_809FA98:
    ldrb r3, [r1]
    cmp r3, #0
    beq loc_809FABC
    add r0, r5, #0
loc_809FAA0:
    ldrb r3, [r0]
    cmp r3, #0xff
    beq loc_809FAB2
    cmp r3, r4
    beq loc_809FAAE
    add r0, #1
    b loc_809FAA0
loc_809FAAE:
    mov r3, #0
    b loc_809FAB4
loc_809FAB2:
    ldrb r3, [r1,#1]
loc_809FAB4:
    strb r3, [r2,r4]
    add r4, #1
    add r1, #8
    b loc_809FA98
loc_809FABC:
    mov r0, sp
    add r1, r4, #0
    bl sub_8000E3A
    add r7, r0, #0
    add sp, sp, #0x20
    add r0, r6, #0
    add r1, r7, #0
    pop {r4-r7,pc}
// end of function sub_809FA68

.thumb
sub_809FACE:
    push {r4-r7,lr}
    push {r1,r2}
    bl sub_809FADE
    pop {r1,r2}
    strb r1, [r0]
    strb r2, [r0,#1]
    pop {r4-r7,pc}
// end of function sub_809FACE

.thumb
sub_809FADE:
    mov r2, r10
    ldr r2, [r2,#0x70]
    ldr r1, [pc, #0x809faf0-0x809fae2-2] // =0x1400
    sub r0, r0, r1
    mov r1, #2
    mul r0, r1
    add r0, r0, r2
    mov pc, lr
    .byte 0, 0
dword_809FAF0:    .word 0x1400
// end of function sub_809FADE

.thumb
sub_809FAF4:
    push {r4-r7,lr}
    ldr r4, [pc, #0x809fc14-0x809faf6-2] // =off_80A336C
    bl sub_809FB04
    ldr r4, [pc, #0x809fc10-0x809fafc-4] // =dword_80A3360
    bl sub_809FB04
    pop {r4-r7,pc}
// end of function sub_809FAF4

.thumb
sub_809FB04:
    push {r4-r7,lr}
loc_809FB06:
    ldr r6, [r4]
    cmp r6, #1
    beq locret_809FB4A
    cmp r6, #0
    beq loc_809FB46
    ldr r6, [r4,#4]
loc_809FB12:
    ldr r7, [r6]
    cmp r7, #0
    beq loc_809FB46
loc_809FB18:
    ldrb r0, [r7]
    cmp r0, #0
    beq loc_809FB42
    cmp r0, #5
    beq loc_809FB3E
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    ldrh r3, [r7,#2]
    bl sub_809FB4C
    add r2, r1, #0
    add r1, r0, #0
    ldrh r0, [r7,#2]
    bl sub_809FACE
    ldrh r0, [r7,#2]
// <mkdata>
    .hword 0x1c00 // add r0, r0, #0
    bl sub_802F130
loc_809FB3E:
    add r7, #0xc
    b loc_809FB18
loc_809FB42:
    add r6, #4
    b loc_809FB12
loc_809FB46:
    add r4, #8
    b loc_809FB06
locret_809FB4A:
    pop {r4-r7,pc}
// end of function sub_809FB04

.thumb
sub_809FB4C:
    push {r4-r7,lr}
    add r5, r3, #0
    add r6, r1, #0
    add r7, r2, #0
    cmp r0, #1
    beq loc_809FB64
    cmp r0, #3
    beq loc_809FB64
    cmp r0, #2
    beq loc_809FBAE
    cmp r0, #4
    beq loc_809FBAE
loc_809FB64:
    push {r6,r7}
    add r0, r5, #0
    bl sub_802F168
    pop {r6,r7}
    beq loc_809FBE6
    mov r4, #0
loc_809FB72:
    ldrb r3, [r6]
    cmp r3, #0
    beq loc_809FB7E
    add r4, #1
    add r6, #8
    b loc_809FB72
loc_809FB7E:
    add r0, r5, #0
    bl sub_809FADE
    ldrb r6, [r0]
    add r6, #1
    cmp r6, r4
    blt loc_809FB8E
    sub r6, r4, #1
loc_809FB8E:
    mov r4, #0
loc_809FB90:
    ldrb r3, [r7]
    cmp r3, #0
    beq loc_809FB9C
    add r4, #1
    add r7, #8
    b loc_809FB90
loc_809FB9C:
    add r0, r5, #0
    bl sub_809FADE
    ldrb r7, [r0,#1]
    add r7, #1
    cmp r7, r4
    blt loc_809FBAC
    sub r7, r4, #1
loc_809FBAC:
    b loc_809FBE0
loc_809FBAE:
    mov r4, #0
loc_809FBB0:
    ldrb r3, [r6]
    cmp r3, #0
    beq loc_809FBBC
    add r4, #1
    add r6, #8
    b loc_809FBB0
loc_809FBBC:
    mov r0, #0
    cmp r0, r4
    blt loc_809FBC4
    sub r0, r4, #1
loc_809FBC4:
    add r6, r0, #0
    mov r4, #0
loc_809FBC8:
    ldrb r3, [r7]
    cmp r3, #0
    beq loc_809FBD4
    add r4, #1
    add r7, #8
    b loc_809FBC8
loc_809FBD4:
    mov r0, #0
    cmp r0, r4
    blt loc_809FBDC
    sub r0, r4, #1
loc_809FBDC:
    add r7, r0, #0
    b loc_809FBE0
loc_809FBE0:
    add r0, r6, #0
    add r1, r7, #0
    pop {r4-r7,pc}
loc_809FBE6:
    add r0, r5, #0
    bl sub_809FADE
    ldrb r1, [r0,#1]
    ldrb r0, [r0]
    pop {r4-r7,pc}
// end of function sub_809FB4C

.thumb
sub_809FBF2:
    push {r2-r7,lr}
    add r4, r1, #0
    cmp r0, #5
    bne loc_809FC0A
    mov r0, #0
    lsl r1, r0, #3
    mov r2, #8
    mul r1, r2
    lsl r0, r0, #2
    add r0, r0, r1
    add r0, r0, r4
    pop {r2-r7,pc}
loc_809FC0A:
    add r0, r1, #0
    pop {r2-r7,pc}
    .byte 0, 0
off_809FC10:    .word dword_80A3360
off_809FC14:    .word off_80A336C
    .word byte_2000210
// end of function sub_809FBF2

.thumb
sub_809FC1C:
    push {r4-r7,lr}
    add r6, r0, #0
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    ldrb r1, [r7,#5]
    cmp r0, #0x80
    bge loc_809FC2E
    b loc_809FC34
loc_809FC2E:
    sub r0, #0x80
    ldr r4, [pc, #0x809fe98-0x809fc30-4] // =off_80A336C
    b loc_809FC36
loc_809FC34:
    ldr r4, [pc, #0x809fe94-0x809fc34-4] // =dword_80A3360
loc_809FC36:
    lsl r0, r0, #3
    add r0, #4
    ldr r4, [r4,r0]
    lsl r1, r1, #2
    ldr r4, [r4,r1]
loc_809FC40:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_809FC8C
    ldrh r0, [r4,#2]
    cmp r0, r6
    beq loc_809FC50
    add r4, #0xc
    b loc_809FC40
loc_809FC50:
    ldrb r0, [r4]
    ldrb r1, [r4,#1]
    push {r0,r1}
    add r0, r6, #0
    bl sub_809FADE
    add r7, r0, #0
    ldr r2, [r4,#4]
    ldrb r3, [r7]
    mov r1, #8
    mul r1, r3
    add r2, r2, r1
    add r2, #2
    push {r2}
    ldrb r0, [r4]
    ldr r1, [r4,#8]
    bl sub_809FBF2
    add r4, r0, #0
    ldrb r3, [r7,#1]
    mov r1, #8
    mul r1, r3
    add r4, r4, r1
    ldrb r3, [r4]
    pop {r2}
    pop {r0,r1}
    add r4, r6, #0
    bl sub_809FE36
    b locret_809FC94
loc_809FC8C:
    mov r0, #0
    mov r1, #0xff
    mov r2, #0xff
    mov r3, #0xff
locret_809FC94:
    pop {r4-r7,pc}
// end of function sub_809FC1C

.thumb
sub_809FC96:
    push {r4-r7,lr}
    mov r4, r12
    push {r4}
    add r6, r0, #0
    mov r5, #1
    bl getPETNaviSelect
    mov r1, #0x33 
    bl sub_8013704
    cmp r0, #1
    beq loc_809FCB0
    mov r5, #0
loc_809FCB0:
    mov r7, r10
    ldr r7, [r7,#0x3c]
    ldrb r0, [r7,#4]
    ldrb r1, [r7,#5]
    cmp r0, #0x80
    bge loc_809FCBE
    b loc_809FCC4
loc_809FCBE:
    sub r0, #0x80
    ldr r4, [pc, #0x809fe98-0x809fcc0-4] // =off_80A336C
    b loc_809FCC6
loc_809FCC4:
    ldr r4, [pc, #0x809fe94-0x809fcc4-4] // =dword_80A3360
loc_809FCC6:
    lsl r0, r0, #3
    add r0, #4
    ldr r4, [r4,r0]
    lsl r1, r1, #2
    ldr r4, [r4,r1]
loc_809FCD0:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_809FD62
    ldrh r0, [r4,#2]
    cmp r0, r6
    beq loc_809FCE0
    add r4, #0xc
    b loc_809FCD0
loc_809FCE0:
    add r0, r6, #0
    bl sub_809FADE
    add r7, r0, #0
    ldrb r0, [r4]
    mov r12, r0
    ldr r1, [r4,#8]
    bl sub_809FBF2
    mov r1, r12
    cmp r1, #5
    bne loc_809FCFC
    tst r5, r5
    bne loc_809FD20
loc_809FCFC:
    add r4, r0, #0
    ldrb r3, [r7,#1]
    add r0, r6, #0
    bl sub_809FE44
    mov r1, #8
    mul r1, r3
    add r4, r4, r1
    ldr r0, [r4,#4]
    ldrb r1, [r4,#3]
    ldrb r2, [r4]
    sub r2, #1
    mov r3, #0xa
    mul r2, r3
    add r2, r12
    sub r2, #1
    ldrb r3, [r4]
    b loc_809FD6A
loc_809FD20:
    add r4, r0, #0
    ldrb r3, [r7,#1]
    add r0, r6, #0
    bl sub_809FE44
    mov r2, #0
loc_809FD2C:
    mov r1, #8
    mul r1, r2
    add r1, r1, r4
    ldrb r0, [r1]
    cmp r0, #3
    beq loc_809FD3C
    cmp r0, #7
    bne loc_809FD44
loc_809FD3C:
    sub r3, #1
    bge loc_809FD44
    add r4, r1, #0
    b loc_809FD4E
loc_809FD44:
    add r2, #1
    cmp r2, #8
    blt loc_809FD2C
    mov r2, #0
    b loc_809FD2C
loc_809FD4E:
    ldr r0, [r4,#4]
    ldrb r1, [r4,#3]
    ldrb r2, [r4]
    sub r2, #1
    mov r3, #0xa
    mul r2, r3
    add r2, r12
    sub r2, #1
    ldrb r3, [r4]
    b loc_809FD6A
loc_809FD62:
    mov r0, #0xff
    mov r1, #0xff
    mov r2, #0xff
    mov r3, #0xff
loc_809FD6A:
    pop {r4}
    mov r12, r4
    pop {r4-r7,pc}
// end of function sub_809FC96

.thumb
sub_809FD70:
    push {r4-r7,lr}
    ldr r6, [pc, #0x809fe9c-0x809fd72-2] // =byte_2000210
    mov r0, #0
    strb r0, [r6,#0x2] // (byte_2000212 - 0x2000210)
    strh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
    strh r0, [r6,#0x4] // (word_2000214 - 0x2000210)
    sub sp, sp, #0x20
    mov r4, sp
    ldr r7, [pc, #0x809fe90-0x809fd80-4] // =off_80A3428
    mov r3, #0
loc_809FD84:
    ldr r0, [r7]
    tst r0, r0
    beq loc_809FD96
    ldr r0, [r7,#8]
    strb r0, [r4]
    add r7, #0xc
    add r3, #1
    add r4, #1
    b loc_809FD84
loc_809FD96:
    mov r0, sp
    add r1, r3, #0
    bl sub_8000E3A
    sub sp, sp, #0x10
    strb r0, [r6,#0x3] // (byte_2000213 - 0x2000210)
    mov r1, #0xc
    mul r0, r1
    ldr r1, [pc, #0x809fe90-0x809fda6-2] // =off_80A3428
    add r1, r1, r0
    ldr r0, [r1]
    strh r0, [r6,#0x4] // (word_2000214 - 0x2000210)
    mov r0, #0
    ldr r1, [r1,#4]
    mov r2, sp
    push {r0-r2}
    add r0, r2, #0
    mov r1, #0x10
    mov r2, #0xff
    bl initMemblockToByte
    pop {r0-r2}
    bl sub_809FA68
    strb r1, [r6,#0x2] // (byte_2000212 - 0x2000210)
    add sp, sp, #0x10
    add sp, sp, #0x20
    pop {r4-r7,pc}
// end of function sub_809FD70

.thumb
sub_809FDCE:
    push {r4-r7,lr}
    ldr r6, [pc, #0x809fe9c-0x809fdd0-4] // =byte_2000210
    lsl r1, r1, #8
    orr r0, r1
    ldrh r1, [r6,#0x4] // (word_2000214 - 0x2000210)
    cmp r0, r1
    bne locret_809FDDE
    strh r2, [r6,#0x6] // (word_2000216 - 0x2000210)
locret_809FDDE:
    pop {r4-r7,pc}
// end of function sub_809FDCE

.thumb
sub_809FDE0:
    push {r4-r7,lr}
    ldr r6, [pc, #0x809fe9c-0x809fde2-2] // =byte_2000210
    ldrh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
    tst r0, r0
    beq locret_809FE34
    sub sp, sp, #0x10
    mov r0, sp
    mov r1, #0x10
    mov r2, #0x20 
    bl initMemblockToByte
    mov r0, sp
    ldrh r1, [r6,#0x6] // (word_2000216 - 0x2000210)
    bl sub_8000E3A
    add r7, r0, #1
    add sp, sp, #0x10
    ldr r4, [pc, #0x809fe98-0x809fe02-2] // =off_80A336C
    ldrb r0, [r6,#0x4] // (word_2000214 - 0x2000210)
    ldrb r1, [r6,#0x5] // (word_2000214+1 - 0x2000210)
    sub r0, #0x80
    lsl r0, r0, #3
    add r0, #4
    ldr r4, [r4,r0]
    lsl r1, r1, #2
    ldr r4, [r4,r1]
    mov r3, #0
loc_809FE16:
    ldrb r0, [r4]
    cmp r0, #0
    beq loc_809FE30
    cmp r0, #5
    bne loc_809FE2C
    add r3, #1
    cmp r3, r7
    bne loc_809FE2C
    ldrh r0, [r4,#2]
    strh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
    b locret_809FE34
loc_809FE2C:
    add r4, #0xc
    b loc_809FE16
loc_809FE30:
    mov r0, #0
    strh r0, [r6,#0x6] // (word_2000216 - 0x2000210)
locret_809FE34:
    pop {r4-r7,pc}
// end of function sub_809FDE0

.thumb
sub_809FE36:
    push {r4-r7,lr}
    ldr r6, [pc, #0x809fe9c-0x809fe38-4] // =byte_2000210
    ldrh r7, [r6,#0x6] // (word_2000216 - 0x2000210)
    cmp r4, r7
    bne locret_809FE42
    add r0, #1
locret_809FE42:
    pop {r4-r7,pc}
// end of function sub_809FE36

.thumb
sub_809FE44:
    push {r5-r7,lr}
    ldr r6, [pc, #0x809fe9c-0x809fe46-2] // =byte_2000210
    ldrh r1, [r6,#0x6] // (word_2000216 - 0x2000210)
    cmp r0, r1
    bne locret_809FE5C
    ldrb r0, [r6,#0x3] // (byte_2000213 - 0x2000210)
    mov r1, #0xc
    mul r0, r1
    ldr r4, [pc, #0x809fe90-0x809fe54-4] // =off_80A3428
    add r4, r4, r0
    ldr r4, [r4,#4]
    ldrb r3, [r6,#0x2] // (byte_2000212 - 0x2000210)
locret_809FE5C:
    pop {r5-r7,pc}
// end of function sub_809FE44

.thumb
sub_809FE5E:
    push {r5-r7,lr}
    ldr r6, [pc, #0x809fe9c-0x809fe60-4] // =byte_2000210
    ldrb r0, [r6,#0x4] // (word_2000214 - 0x2000210)
    mov r1, #0x10
    svc 6
    mov r2, #0xa
    mul r0, r2
    add r0, r0, r1
    ldrb r1, [r6,#0x5] // (word_2000214+1 - 0x2000210)
    mov r2, #0
    mov r3, #0
    bl sub_8045EFC
    pop {r5-r7,pc}
// end of function sub_809FE5E

.thumb
sub_809FE7A:
    push {r4-r7,lr}
    mov r0, #0x17
    mov r1, #0x40 
    bl sub_802F164
    beq locret_809FE8E
    ldr r3, [pc, #0x809fe9c-0x809fe86-2] // =byte_2000210
    ldrb r1, [r3,#0x4] // (word_2000214 - 0x2000210)
    ldrb r2, [r3,#0x5] // (word_2000214+1 - 0x2000210)
    ldrb r3, [r3,#0x2] // (byte_2000212 - 0x2000210)
// <endpool>
locret_809FE8E:
    pop {r4-r7,pc}
// end of function sub_809FE7A

off_809FE90:    .word off_80A3428
off_809FE94:    .word dword_80A3360
off_809FE98:    .word off_80A336C
off_809FE9C:    .word byte_2000210
// <endfile>
off_809FEA0:    .word dword_809FEE4
    .word dword_809FFE8
/*For debugging purposes, connect comment at any range!*/
