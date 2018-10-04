.include "asm/asm11.inc"

.func
.thumb_func
sub_8069038:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_8069090 // =off_8068CCC 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_8069140
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_803037C
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8030AA4
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_802FF4C
    bl loc_8030472
    ldr r0, off_8069094 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_8069098 // =off_806909C 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_80691FE
    bl sub_8034FB8
    pop {r4-r7,pc}
off_8069090:    .word off_8068CCC
off_8069094:    .word unk_2037800
off_8069098:    .word off_806909C
off_806909C:    .word dword_80690A8
    .word dword_80690B0
    .word dword_80690B8
dword_80690A8:    .word 0x631C561C, 0xFFFF521C
dword_80690B0:    .word 0x631C561C, 0xFFFF521C
dword_80690B8:    .word 0x631C561C, 0x5518521C
    .byte 0xFF, 0xFF
.endfunc // sub_8069038

.func
.thumb_func
sub_80690C2:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_80690D0 // =off_80690D4 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_80690D0:    .word off_80690D4
off_80690D4:    .word off_80690E0
    .word off_8069100
    .word off_8069120
off_80690E0:    .word off_8068D18
    .word dword_8068E48
    .word off_8068E88
    .word off_8068ED0
    .word off_8068EF0
    .word off_8068F30
    .word dword_8068FA0
    .word 0xFFFFFFFF
off_8069100:    .word off_8068D18
    .word dword_8068E48
    .word off_8068E88
    .word off_8068ED0
    .word off_8068EF0
    .word off_8068F30
    .word dword_8068FA0
    .word 0xFFFFFFFF
off_8069120:    .word off_8068D18
    .word dword_8068E48
    .word off_8068E88
    .word off_8068ED0
    .word off_8068EF0
    .word off_8068F30
    .word dword_8068FA0
    .word 0xFFFFFFFF
.endfunc // sub_80690C2

.func
.thumb_func
sub_8069140:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_8069174 // =off_8069178 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_80691A8 // =off_80691AC 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_8069174:    .word off_8069178
off_8069178:    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
off_80691A8:    .word off_80691AC
off_80691AC:    .word off_80691B8
    .word off_80691B8
    .word off_80691B8
off_80691B8:    .word off_8612A28
    .word 0x6008020
    .word dword_8612CF0
    .word 0x1800
    .word dword_8612E84
    .word word_3001960
    .word 0x20
.endfunc // sub_8069140

.func
.thumb_func
sub_80691D4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_80691E8 // =off_80691EC 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_80691E8:    .word off_80691EC
off_80691EC:    .word nullsub_31+1
    .word nullsub_32+1
    .word nullsub_33+1
.endfunc // sub_80691D4

.func
.thumb_func
nullsub_31:
    mov pc, lr
.endfunc // nullsub_31

.func
.thumb_func
nullsub_32:
    mov pc, lr
.endfunc // nullsub_32

.func
.thumb_func
nullsub_33:
    mov pc, lr
.endfunc // nullsub_33

.func
.thumb_func
sub_80691FE:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_8069214 // =off_8069218 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
    .balign 4, 0x00
off_8069214:    .word off_8069218
off_8069218:    .word dword_8069224
    .word dword_8069264
    .word dword_80692A4
dword_8069224:    .word 0x305, 0xFEDA0000, 0xD60000, 0x0
    .word 0xD, 0x305, 0x5A0000, 0xB60000, 0x0
    .word 0xE, 0x305, 0x19A0000, 0xFF560000, 0x0
    .word 0xF, 0xFF
dword_8069264:    .word 0x305, 0xFF720000, 0xFF800000, 0x0
    .word 0x10, 0x305, 0xB40000, 0xFFBE0000, 0x0
    .word 0x11, 0x305, 0x1920000, 0xFFBE0000, 0x0
    .word 0x12, 0xFF
dword_80692A4:    .word 0x5, 0x1640000, 0xFECE0000, 0xFFC00000, 0x2D, 0x305
    .word 0x120000, 0xBE0000, 0x0
    .word 0x13, 0x305, 0xF20000, 0x5E0000, 0x0
    .word 0x14, 0x305, 0xD20000, 0xFF9E0000, 0x0
    .word 0x15, 0xFF
off_80692F8:    .word dword_806935C
    .word dword_80693C8
    .word dword_8069404
off_8069304:    .word unk_806937A
    .word unk_80693E6
    .word unk_8069462
off_8069310:    .word off_80694B8
    .word off_8069590
    .word off_8069648
off_806931C:    .word dword_8069328
    .word dword_8069338
    .word byte_8069348
dword_8069328:    .word 0xFF020100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_8069338:    .word 0xFF020100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
byte_8069348:    .byte 0x0, 0x1, 0x2, 0x3, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_8069358:    .byte 0x12, 0x12, 0x12, 0x0
dword_806935C:    .word 0x93700016
    .word 0xD5250806
    .word 0x808CA
    .word 0x1000000
    .word byte_8069379
    .word unk_8CA6925
    .word 0x8
    .byte  0
byte_8069379:    .byte 0x0
unk_806937A:    .byte  2
    .byte 0x30 
    .word 0x693863F
    .word 0x93C50108
    .word 0x33020806
    .word 0x6939233
    .word 0x93B40108
    .word 0xFF050806
    .word 0x93B40829
    .word 0xFF030806
    .word 0x93B4082A
    .word 0xFF1F0806
    .word 0xB026082A
    .word 0x808B9
    .word 0x1000000
    .word byte_80693C5
    .word 0x9DAFF03
    .word byte_80693C5
    .word unk_8CB0D25
    .word 0x8
    .byte  0
byte_80693C5:    .byte 0x0, 0x0, 0x0
dword_80693C8:    .word 0x93DC0016
    .word 0xD5250806
    .word 0x808CA
    .word 0x1000000
    .word byte_80693E5
    .word unk_8CA6925
    .word 0x8
    .byte  0
byte_80693E5:    .byte 0x0
unk_80693E6:    .byte  2
    .byte 0x30 
    .word 0x693F23F
    .word 0x94030108
    .word 0xFF030806
    .word 0x940309DB
    .word 0xD250806
    .word 0x808CB
    .word 0x0
dword_8069404:    .word 0x94180016
    .word 0xD5250806
    .word 0x808CA
    .word 0x1000000
    .word unk_8069421
    .word unk_8CA6925
    .word 0x8
    .byte  0
unk_8069421:    .byte  2
    .byte 0x30 
    .byte 0x3F 
    .word unk_806942D
    .word 0x6946101
    .byte  8
unk_806942D:    .byte  2
    .byte 0x33 
    .byte 0x33 
    .word unk_8069439
    .word 0x6946101
    .byte  8
unk_8069439:    .byte  5
    .byte 0xFF
    .byte 0x2D 
    .word 0x6946108
    .word 0x2EFF0308
    .word 0x6946108
    .word 0x2EFF1F08
    .word 0xFF0C1E08
    .word 0x2663042B
    .word unk_808BB8C
    .word 0x0
dword_806945C:    .word 0x6946101
    .byte  8
    .byte  0
unk_8069462:    .byte  2
    .byte 0x30 
    .word 0x6946E3F
    .word 0x94B40108
    .word 0x33020806
    .word 0x6947A33
    .word 0x94A30108
    .word 0x100D0806
    .word 0x694A300
    .word 0x2BFF0508
    .word 0x694A308
    .word 0x2CFF0308
    .word 0x694A308
    .word 0x2CFF1F08
    .word 0xBA202608
    .word 0x808
    .word 0xB4010000
    .word 0x3080694
    .word 0xB409DCFF
    .word 0x25080694
    .word sub_808CB0C+1
    .word 0x0
    .word 0x0
off_80694B8:    .word dword_80694FC
    .word dword_80694D0
    .word unk_80694DB
    .word unk_80694E6
    .word unk_80694F1
    .word 0xFF
dword_80694D0:    .word 0x1C022508
    .word 0x45152029
    .byte 0x20
    .byte 0x15
    .byte  3
unk_80694DB:    .byte  8
    .word 0x291C0225
    .word 0x21451521
    .byte 0x15
    .byte  3
unk_80694E6:    .byte  8
    .byte 0x25 
    .word 0x22291C02
    .word 0x15224515
    .byte  3
unk_80694F1:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1523291C
    .word 0x3152345
dword_80694FC:    .word 0x3B3C1708
    .word 0x95073333
    .word 0x18030806
    .word 0xFE481400
    .word 0xC8
    .word 0xCC360316
    .word 0x809F6
    .word dword_8069524
    .word unk_8069555
    .word 0xFF
dword_8069524:    .word 0x35371708
    .word unk_806957D
    .word unk_83F0416
    .word 0x3F2F1601
    .word 0x3F090208
    .word 0x30140308
    .word 0x5EFE
    .word 0x3A160800
    .word 0x1604083F
    .word 0x10C02A04
    .word 0x5083C0A
    .word 0x9F6CC36
    .byte  8
unk_8069555:    .byte  9
    .byte 0x3F 
    .byte  8
    .word 0x1C632501
    .word 0x6957D35
    .word off_8010F08
    .word 0x2E010528
    .word 0x2A000F00
    .word 0xC028C0
    .word unk_83C0A10
    .word 0x3083F02
    .word 0x3
    .byte 0x20
unk_806957D:    .byte 0xB5
    .byte 0x34 
    .byte 0xF0
    .word 0x6268FE16
    .word 0x62EA62A9
    .word 0xF9BCF036
    .word 0xBD20
off_8069590:    .word dword_80695A4
    .word unk_80695AF
    .word unk_80695BA
    .word unk_80695C5
    .word 0xFF
dword_80695A4:    .word 0x1C022508
    .word 0x45152829
    .byte 0x28 
    .byte 0x15
    .byte  3
unk_80695AF:    .byte  8
    .word 0x291C0225
    .word 0x29451529
    .byte 0x15
    .byte  3
unk_80695BA:    .byte  8
    .byte 0x25 
    .word 0x2A291C02
    .word 0x152A4515
    .byte  3
unk_80695C5:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x152B291C
    .word 0x3152B45
    .word dword_80695DC
    .word unk_806960D
    .word 0xFF
dword_80695DC:    .word 0x35371708
    .word unk_8069635
    .word unk_83F0416
    .word 0x3F2F1601
    .word 0x3F090208
    .word 0xCA140308
    .word 0x46FD
    .word 0x3A160800
    .word 0x1604083F
    .word 0x10C02A04
    .word 0x5083C0A
    .word 0x9F6CC36
    .byte  8
unk_806960D:    .byte  9
    .byte 0x3F 
    .byte  8
    .word 0x1C632501
    .word 0x6963535
    .word off_8010F08
    .word 0x2E010528
    .word 0x2A000F00
    .word 0xC028C0
    .word unk_83C0A10
    .word 0x3083F02
    .word 0x3
    .byte 0x20
unk_8069635:    .byte 0xB5
    .byte 0x34 
    .byte 0xF0
    .word 0x6268FDBA
    .word 0x62EA62A9
    .word 0xF960F036
    .word 0xBD20
off_8069648:    .word dword_8069660
    .word dword_806968C
    .word unk_8069697
    .word unk_80696A2
    .word unk_80696AD
    .word 0xFF
dword_8069660:    .word 0x4411708, 0x968B11DC, 0xDA040806, 0x6967211, 0x63040308
    .word 0x6968B01, 0x4C411708, 0xFE2C1400, 0xA4, 0xCC360716
    .word 0x30809F6
dword_806968C:    .word 0x1C022508
    .word 0x45153029
    .byte 0x30 
    .byte 0x15
    .byte  3
unk_8069697:    .byte  8
    .word 0x291C0225
    .word 0x31451531
    .byte 0x15
    .byte  3
unk_80696A2:    .byte  8
    .byte 0x25 
    .word 0x32291C02
    .word 0x15324515
    .byte  3
unk_80696AD:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1533291C
    .word 0x3153345
    .word dword_80696C4
    .word unk_80696F5
    .word 0xFF
dword_80696C4:    .word 0x35371708
    .word unk_806971D
    .word unk_83F0416
    .word 0x3F2F1601
    .word 0x3F090208
    .word 0x2A140308
    .word 0x128FE
    .word 0x3A160800
    .word 0x1604083F
    .word 0x10C02A04
    .word 0x5083C0A
    .word 0x9F6CC36
    .byte  8
unk_80696F5:    .byte  9
    .byte 0x3F 
    .byte  8
    .word 0x1C632501
    .word 0x6971D35
    .word off_8010F08
    .word 0x2E010528
    .word 0x2A000F00
    .word 0xC028C0
    .word unk_83C0A10
    .word 0x3083F02
    .word 0x3
    .byte 0x20
unk_806971D:    .byte 0xB5
    .byte 0x34 
    .byte 0xF0
    .word 0x6268FD46
    .word 0x62EA62A9
    .word 0xF8ECF036
    .word 0xBD20
    .word dword_806974C
    .word byte_8069781
    .word dword_80697B0
    .word unk_80697DD
    .word dword_8069818
    .word unk_806982F
    .word 0xFF
dword_806974C:    .word 0x17271F08
    .word 0x1601437
    .word 0xFF0C
    .word 0x83F0116
    .word 0x15111601
    .word 0x16041001
    .word 0x2083C01
    .word 0x1003083F
    .word 0x3F2E161E
    .word 0x1160608
    .word 0x1611083F
    .word 0x13083F29
    .word 0x9F6CC36
    .byte  8
byte_8069781:    .byte 0x8, 0x1F, 0x27
dword_8069784:    .word 0xC8145517
    .word 0xFF2C01
    .word 0x3F051600
    .word 0x1A161108
    .word 0x1009C02A
    .word 0x1A01414
    .word 0xFF0C
    .word 0x2A1B1608
    .word 0x12083CC0
    .word 0x3613083F
    .word byte_809F6CC
dword_80697B0:    .word 0x25271F09
    .word 0xC814140D
    .word 0xEFF2C01
    .word 0x3F001600
    .word 0x28081108
    .word 0x62E0135
    .word 0x1009C02A
    .word 0x1A01414
    .word 0xEFF0C
    .word 0x942808
    .word 0xC02A072E
    .byte  3
unk_80697DD:    .byte  8
    .byte 0x1F
    .byte 0x27 
    .word 0xB0145317
    .word 0xFF0C01
    .word 0x3F051600
    .word 0x15160308
    .word 0x2100515
    .word 0x3F04083C
    .word 0x2B160508
    .word 0x160B083F
    .word 0xC083C01
    .word 0x160D083F
    .word 0xE083C03
    .word 0x2E0F083F
    .word 0x9C02A24
    .word 0x310083C
dword_8069818:    .word 0x25271F09
    .word 0xA0141C00
    .word 0xFF0C01
    .word 0x3F001600
    .word 0x80020F08
    .byte 0xF8
    .byte  9
    .byte  8
unk_806982F:    .byte  9
    .word 0x2C25271F
    .word 0x1A0141C
    .word 0xFFFCFF0C
    .word byte_83F0016
    .word 0x2E0805
    .word 0x6986D32
    .word 0x6083F08
    .word 0x98773209
    .word byte_83C0806
    .word unk_8083F07
    .word 0x32002E08
    .word unk_806986D
    .word 0x909083F
    .word 0x6987732
    .word 0xA083C08
    .byte  3
unk_806986D:    .byte 0x28 
    .byte 0xD7
    .byte  1
    .word 0x6D023B33
    .word 0x34080698
    .word dword_8069884
    .word unk_80698BF
    .word 0xFF
dword_8069884:    .word 0x17271F08
    .word 0x1801437
    .word 0xFF0C
    .word byte_83F2916
    .word 0x15111604
    .word 0x16081001
    .word 0x5083C29
    .word 0x1606083F
    .word loc_8011508+1
    .word 0x10011601
    .word 0xD4281E
    .word 0x4163C10
    .word 0x3F07083C
    .word 0xCC360808
    .byte 0xF6
    .byte  9
    .byte  8
unk_80698BF:    .byte  8
    .word 0x5517271F
    .word 0xC01A014
    .word 0x160000FF
    .word 0x1083F05
    .word unk_83C1916
    .word 0x3083F02
    .word 0x3
off_80698DC:    .word dword_80698E8
    .word dword_80698F8
    .word dword_8069918
dword_80698E8:    .word 0x7000183, 0xFEA60000, 0x13E0000, 0x0
dword_80698F8:    .word 0x3000083, 0xFFCC0000, 0xFF000000, 0x0
    .word 0x1000283, 0xFE900000, 0xA0000, 0x0
dword_8069918:    .word 0x5000183, 0x1D80000, 0xA0000, 0x0
off_8069928:    .word byte_8613DDC
dword_806992C:    .word 0x6008040
    .word 0xC090004
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word dword_8069AB8
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word unk_8069ACA
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word dword_8069ADC
    .word 0x8
    .word 0x1
dword_8069AB8:    .word 0x10000
    .word 0x30002
    .word 0x50004
    .word 0x70006
    .byte  8
    .byte  0
unk_8069ACA:    .byte  9
    .byte  0
    .word 0xB000A
    .word 0xD000C
    .word 0xF000E
    .word 0x110010
dword_8069ADC:    .word 0x130012
    .word 0x150014
    .word 0x170016
    .word 0x190018
    .word 0x1A
dword_8069AF0:    .word 0x3001960
    .word 0x20
    .word 0xFFFF0100
    .word byte_8614140
    .word 0x8
    .word byte_8614160
    .word 0x8
    .word byte_8614180
    .word 0x8
    .word byte_86141A0
    .word 0x8
    .word byte_8614140
    .word 0x8
    .word byte_8614160
    .word 0x8
    .word byte_8614180
    .word 0x8
    .word byte_86141A0
    .word 0x8
    .word byte_8614140
    .word 0x8
    .word byte_8614160
    .word 0x8
    .word byte_8614180
    .word 0x8
    .word byte_86141A0
    .word 0x8
    .word byte_8614140
    .word 0x8
    .word byte_8614160
    .word 0x8
    .word byte_8614180
    .word 0x8
    .word byte_86141A0
    .word 0x8
    .word byte_86141C0
    .word 0x8
    .word byte_86141E0
    .word 0x8
    .word byte_8614200
    .word 0x8
    .word byte_8614220
    .word 0x8
    .word byte_86141C0
    .word 0x8
    .word byte_86141E0
    .word 0x8
    .word byte_8614200
    .word 0x8
    .word byte_8614220
    .word 0x8
    .word byte_86141C0
    .word 0x8
    .word byte_86141E0
    .word 0x8
    .word byte_8614200
    .word 0x8
    .word byte_8614220
    .word 0x8
    .word byte_86141C0
    .word 0x8
    .word byte_86141E0
    .word 0x8
    .word byte_8614200
    .word 0x8
    .word byte_8614220
    .word 0x8
    .word byte_8614240
    .word 0x8
    .word byte_8614260
    .word 0x8
    .word byte_8614280
    .word 0x8
    .word byte_86142A0
    .word 0x8
    .word byte_8614240
    .word 0x8
    .word byte_8614260
    .word 0x8
    .word byte_8614280
    .word 0x8
    .word byte_86142A0
    .word 0x8
    .word byte_8614240
    .word 0x8
    .word byte_8614260
    .word 0x8
    .word byte_8614280
    .word 0x8
    .word byte_86142A0
    .word 0x8
    .word byte_8614240
    .word 0x8
    .word byte_8614260
    .word 0x8
    .word byte_8614280
    .word 0x8
    .word byte_86142A0
    .word 0x8
    .word 0x1
off_8069C80:    .word word_3001960
    .word 0x20
    .word 0xFFFF0100
    .word byte_86142C4
    .word 0x8
    .word byte_86142E4
    .word 0x8
    .word byte_8614304
    .word 0x8
    .word byte_8614324
    .word 0x8
    .word byte_86142C4
    .word 0x8
    .word byte_86142E4
    .word 0x8
    .word byte_8614304
    .word 0x8
    .word byte_8614324
    .word 0x8
    .word byte_86142C4
    .word 0x8
    .word byte_86142E4
    .word 0x8
    .word byte_8614304
    .word 0x8
    .word byte_8614324
    .word 0x8
    .word byte_86142C4
    .word 0x8
    .word byte_86142E4
    .word 0x8
    .word byte_8614304
    .word 0x8
    .word byte_8614324
    .word 0x8
    .word byte_8614344
    .word 0x8
    .word byte_8614364
    .word 0x8
    .word byte_8614384
    .word 0x8
    .word byte_86143A4
    .word 0x8
    .word byte_8614344
    .word 0x8
    .word byte_8614364
    .word 0x8
    .word byte_8614384
    .word 0x8
    .word byte_86143A4
    .word 0x8
    .word byte_8614344
    .word 0x8
    .word byte_8614364
    .word 0x8
    .word byte_8614384
    .word 0x8
    .word byte_86143A4
    .word 0x8
    .word byte_8614344
    .word 0x8
    .word byte_8614364
    .word 0x8
    .word byte_8614384
    .word 0x8
    .word byte_86143A4
    .word 0x8
    .word byte_86143C4
    .word 0x8
    .word byte_86143E4
    .word 0x8
    .word byte_8614404
    .word 0x8
    .word byte_8614424
    .word 0x8
    .word byte_86143C4
    .word 0x8
    .word byte_86143E4
    .word 0x8
    .word byte_8614404
    .word 0x8
    .word byte_8614424
    .word 0x8
    .word byte_86143C4
    .word 0x8
    .word byte_86143E4
    .word 0x8
    .word byte_8614404
    .word 0x8
    .word byte_8614424
    .word 0x8
    .word byte_86143C4
    .word 0x8
    .word byte_86143E4
    .word 0x8
    .word byte_8614404
    .word 0x8
    .word byte_8614424
    .word 0x8
    .word 0x1
off_8069E10:    .word unk_3001980
    .word 0x20
    .word 0xFFFF0200
    .word byte_85B8244
    .word 0x2A
    .word byte_85B8264
    .word 0x2
    .word byte_85B8244
    .word 0x6
    .word byte_85B8264
    .word 0x2
    .word byte_85B8244
    .word 0x6
    .word byte_85B8264
    .word 0x4
    .word byte_85B8284
    .word 0xA
    .word byte_85B82A4
    .word 0x8
    .word 0x1
off_8069E60:    .word unk_3001A00
    .word 0x20
    .word 0xFFFF0300
    .word byte_85B832C
    .word 0x6
    .word byte_85B834C
    .word 0x6
    .word byte_85B836C
    .word 0x6
    .word byte_85B838C
    .word 0x6
    .word 0x1
off_8069E90:    .word unk_3001A20
    .word 0x20
    .word 0xFFFF0400
    .word byte_85B83B0
    .word 0xA
    .word byte_85B83D0
    .word 0xA
    .word byte_85B83F0
    .word 0xA
    .word byte_85B8410
    .word 0xA
    .word 0x1
off_8069EC0:    .word unk_3001A40
    .word 0x20
    .word 0xFFFF0500
    .word byte_85B8434
    .word 0xA
    .word byte_85B8454
    .word 0xA
    .word byte_85B8474
    .word 0xA
    .word byte_85B8494
    .word 0xA
    .word 0x1
off_8069EF0:    .word unk_3001A60
    .word 0x20
    .word 0xFFFF0600
    .word byte_85B84B8
    .word 0xA
    .word byte_85B84D8
    .word 0xA
    .word byte_85B84F8
    .word 0xA
    .word byte_85B8518
    .word 0xA
    .word 0x1
off_8069F20:    .word unk_3001A80
    .word 0x20
    .word 0xFFFF0700
    .word byte_85B853C
    .word 0xA
    .word byte_85B855C
    .word 0xA
    .word byte_85B857C
    .word 0xA
    .word byte_85B859C
    .word 0xA
    .word 0x1
off_8069F50:    .word unk_3001AA0
    .word 0x20
    .word 0xFFFF0800
    .word byte_85B85C0
    .word 0xA
    .word byte_85B85E0
    .word 0xA
    .word byte_85B8600
    .word 0xA
    .word byte_85B8620
    .word 0xA
    .word 0x1
off_8069F80:    .word unk_3001AC0
    .word 0x20
    .word 0xFFFF0900
    .word byte_85B8644
    .word 0x6
    .word byte_85B8664
    .word 0x6
    .word 0x1
off_8069FA0:    .word unk_3001AE0
    .word 0x20
    .word 0xFFFF0A00
    .word byte_85B8688
    .word 0x6
    .word byte_85B86A8
    .word 0x6
    .word 0x1
off_8069FC0:    .word unk_30019E0
    .word 0x20
    .word 0xFFFF0B00
    .word byte_85B82C8
    .word 0xA
    .word byte_85B82E8
    .word 0xA
    .word byte_85B8308
    .word 0xA
    .word 0x1
.endfunc // sub_80691FE

.func
.thumb_func
sub_8069FE8:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_806A040 // =off_80698DC 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_806A120
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_803037C
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8030AA4
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_802FF4C
    bl loc_8030472
    ldr r0, off_806A044 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_806A048 // =off_806A04C 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_806A1DE
    bl sub_8034FB8
    pop {r4-r7,pc}
off_806A040:    .word off_80698DC
off_806A044:    .word unk_2037800
off_806A048:    .word off_806A04C
off_806A04C:    .word dword_806A058
    .word dword_806A060
    .word dword_806A068
dword_806A058:    .word 0x6C1C6B1C, 0xFFFF201C
dword_806A060:    .word 0x6C1C6B1C, 0xFFFF201C
dword_806A068:    .word 0x6C1C6B1C, 0xFFFF201C
.endfunc // sub_8069FE8

.func
.thumb_func
sub_806A070:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_806A080 // =off_806A084 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
    .byte 0, 0
off_806A080:    .word off_806A084
off_806A084:    .word off_806A090
    .word off_806A0C0
    .word off_806A0F0
off_806A090:    .word off_8069928
    .word dword_8069AF0
    .word off_8069E10
    .word off_8069E60
    .word off_8069E90
    .word off_8069EC0
    .word off_8069EF0
    .word off_8069F20
    .word off_8069F50
    .word off_8069F80
    .word off_8069FA0
    .word 0xFFFFFFFF
off_806A0C0:    .word off_8069928
    .word dword_8069AF0
    .word off_8069E10
    .word off_8069E60
    .word off_8069E90
    .word off_8069EC0
    .word off_8069EF0
    .word off_8069F20
    .word off_8069F50
    .word off_8069F80
    .word off_8069FA0
    .word 0xFFFFFFFF
off_806A0F0:    .word off_8069928
    .word dword_8069AF0
    .word off_8069E10
    .word off_8069E60
    .word off_8069E90
    .word off_8069EC0
    .word off_8069EF0
    .word off_8069F20
    .word off_8069F50
    .word off_8069F80
    .word off_8069FA0
    .word 0xFFFFFFFF
.endfunc // sub_806A070

.func
.thumb_func
sub_806A120:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_806A154 // =off_806A158 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_806A188 // =off_806A18C 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_806A154:    .word off_806A158
off_806A158:    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
off_806A188:    .word off_806A18C
off_806A18C:    .word off_806A198
    .word off_806A198
    .word off_806A198
off_806A198:    .word off_8613608
    .word 0x6008020
    .word dword_8613AAC
    .word 0x1800
    .word 0x0
    .word 0x0
    .word 0x0
.endfunc // sub_806A120

.func
.thumb_func
sub_806A1B4:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_806A1C8 // =off_806A1CC 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_806A1C8:    .word off_806A1CC
off_806A1CC:    .word locret_806A1D8+1
    .word locret_806A1DA+1
    .word locret_806A1DC+1
.endfunc // sub_806A1B4

locret_806A1D8:
    mov pc, lr
locret_806A1DA:
    mov pc, lr
locret_806A1DC:
    mov pc, lr
.func
.thumb_func
sub_806A1DE:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_806A1F4 // =off_806A1F8 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
    .balign 4, 0x00
off_806A1F4:    .word off_806A1F8
off_806A1F8:    .word dword_806A204
    .word dword_806A21C
    .word dword_806A234
dword_806A204:    .word 0x305, 0xFFD60000, 0xFF4A0000, 0xFFF40000, 0x1D, 0xFF
dword_806A21C:    .word 0x305, 0x1820000, 0xE0000, 0x0
    .word 0x1E, 0xFF
dword_806A234:    .word 0x305, 0x1C20000, 0xE0000, 0x0
    .word 0x1F, 0x5, 0x1D40000, 0xFFCE0000, 0xFFC00000, 0x2E, 0xFF
off_806A260:    .word dword_806A2C4
    .word dword_806A3C4
    .word dword_806A460
off_806A26C:    .word unk_806A35A
    .word unk_806A449
    .word unk_806A54A
off_806A278:    .word off_806A5C0
    .word off_806A650
    .word off_806A690
off_806A284:    .word dword_806A290
    .word dword_806A2A0
    .word byte_806A2B0
dword_806A290:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_806A2A0:    .word 0xFFFFFF00, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
byte_806A2B0:    .byte 0x0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806A2C0:    .byte 0xA, 0xA, 0xA, 0x0
dword_806A2C4:    .word 0xA2D30011
    .word 0xFF1F0806
    .word 0xE00116F7
    .word 0x290806A2
    .word 0x2011EBC
    .word unk_8050202
    .word 0x16F7FF1F
    .word 0x16F2FF1F
    .word 0xF07F4002
    .word 0x10806A2
    .word byte_806A359
    .word 0xBE1FF03
    .word unk_806A33D
    .word 0x2138012F
    .word 0x3D0804CD
    .word 0x804CD
    .word 0x5000000
    .word 0x1E0BE0FF
    .word 0x160806A3
    .word 0x6A31E00
    .word 0xFBFF1F08
    .word 0xA322010B
    .word 0xFF200806
    .word 0xC1250BFB
    .word 0x808FD
    .word 0x29000000
    .word 0x2011EA8
    .word locret_8030102
    .word 0x16F2FF1F
    .word 0x6A35901
    .byte  8
unk_806A33D:    .byte 0x16
    .byte  0
    .byte 0x4C 
    .word 0x1F0806A3
    .word 0x10BFBFF
    .word off_806A350
    .word 0xBFBFF20
off_806A350:    .word debug_8FE3525
    .word 0x8
    .byte  0
byte_806A359:    .byte 0x0
unk_806A35A:    .byte  5
    .byte 0xFF
    .word 0xA3730BDF
    .word 0xA8290806
    .word 0x2011E
    .word 0x20000000
    .word 0x1F16F2FF
    .word 0x216F2FF
    .word 0xA37F7F40
    .word 0x88010806
    .word 0x250806A3
    .word sub_808FE74+1
    .word 0x0
dword_806A388:    .word 0x944F4002
    .word 0x10806A3
    .word byte_806A3C2
    .word 0xA0464602
    .word 0x10806A3
    .word byte_806A3C2
    .word 0xA2DFF05
    .word byte_806A3C2
    .word 0xA2EFF03
    .word byte_806A3C2
    .word 0xA2EFF1F
    .word 0x8EA8826
    .word 0x8
    .word 0xA3C20100
    .byte  6
    .byte  8
byte_806A3C2:    .byte 0x0, 0x0
dword_806A3C4:    .word 0xA3D30011
    .word 0xFF1F0806
    .word 0xE00116F7
    .word 0x290806A3
    .word 0x2011EBC
    .word loc_8030202
    .word 0x16F7FF1F
    .word 0xEC7F4002
    .word 0x10806A3
    .word byte_806A448
    .word 0xBE2FF03
    .word dword_806A42C
    .word 0x2138012F
    .word 0x3D0804CD
    .word 0x804CD
    .word 0x5000000
    .word 0x1A0BE0FF
    .word 0x160806A4
    .word 0x6A41A00
    .word 0xFBFF1F08
    .word 0xA41E010B
    .word 0xFF200806
    .word 0xC1250BFB
    .word 0x808FD
    .word 0x1000000
    .word byte_806A448
dword_806A42C:    .word 0xA43B0016
    .word 0xFF1F0806
    .word 0x3F010BFB
    .word 0x200806A4
    .word 0x250BFBFF
    .word sub_808FE34+1
    .word 0x0
byte_806A448:    .byte 0x0
unk_806A449:    .byte  2
    .byte 0x40 
    .byte 0x7F 
    .word unk_806A455
    .word 0x6A45E01
    .byte  8
unk_806A455:    .byte 0x25 
    .byte 0x75 
    .byte 0xFE
    .word 0x808
    .word 0x0
dword_806A460:    .word 0xA46F0011
    .word 0xFF1F0806
    .word 0x7C0116F6
    .word 0x290806A4
    .word 0x2011EB8
    .word loc_8030202
    .word 0x16F6FF1F
    .word 0x887F4002
    .word 0x10806A4
    .word 0x806A4E4
    .word 0xBE3FF03
    .word dword_806A4C8
    .word 0x2138012F
    .word 0x3D0804CD
    .word 0x804CD
    .word 0x5000000
    .word 0xB60BE0FF
    .word 0x160806A4
    .word 0x6A4B600
    .word 0xFBFF1F08
    .word 0xA4BA010B
    .word 0xFF200806
    .word 0xC1250BFB
    .word 0x808FD
    .word 0x1000000
    .word dword_806A4E4
dword_806A4C8:    .word 0xA4D70016
    .word 0xFF1F0806
    .word 0xDB010BFB
    .word 0x200806A4
    .word 0x250BFBFF
    .word sub_808FE34+1
    .word 0x0
dword_806A4E4:    .word 0xF04F4002
    .word 0x10806A4
    .word dword_806A524
    .word 0xFC464602
    .word 0x10806A4
    .word dword_806A524
    .word 0xA31FF05
    .word dword_806A524
    .word 0xA32FF03
    .word dword_806A524
    .word 0xA32FF1F
    .word 0x2BFF0C1E
    .word 0x60266304
    .word 0x808EB
    .word 0x1000000
    .word dword_806A524
dword_806A524:    .word 0x11D7FF05
    .word byte_806A549
    .word 0x11D8FF03
    .word byte_806A549
    .word 0x11D8FF1F
    .word 0x26FF0C1E
    .word unk_8099CEC
    .word 0x3A
    .word 0x6A54901
    .byte  8
byte_806A549:    .byte 0x0
unk_806A54A:    .byte  2
    .byte 0x40 
    .word 0x6A5567F
    .word 0xA55F0108
    .word 0x75250806
    .word 0x808FE
    .word 0x2000000
    .word 0xA56B4F40
    .word 0xA0010806
    .word 0x20806A5
    .word 0xA5774646
    .word 0xA0010806
    .word 0xD0806A5
    .word 0xA5A00010
    .word 0xFF050806
    .word 0xA5A00A2F
    .word 0xFF030806
    .word 0xA5A00A30
    .word 0xFF1F0806
    .word 0xEC260A30
    .word 0x808EA
    .word 0x1000000
    .word dword_806A5A0
dword_806A5A0:    .word 0x11D8FF03
    .word 0x806A5BE
    .word 0x11D7FF05
    .word 0x806A5BE
    .word 0x990B826
    .word 0xFF00F308
    .word 0xA5BE0101
    .word 0x806
off_806A5C0:    .word dword_806A5DC
    .word unk_806A5F7
    .word unk_806A621
    .word dword_806A62C
    .word unk_806A637
    .word unk_806A642
    .word 0xFF
dword_806A5DC:    .word 0x3B3C1708
    .word 0xA5E74646
    .word 0x18030806
    .word 0x1400
    .word 0xFF74
    .word 0xCC360316
    .byte 0xF6
    .byte  9
    .byte  8
unk_806A5F7:    .byte  8
    .word 0xDB044417
    .word 0x6A62011
    .word 0x11D20408
    .word unk_806A609
    .byte  3
unk_806A609:    .byte  4
    .byte 0x63 
    .byte  1
    .word byte_806A620
    .word 0xD0140A4C
    .word 0xFFE2FF
    .word 0x36031600
    .word byte_809F6CC
byte_806A620:    .byte 0x3
unk_806A621:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1540291C
    .word 0x3154045
dword_806A62C:    .word 0x1C022508
    .word 0x45154129
    .byte 0x41 
    .byte 0x15
    .byte  3
unk_806A637:    .byte  8
    .word 0x291C0225
    .word 0x42451542
    .byte 0x15
    .byte  3
unk_806A642:    .byte  8
    .byte 0x25 
    .word 0x43291C02
    .word 0x15434515
    .word 0x3
off_806A650:    .word byte_806A664
    .word byte_806A66F
    .word byte_806A67A
    .word byte_806A685
    .word 0xFF
byte_806A664:    .byte 0x8, 0x25, 0x2, 0x1C, 0x29, 0x48, 0x15, 0x45, 0x48, 0x15
    .byte 0x3
byte_806A66F:    .byte 0x8, 0x25, 0x2, 0x1C, 0x29, 0x49, 0x15, 0x45, 0x49, 0x15
    .byte 0x3
byte_806A67A:    .byte 0x8, 0x25, 0x2, 0x1C, 0x29, 0x4A, 0x15, 0x45, 0x4A, 0x15
    .byte 0x3
byte_806A685:    .byte 0x8, 0x25, 0x2, 0x1C, 0x29, 0x4B, 0x15, 0x45, 0x4B, 0x15
    .byte 0x3
off_806A690:    .word dword_806A6AC
    .word unk_806A6D6
    .word unk_806A6F9
    .word dword_806A704
    .word unk_806A70F
    .word unk_806A71A
    .word 0xFF
dword_806A6AC:    .word 0x4441708
    .word 0xA6D511DC
    .word 0xDB040806
    .word 0x6A6BE11
    .word 0x63040308
    .word 0x6A6D501
    .word 0x140A4C08
    .word 0xA0094
    .word 0x5160000
    .word 0x9F6CC36
    .byte  8
    .byte  3
unk_806A6D6:    .byte  8
    .byte 0x17
    .word 0x46463B56
    .word unk_806A6E1
    .byte  3
unk_806A6E1:    .byte  4
    .byte 0x32 
    .byte 0xA
    .word byte_806A6F8
    .word 0x18140E13
dword_806A6EC:    .word 0xC02
    .word 0x36051600
    .word byte_809F6CC
byte_806A6F8:    .byte 0x3
unk_806A6F9:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1550291C
    .word 0x3155045
dword_806A704:    .word 0x1C022508
    .word 0x45155129
    .byte 0x51 
    .byte 0x15
    .byte  3
unk_806A70F:    .byte  8
    .word 0x291C0225
    .byte 0x52 
    .byte 0x15
    .byte 0x45 
    .byte 0x52 
    .byte 0x15
    .byte  3
unk_806A71A:    .byte  8
    .byte 0x25 
    .byte  2
    .byte 0x1C
    .byte 0x29 
    .byte 0x53 
    .byte 0x15
    .byte 0x45 
    .byte 0x53 
    .byte 0x15
    .word 0x3
    .word dword_806A734
    .word dword_806A758
    .word 0xFF
dword_806A734:    .word 0x17271F08
    .word 0x1B81437
    .word 0xC
    .word unk_83F0116
    .word 0x15111601
    .word 0x16061001
    .word 0x2083C29
    .word 0x3603083F
    .word byte_809F6CC
dword_806A758:    .word 0x17271F08
    .word 0x2181456
    .word 0xC
    .word byte_83F0516
    .word 0xF6CC3601
    .word 0x809
    .word dword_806A77C
    .word unk_806A792
    .word 0xFF
dword_806A77C:    .word 0x17271F08
    .word 0x1E81437
    .word 0xC
    .word byte_83F2916
    .word 0xF6CC3601
    .byte  9
    .byte  8
unk_806A792:    .byte  8
    .byte 0x1F
    .byte 0x27 
    .byte 0x17
    .byte 0x56 
    .byte 0x14
    .byte 0x18
    .byte  2
    .byte 0xC
    .byte  0
    .byte  0
    .byte  0
    .byte 0x16
    .byte  5
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte 0x16
    .word 0x2083C19
    .word 0x303083F
off_806A7AC:    .word off_806A7C0
    .word off_806A7D0
    .word off_806A7E0
    .word off_806A7F0
    .word off_806A800
off_806A7C0:    .word LCDControl
    .word 0, 0
    .byte 0, 0, 0, 0
off_806A7D0:    .word LCDControl
    .word 0, 0
    .byte 0, 0, 0, 0
off_806A7E0:    .word LCDControl
    .word 0, 0
    .byte 0, 0, 0, 0
off_806A7F0:    .word LCDControl
    .word 0, 0
    .byte 0, 0, 0, 0
off_806A800:    .word LCDControl
    .word 0, 0
    .byte 0, 0, 0, 0
off_806A810:    .word word_3001960
dword_806A814:    .word 0x20
    .word 0xFFFF0000
    .word byte_8614D60
    .word 0x20
    .word byte_8614D80
    .word 0x1C
    .word byte_8614DA0
    .word 0xE
    .word byte_8614DC0
    .word 0x1C
    .word byte_8614DA0
    .word 0x20
    .word byte_8614DC0
    .word 0x20
    .word byte_8614DA0
    .word 0x1C
    .word byte_8614D80
    .word 0xE
    .word byte_8614D60
    .word 0x1C
    .word byte_8614D80
    .word 0x20
    .word 0x1
off_806A870:    .word unk_3001980
    .word 0x20
    .word 0xFFFF0100
    .word byte_85D053C
    .word 0x28
    .word byte_85D055C
    .word 0x14
    .word byte_85D057C
    .word 0x28
    .word byte_85D059C
    .word 0x14
    .word 0x1
off_806A8A0:    .word unk_30019A0
    .word 0x20
    .word 0xFFFF0200
    .word byte_85D05C0
    .word 0x14
    .word byte_85D05E0
    .word 0xE
    .word byte_85D0600
    .word 0x14
    .word byte_85D05E0
    .word 0xE
    .word 0x1
off_806A8D0:    .word unk_30019E0
    .word 0x20
    .word 0xFFFF0300
    .word byte_85D0624
    .word 0x28
    .word byte_85D0644
    .word 0x10
    .word byte_85D0664
    .word 0x28
    .word byte_85D0644
    .word 0x10
    .word 0x1
off_806A900:    .word unk_3001A60
    .word 0x20
    .word 0xFFFF0400
    .word byte_85D0688
    .word 0x28
    .word byte_85D06A8
    .word 0xC
    .word byte_85D06C8
    .word 0x8
    .word byte_85D06E8
    .word 0x28
    .word byte_85D06C8
    .word 0xC
    .word byte_85D06A8
    .word 0x8
    .word 0x1
off_806A940:    .word unk_3001A80
    .word 0x20
    .word 0xFFFF0500
    .word byte_85D070C
    .word 0x28
    .word byte_85D072C
    .word 0xC
    .word byte_85D074C
    .word 0x8
    .word byte_85D076C
    .word 0x28
    .word byte_85D074C
    .word 0xC
    .word byte_85D072C
    .word 0x8
    .word 0x1
off_806A980:    .word unk_3001AA0
    .word 0x20
    .word 0xFFFF0600
    .word byte_85D0790
    .word 0x28
    .word byte_85D07B0
    .word 0xC
    .word byte_85D07D0
    .word 0x8
    .word byte_85D07F0
    .word 0x28
    .word byte_85D07D0
    .word 0xC
    .word byte_85D07B0
    .word 0x8
    .word 0x1
dword_806A9C0:    .word 0x3001AE0
    .word 0x20
    .word 0xFFFF0700
    .word byte_85D0814
    .word 0x30
    .word byte_85D0834
    .word 0xC
    .word byte_85D0854
    .word 0xA
    .word byte_85D0874
    .word 0x8
    .word byte_85D0854
    .word 0xA
    .word byte_85D0834
    .word 0xC
    .word 0x1
.endfunc // sub_806A1DE

.func
.thumb_func
sub_806AA00:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_806AA58 // =off_806A7AC 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_806AB94
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_803037C
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8030AA4
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_802FF4C
    bl loc_8030472
    ldr r0, off_806AA5C // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_806AA60 // =off_806AA64 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_806AD00
    bl sub_8034FB8
    pop {r4-r7,pc}
off_806AA58:    .word off_806A7AC
off_806AA5C:    .word unk_2037800
off_806AA60:    .word off_806AA64
off_806AA64:    .word dword_806AA78
    .word unk_806AA82
    .word dword_806AA8C
    .word dword_806AA94
    .word unk_806AA9E
dword_806AA78:    .word 0x451C2F1C
    .word 0x491C461C
    .byte 0xFF
    .byte 0xFF
unk_806AA82:    .byte 0x1C
    .byte 0x56 
    .word 0x521C631C
    .word 0xFFFF5518
dword_806AA8C:    .word 0x6B1C201C
    .word 0xFFFF6C1C
dword_806AA94:    .word 0xB1C0C1C
    .word 0x4E1C0E1C
    .byte 0xFF
    .byte 0xFF
unk_806AA9E:    .byte 0x1C
    .byte 0x83
    .word 0x941C841C
    .word 0x8D1C971C
    .byte 0xFF, 0xFF
.endfunc // sub_806AA00

.func
.thumb_func
sub_806AAAA:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_806AAB8 // =off_806AABC 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_806AAB8:    .word off_806AABC
off_806AABC:    .word off_806AAD0
    .word off_806AAFC
    .word off_806AB20
    .word off_806AB54
    .word off_806AB70
off_806AAD0:    .word off_8067754
    .word off_8067914
    .word off_8067944
    .word off_80679A4
    .word off_80679D4
    .word off_8067A14
    .word off_8067A44
    .word off_8067A6C
    .word off_8067A9C
    .word off_8067ACC
    .word 0xFFFFFFFF
off_806AAFC:    .word off_8068D18
    .word dword_8068E48
    .word off_8068E88
    .word off_8068ED0
    .word off_8068EF0
    .word off_8068F30
    .word dword_8068FA0
    .word off_8069010
    .word 0xFFFFFFFF
off_806AB20:    .word off_8069928
    .word dword_8069AF0
    .word off_8069E10
    .word off_8069E60
    .word off_8069E90
    .word off_8069EC0
    .word off_8069EF0
    .word off_8069F20
    .word off_8069F50
    .word off_8069F80
    .word off_8069FA0
    .word off_8069FC0
    .word 0xFFFFFFFF
off_806AB54:    .word off_8066048
    .word byte_80662B8
    .word byte_80662E8
    .word byte_8066328
    .word byte_8066368
    .word byte_80663A8
    .word 0xFFFFFFFF
off_806AB70:    .word off_806A810
    .word off_806A870
    .word off_806A8A0
    .word off_806A8D0
    .word off_806A900
    .word off_806A940
    .word off_806A980
    .word dword_806A9C0
    .word 0xFFFFFFFF
.endfunc // sub_806AAAA

.func
.thumb_func
sub_806AB94:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_806ABC8 // =off_806ABCC 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_806AC1C // =off_806AC20 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .balign 4, 0x00
off_806ABC8:    .word off_806ABCC
off_806ABCC:    .word locret_8001AB4+1
    .word sub_8001A6A+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019FE+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_8001A22+1
    .word unk_3005CD9
    .word 0x800
off_806AC1C:    .word off_806AC20
off_806AC20:    .word off_806AC34
    .word off_806AC50
    .word off_806AC6C
    .word off_806AC88
    .word off_806ACA4
off_806AC34:    .word off_86116C8
    .word 0x6008020
    .word byte_861184C
    .word 0x1800
    .word unk_86119C4
    .word word_3001960
    .word 0x20
off_806AC50:    .word off_8612A28
    .word 0x6008020
    .word dword_8612CF0
    .word 0x1800
    .word dword_8612E84
    .word word_3001960
    .word 0x20
off_806AC6C:    .word off_8613608
    .word 0x6008020
    .word dword_8613AAC
    .word 0x1800
    .word 0x0
    .word 0x0
    .word 0x0
off_806AC88:    .word off_8610B04
    .word 0x6008020
    .word byte_8610C18
    .word 0x1800
    .word unk_8610D64
    .word word_3001960
    .word 0x20
off_806ACA4:    .word off_8614444
    .word 0x6008020
    .word dword_8614A0C
    .word 0x1800
    .word unk_8614BB8
    .word word_3001960
    .word 0x20
.endfunc // sub_806AB94

.func
.thumb_func
sub_806ACC0:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_806ACD4 // =off_806ACD8 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_806ACD4:    .word off_806ACD8
off_806ACD8:    .word sub_806ACEC+1
    .word sub_806ACF0+1
    .word sub_806ACF4+1
    .word sub_806ACF8+1
    .word sub_806ACFC+1
.endfunc // sub_806ACC0

.func
.thumb_func
sub_806ACEC:
    push {lr}
    pop {pc}
.endfunc // sub_806ACEC

.func
.thumb_func
sub_806ACF0:
    push {lr}
    pop {pc}
.endfunc // sub_806ACF0

.func
.thumb_func
sub_806ACF4:
    push {lr}
    pop {pc}
.endfunc // sub_806ACF4

.func
.thumb_func
sub_806ACF8:
    push {lr}
    pop {pc}
.endfunc // sub_806ACF8

.func
.thumb_func
sub_806ACFC:
    push {lr}
    pop {pc}
.endfunc // sub_806ACFC

.func
.thumb_func
sub_806AD00:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_806AD14 // =off_806AD18 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_806AD14:    .word off_806AD18
off_806AD18:    .word dword_806AD2C
    .word dword_806AD44
    .word dword_806ADAC
    .word dword_806ADD8
    .word dword_806AE04
dword_806AD2C:    .word 0x305, 0x1040000, 0xFEA00000, 0x80000, 0x2D, 0xFF
dword_806AD44:    .word 0x5, 0xB20000, 0xFDFE0000, 0xFFC00000, 0x30, 0x305, 0xFFE20000
    .word 0x12C0000, 0x0
    .word 0x2E, 0x305, 0x220000, 0xC0000, 0x0
    .word 0x2F, 0x305, 0xFF820000, 0xFF6E0000, 0x0
    .word 0x30
    .word 0x305, 0x20000, 0xFE4E0000, 0x0
    .word 0x31, 0xFF
dword_806ADAC:    .word 0x5, 0xFFE40000, 0xFE5A0000, 0xFFC00000, 0x31, 0x305
    .word 0xFFB00000, 0xFE640000, 0xFFF40000, 0x32, 0xFF
dword_806ADD8:    .word 0x5, 0x1120000, 0xFE5E0000, 0xFFC00000, 0x32, 0x305
    .word 0xF00000, 0xFE9A0000, 0x0
    .word 0x33, 0xFF
dword_806AE04:    .word 0xFF
off_806AE08:    .word dword_806AEB0
    .word dword_806AF3C
    .word dword_806AFF0
    .word byte_806B10C
    .word dword_806B268
off_806AE1C:    .word dword_806AED0
    .word dword_806AF98+2
    .word unk_806B0B5
    .word unk_806B1E3
    .word dword_806B2AC
off_806AE30:    .word off_806B310
    .word off_806B6B8
    .word off_806B83C
    .word off_806B940
    .word dword_806BD14
off_806AE44:    .word dword_806AE58
    .word dword_806AE68
    .word dword_806AE78
    .word dword_806AE88
    .word byte_806AE98
dword_806AE58:    .word 0xFFFF0100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_806AE68:    .word 0x3020100, 0xFFFFFF04, 0xFFFFFFFF, 0xFFFFFFFF
dword_806AE78:    .word 0xFFFF0100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
dword_806AE88:    .word 0xFFFF0100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
byte_806AE98:    .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_806AEA8:    .byte 0x20, 0x20, 0x20, 0x20, 0x20, 0x0, 0x0, 0x0
dword_806AEB0:    .word 0xFC20304
    .word unk_806AEC6
    .word byte_86DF925
    .word 0x8
    .word 0xAECF0100
    .byte  6
    .byte  8
unk_806AEC6:    .byte 0x25 
    .byte 0x71 
    .word 0x8086E
    .word 0x0
dword_806AED0:    .word 0xFC20304
    .word unk_806AEE1
    .word byte_86EA925
    .word 0x8
    .byte  0
unk_806AEE1:    .byte  2
    .byte 0x60 
    .byte 0x6F 
    .word unk_806AEED
    .word 0x6AF3901
    .byte  8
unk_806AEED:    .byte  2
    .byte 0x63 
    .byte 0x63 
    .word unk_806AEF9
    .word 0x6AF3901
    .byte  8
unk_806AEF9:    .byte  5
    .byte 0xFF
    .byte 0x29 
    .word 0x6AF1B0E
    .word 0x2AFF0308
    .word 0x6AF1B0E
    .word 0x2AFF1F08
    .word 0x50E0260E
    .word 0x809
    .word 0x39010000
    .word 0x50806AF
    .word 0x390E67FF
    .word 0x30806AF
    .word 0x390E2CFF
    .word 0x260806AF
    .word unk_8098CA2
    .word 0x3
    .word 0x6AF3901
    .word 0x8
dword_806AF3C:    .word 0xAF500016
    .word 0xD5250806
    .word 0x808CA
    .word 0x1000000
    .word unk_806AF59
    .word unk_8CA6925
    .word 0x8
    .byte  0
unk_806AF59:    .byte  2
    .byte 0x60 
    .byte 0x6F 
    .word unk_806AF65
    .word 0x6AF9901
    .byte  8
unk_806AF65:    .byte  2
    .byte 0x63 
    .byte 0x63 
    .word unk_806AF71
    .word 0x6AF9901
    .byte  8
unk_806AF71:    .byte  5
    .byte 0xFF
    .byte 0x31 
    .word 0x6AF990E
    .word 0x32FF0308
    .word 0x6AF990E
    .word 0x32FF1F08
    .word 0xFF0C1E0E
    .word 0x2663042B
    .word unk_8095434
    .word 0x0
dword_806AF94:    .word 0x6AF9901
dword_806AF98:    .word 0x60020008
    .word 0x6AFA66F
    .word 0xAFEC0108
    .word 0x63020806
    .word 0x6AFB263
    .word 0xAFEC0108
    .word 0x100D0806
    .word 0x6AFDB00
    .word 0x2FFF0508
    .word 0x6AFDB0E
    .word 0x30FF0308
    .word 0x6AFEC0E
    .word 0x30FF1F08
    .word 0x53C8260E
    .word 0x809
    .word 0xEC010000
    .word 0x30806AF
    .word 0xEC0FC5FF
    .word 0x250806AF
    .word sub_808CB0C+1
    .word 0x0
    .word 0x0
dword_806AFF0:    .word 0xAFFF0011
    .word 0xFF1F0806
    .word 0xC0116F5
    .word 0x290806B0
    .word 0x2011EB4
    .word loc_8030202
    .word 0x16F5FF1F
    .word 0x187F6002
    .word 0x10806B0
    .word dword_806B074
    .word 0xFD2FF03
    .word dword_806B058
    .word 0x2138012F
    .word 0x3D0804CD
    .word 0x804CD
    .word 0x5000000
    .word 0x460BE0FF
    .word 0x160806B0
    .word 0x6B04600
    .word 0xFBFF1F08
    .word 0xB04A010B
    .word 0xFF200806
    .word 0xC1250BFB
    .word 0x808FD
    .word 0x1000000
    .word dword_806B074
dword_806B058:    .word 0xB0670016
    .word 0xFF1F0806
    .word 0x6B010BFB
    .word 0x200806B0
    .word 0x250BFBFF
    .word sub_808FE34+1
    .word 0x0
dword_806B074:    .word 0x806F6002
    .word 0x10806B0
    .word byte_806B0B4
    .word 0x8C636302
    .word 0x10806B0
    .word byte_806B0B4
    .word 0xE39FF05
    .word byte_806B0B4
    .word 0xE3AFF03
    .word byte_806B0B4
    .word 0xE3AFF1F
    .word 0x2BFF0C1E
    .word 0x48266304
    .word 0x80959
    .word 0x1000000
    .word byte_806B0B4
byte_806B0B4:    .byte 0x0
unk_806B0B5:    .byte  2
    .byte 0x60 
    .byte 0x7F 
    .word unk_806B0C1
    .word 0x6B0CA01
    .byte  8
unk_806B0C1:    .byte 0x25 
    .byte 0x75 
    .byte 0xFE
    .word 0x808
    .word 0x60020000
    .word 0x6B0D66F
    .word 0xB10B0108
    .word 0x63020806
    .word 0x6B0E263
    .word 0xB10B0108
    .word 0x100D0806
    .word 0x6B10B00
    .word 0x37FF0508
    .word 0x6B10B0E
    .word 0x38FF0308
    .word 0x6B10B0E
    .word 0x38FF1F08
    .word 0x58E0260E
    .word 0x809
    .word 0xB010000
    .word 0x806B1
byte_806B10C:    .byte 0x25, 0x3D, 0x3C, 0x8, 0x8
    .byte 0x0
    .balign 4, 0x00
    .word 0x6F600200
    .word unk_806B121
    .word 0x6B1E201
    .byte  8
unk_806B121:    .byte  2
    .byte 0x63 
    .byte 0x63 
    .word unk_806B12D
    .word 0x6B1E201
    .byte  8
unk_806B12D:    .byte  5
    .byte 0xFF
    .byte 0x41 
    .word 0x6B1550E
    .word 0x42FF0308
    .word 0x6B1E20E
    .word 0x42FF1F08
    .word 0xFF0C1E0E
    .word 0x2663042B
    .word unk_8095CD8
    .word 0x0
dword_806B150:    .word 0x6B1E201
    .word 0xDFFF0508
    .word 0x6B1AF0F
    .word 0xA6010B08
    .word 0x50806B1
    .word 0x7C0FE0FF
    .word 0x1E0806B1
    .word 0x4826FF0C
    .word 0x8097A
    .word 0x1000000
    .word unk_806B1AF
    .word 0xFE1FF05
    .word unk_806B195
    .word 0x26FF0C1E
    .word unk_8097A48
    .word 0x1
    .word 0x6B1AF01
    .byte  8
unk_806B195:    .byte 0x1E
    .byte 0xC
    .byte 0xFF
    .word 0x97A4826
    .word 0x208
    .word 0xB1AF0100
    .word 0x35250806
    .word 0x8083F
    .byte  0
    .byte  0
    .byte  0
unk_806B1AF:    .byte 0x2C 
    .word dword_8140BAC
    .word 0x140BF02C
    .word 0x3D7D2508
    .word 0x808
    .word 0x160000
    .word byte_806B1DE
    .word 0x4E9FF05
    .word byte_806B1E2
    .word byte_83DC525
    .word 0x8
    .word 0xB1E20100
    .byte  6
    .byte  8
byte_806B1DE:    .byte 0x20, 0xFF, 0xE9, 0x4
byte_806B1E2:    .byte 0x0
unk_806B1E3:    .byte  2
    .word 0xB1EF6F60
    .word 0x66010806
    .word 0x20806B2
    .word 0xB1FB6363
    .word 0x66010806
    .word 0xD0806B2
    .word 0xB2240010
    .word 0xFF050806
    .word 0xB2240E3F
    .word 0xFF030806
    .word 0xB2240E40
    .word 0xFF1F0806
    .word 0x70260E40
    .word 0x8095C
    .word 0x1000000
    .word byte_806B266
    .word 0xE42FF03
    .word byte_806B266
    .word 0x4EAFF05
    .word unk_806B242
    .word byte_83D0426
    .word 0x8
    .word 0xB2660100
    .byte  6
    .byte  8
unk_806B242:    .byte  3
    .byte 0xFF
    .word 0xB25804E9
    .word 0x6D250806
    .word 0x8083C
    .word 0x1000000
    .word byte_806B266
    .word unk_83DF125
    .word 0x8
    .word 0xB2660100
    .byte  6
    .byte  8
byte_806B266:    .byte 0x0, 0x0
dword_806B268:    .word 0x203092A
    .word 0xB2776F60
    .word 0xAB010806
    .word 0x20806B2
    .word 0xB2836464
    .word 0xAB010806
    .word 0x50806B2
    .word 0xAB0E4BFF
    .word 0x30806B2
    .word 0xAB0E4CFF
    .word 0x1F0806B2
    .word 0x1E0E4CFF
    .word 0x42BFF04
    .word 0x6B5C2663
    .word 0x809
    .word 0xAB010000
    .word 0x806B2
dword_806B2AC:    .word 0xB86F6002
    .word 0x10806B2
    .word byte_806B30F
    .word 0xC4646402
    .word 0x10806B2
    .word byte_806B30F
    .word 0xE47FF05
    .word unk_806B2E6
    .word 0xE48FF03
    .word unk_806B2E6
    .word 0xE48FF1F
    .word 0x968DC26
    .word 0x8
    .word 0xB30F0100
    .byte  6
    .byte  8
unk_806B2E6:    .byte 0xD
    .byte 0x10
    .word 0x6B30F00
    .word 0x49FF0508
    .word 0x6B30F0E
    .word 0x4AFF0308
    .word 0x6B30F0E
    .word 0x4AFF1F08
    .word 0x69F0260E
    .word 0x809
    .word 0xF010000
    .byte 0xB3
    .byte  6
    .byte  8
byte_806B30F:    .byte 0x0
off_806B310:    .word dword_806B334
    .word unk_806B353
    .word unk_806B372
    .word unk_806B391
    .word dword_806B3A4
    .word unk_806B3AF
    .word unk_806B3BA
    .word unk_806B3C5
    .word 0xFF
dword_806B334:    .word 0x520FC205
    .word byte_80806B3
    .word 0x4925271F
    .word 0x148141C
    .word 0x26
    .word 0x10F022E
    .word 0xF6CC361B
    .byte  9
    .byte  8
    .byte  3
unk_806B353:    .byte  5
    .word 0xB3710FC3
    .word 0x1F080806
    .word 0x1C2F2527
    .word 0xC8014814
    .word 0x2E0000FF
    .word 0x1B020F12
    .word 0x9F6CC36
    .byte  8
    .byte  3
unk_806B372:    .byte  5
    .byte 0xC4
    .word 0x6B3900F
    .word 0x271F0808
    .word 0x14180F25
    .word 0xFF6C0142
    .word 0x1B2E0000
    .word 0x361B020F
    .word byte_809F6CC
    .byte  3
unk_806B391:    .byte  8
    .byte 0x17
    .byte 0x3C 
    .word 0xBC140018
    .word 0x20FFC200
    .word 0x36031600
    .word byte_809F6CC
dword_806B3A4:    .word 0x1C022508
    .word 0x45158029
    .byte 0x80
    .byte 0x15
    .byte  3
unk_806B3AF:    .byte  8
    .word 0x291C0225
    .word 0x81451581
    .byte 0x15
    .byte  3
unk_806B3BA:    .byte  8
    .byte 0x25 
    .word 0x82291C02
    .word 0x15824515
    .byte  3
unk_806B3C5:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1583291C
    .word 0x3158345
    .word dword_806B3EC
    .word unk_806B3FF
    .word unk_806B417
    .word unk_806B432
    .word unk_806B451
    .word unk_806B470
    .word 0xFF
dword_806B3EC:    .word 0x17271F08
    .word 0xFE1437
    .byte 0x52 
    .byte  0
    .byte 0x20
    .byte  0
    .byte 0x16
    .byte  1
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
unk_806B3FF:    .byte  8
    .word 0x3C17271F
    .word 0x2A014414
    .word 0x16000000
    .word 0x2101B05
    .word 0x3F40002B
    .byte  8
    .byte  1
    .byte  3
unk_806B417:    .byte  9
    .word 0x4925271F
    .word 0x148141C
    .word 0x26
    .byte 0x2E 
    .byte  2
    .byte 0xF
    .byte  1
    .byte 0x1B
    .byte 0x3F 
    .byte  8
    .byte  1
    .byte  8
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
unk_806B432:    .byte  5
    .byte 0xC3
    .byte 0xF
    .byte 0x50 
    .byte 0xB4
    .byte  6
    .byte  8
    .byte  8
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0x2F 
    .byte 0x1C
    .byte 0x14
    .byte 0x48 
    .byte  1
    .hword 0xFFC8
    .byte  0
    .byte  0
    .byte 0x2E 
    .byte 0x12
    .byte 0xF
    .byte  2
    .byte 0x1B
    .byte 0x36 
    .word byte_809F6CC
    .byte  3
unk_806B451:    .byte  5
    .byte 0xC4
    .byte 0xF
    .word byte_806B46F
    .byte  8
    .byte 0x1F
    .byte 0x27 
    .byte 0x25 
    .byte 0xF
    .byte 0x18
    .byte 0x14
    .byte 0x42 
    .byte  1
    .byte 0x6C 
    .byte 0xFF
    .byte  0
    .byte  0
    .byte 0x2E 
    .byte 0x1B
    .byte 0xF
    .byte  2
    .byte 0x1B
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
byte_806B46F:    .byte 0x3
unk_806B470:    .byte  8
    .byte 0x17
    .byte 0x3C 
    .byte 0x18
    .byte  0
    .byte 0x14
    .byte 0xBC
    .byte  0
    .byte 0xC2
    .byte 0xFF
    .byte 0x20
    .byte  0
    .byte 0x16
    .byte  3
    .byte 0x36 
    .byte 0xCC
    .byte 0xF6
    .byte  9
    .byte  8
    .byte  0
    .word byte_806B4A0
    .word byte_806B4B3
    .word dword_806B4C8+3
    .word dword_806B4E4+2
    .word dword_806B504+1
    .word dword_806B524
    .word 0xFF
byte_806B4A0:    .byte 0x8, 0x1F, 0x27, 0x17, 0x37, 0x14, 0xFE, 0x0, 0xF2, 0xFF
    .byte 0x20, 0x0, 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8
byte_806B4B3:    .byte 0x8
dword_806B4B4:    .word 0x3C17271F
    .word 0xC8014414
    .word 0x160000FF
    .word 0x2101B05
    .word 0x3F40002B
dword_806B4C8:    .word 0x9030108
    .word 0x2F25271F
    .word 0x148141C
    .word 0xFFC8
    .word 0x20F122E
    .word 0x1083F1B
    .word 0xF6CC3608
dword_806B4E4:    .word 0xC2050809
    .word 0x6B5040F
    .word 0x271F0808
    .word 0x141C4925
    .word 0x260148
    .word 0x22E0000
    .word 0x361B010F
    .word byte_809F6CC
dword_806B504:    .word 0xFC40503
    .word byte_806B523
    .word 0x25271F08
    .word 0x4214180F
    .word 0xFF6C01
    .word 0xF1B2E00
    .word 0xCC361B02
    .byte 0xF6
    .byte  9
    .byte  8
byte_806B523:    .byte 0x3
dword_806B524:    .word 0x183C1708
    .word 0xBC1400
    .word 0x20FFC2
    .word 0xCC360316
    .word 0x809F6
    .word dword_806B554
    .word unk_806B567
    .word unk_806B57F
    .word unk_806B59A
    .word unk_806B5B9
    .word dword_806B5D8
    .word 0xFF
dword_806B554:    .word 0x17271F08
    .word 0xFE1437
    .word 0x20FF92
    .word 0xCC360116
    .byte 0xF6
    .byte  9
    .byte  8
unk_806B567:    .byte  8
    .word 0x3C17271F
    .word 0x68014414
    .word 0x160000FF
    .word 0x2101B05
    .word 0x3F40002B
    .byte  8
    .byte  1
    .byte  3
unk_806B57F:    .byte  9
    .word 0xF25271F
    .word 0x1421418
    .word 0xFF6C
    .word 0x20F1B2E
    .word 0x1083F1B
    .word 0xF6CC3608
    .byte  9
    .byte  8
unk_806B59A:    .byte  5
    .byte 0xC2
    .word 0x6B5B80F
    .word 0x271F0808
    .word 0x141C4925
    .word 0x260148
    .word 0x22E0000
    .word 0x361B010F
    .word byte_809F6CC
    .byte  3
unk_806B5B9:    .byte  5
    .byte 0xC3
    .byte 0xF
    .word byte_806B5D7
    .word 0x25271F08
    .word 0x48141C2F
    .word 0xFFC801
    .word 0xF122E00
    .word 0xCC361B02
    .byte 0xF6
    .byte  9
    .byte  8
byte_806B5D7:    .byte 0x3
dword_806B5D8:    .word 0x183C1708
    .word 0xBC1400
    .word 0x20FFC2
    .word 0xCC360316
    .word 0x809F6
    .word dword_806B604
    .word unk_806B629
    .word unk_806B64E
    .word unk_806B671
    .word dword_806B694
    .word 0xFF
dword_806B604:    .word 0x25271F09
    .word 0x78141C2F
    .word 0xFE2600
    .word 0x3F010F00
    .word 0x28080108
    .word 0x72E00E1
    .word 0x102EC02A
    .word byte_83C0510
    .word 0x3083F02
    .byte  3
unk_806B629:    .byte  9
    .byte 0x1F
    .byte 0x27 
    .word 0x141C2F25
    .word 0xFFE4001A
    .word 0x10F0000
    .word loc_803083E+1
    .word 0x2E00E128
    .word 0x2EC02A08
    .word 0x3C051011
    .word byte_83F0408
    .byte  5
    .byte  3
unk_806B64E:    .byte  9
    .byte 0x1F
    .word 0x1C2F2527
    .word 0xE8FEBA14
    .word 0x3F0000FF
    .word 0x28080508
    .word 0x52E00E1
    .word 0xE2EC02A
    .word byte_83C0510
    .word 0x7083F06
    .byte  3
unk_806B671:    .byte  9
    .byte 0x1F
    .byte 0x27 
    .word 0x141C2F25
    .word 0x64FF5A
    .word byte_83F0000
    .word 0xE1280807
    .word 0x2A072E00
    .word 0x10102EC0
    .word byte_8083C05
    .word 0x309083F
dword_806B694:    .word 0x25271F09
    .word 0xBA141C2F, 0xE6FF, 0x9083F00, 0xE12808, 0xC02A052E
    .word 0x5100E2E, 0x3F0A083C, 0x30B08
off_806B6B8:    .word dword_806B6D4
    .word unk_806B6F6
    .word unk_806B711
    .word dword_806B71C
    .word unk_806B727
    .word unk_806B732
    .word 0xFF
dword_806B6D4:    .word 0x3B551708
    .word 0xB6DE6363
    .word 0x32040806
    .word 0x6B6F50E
    .word 0x14130E08
    .word 0xFDE00078
    .word 0x3160000
    .word 0x9F6CC36
    .byte  8
    .byte  3
unk_806B6F6:    .byte  8
    .byte 0x17
    .word 0x64633B3C
    .word unk_806B701
    .byte  3
unk_806B701:    .byte 0x18
    .byte  0
    .byte 0x14
    .word 0x1F4FFFA
    .word 0x5160000
    .word 0x9F6CC36
    .byte  8
unk_806B711:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1584291C
    .word 0x3158445
dword_806B71C:    .word 0x1C022508
    .word 0x45158529
    .byte 0x85
    .byte 0x15
    .byte  3
unk_806B727:    .byte  8
    .word 0x291C0225
    .word 0x86451586
    .byte 0x15
    .byte  3
unk_806B732:    .byte  8
    .byte 0x25 
    .word 0x87291C02
    .word 0x15874515
    .word 0x3
    .word dword_806B74C
    .word unk_806B762
    .word 0xFF
dword_806B74C:    .word 0x17271F08
    .word 0x781437
    .word 0xFE08
    .word byte_83F2C16
    .word 0xF6CC3601
    .byte  9
    .byte  8
unk_806B762:    .byte  8
    .byte 0x1F
    .word 0x14551727
    .word 0xFDE00078
    .word 0x3160000
    .word 0x3601083F
    .word byte_809F6CC
    .word dword_806B784
    .word unk_806B7AA
    .word 0xFF
dword_806B784:    .word 0x17271F08
    .word 0x781437
    .word 0xFE08
    .word byte_83F2C16
    .word 0x3F071603
    .word 0x17160408
    .word 0x7100715
    .word byte_83C0716
    .word 0xF6CC3605
    .byte  9
    .byte  8
unk_806B7AA:    .byte  8
    .byte 0x1F
    .word 0x14551727
    .word 0xFDE00078
    .word 0x3160000
    .word 0x1601083F
    .word 0x2083C1C
    .word 0x303083F
    .word dword_806B7D0
    .word unk_806B801
    .word 0xFF
dword_806B7D0:    .word 0x35371708
    .word unk_806B829
    .word unk_83F0416
    .word 0x3F2F1601
    .word 0x3F090208
    .word 0x5A140308
    .word 0x1F6FF
    .word 0x3A160800
    .word 0x1604083F
    .word 0x10C02A04
    .word 0x5083C0A
    .word 0x9F6CC36
    .byte  8
unk_806B801:    .byte  9
    .byte 0x3F 
    .byte  8
    .word 0x1C632501
    .word 0x6B82935
    .word off_8010F08
    .word 0x2E010528
    .word 0x2A000F00
    .word 0xC028C0
    .word unk_83C0A10
    .word 0x3083F02
    .word 0x3
    .byte 0x20
unk_806B829:    .byte 0xB5
    .byte 0x32 
    .byte 0xF0
    .word 0x6268FCC0
    .word 0x62EA62A9
    .word 0xF866F034
    .word 0xBD20
off_806B83C:    .word dword_806B858
    .word unk_806B87A
    .word unk_806B88D
    .word dword_806B898
    .word unk_806B8A3
    .word unk_806B8AE
    .word 0xFF
dword_806B858:    .word 0x3B561708
    .word 0xB8626363
    .word 0x3A040806
    .word 0x6B8790E
    .word 0x14130E08
    .word 0xFE30FFA4
    .word 0x3160000
    .word 0x9F6CC36
    .byte  8
    .byte  3
unk_806B87A:    .byte  8
    .byte 0x17
    .word 0x1400183C
    .word 0xFFBCFFBC
    .word 0x5160000
    .word 0x9F6CC36
    .byte  8
unk_806B88D:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x1588291C
    .word 0x3158845
dword_806B898:    .word 0x1C022508
    .word 0x45158929
    .byte 0x89
    .byte 0x15
    .byte  3
unk_806B8A3:    .byte  8
    .word 0x291C0225
    .word 0x8A45158A
    .byte 0x15
    .byte  3
unk_806B8AE:    .byte  8
    .byte 0x25 
    .word 0x8B291C02
    .word 0x158B4515
    .word 0x3
    .word dword_806B8C8
    .word unk_806B8DE
    .word 0xFF
dword_806B8C8:    .word 0x17271F08
    .word 0xFFA41437
    .word 0xFE58
    .word byte_83F2C16
    .word 0xF6CC3601
    .byte  9
    .byte  8
unk_806B8DE:    .byte  8
    .byte 0x1F
    .word 0x14561727
    .word 0xFE30FFA4
    .word 0x3160000
    .word 0x3601083F
    .word byte_809F6CC
    .word dword_806B900
    .word unk_806B926
    .word 0xFF
dword_806B900:    .word 0x17271F08
    .word 0xFFA41437
    .word 0xFE58
    .word byte_83F2C16
    .word 0x3F071603
    .word 0x17160408
    .word 0x7100715
    .word byte_83C0716
    .word 0xF6CC3605
    .byte  9
    .byte  8
unk_806B926:    .byte  8
    .byte 0x1F
    .word 0x14561727
    .word 0xFE30FFA4
    .word 0x3160000
    .word 0x1601083F
    .word 0x2083C1A
    .word 0x303083F
off_806B940:    .word unk_806B9C9
    .word dword_806B9E8
    .word unk_806BA07
    .word dword_806B968
    .word unk_806B98A
    .word unk_806B99D
    .word dword_806B9A8
    .word unk_806B9B3
    .word unk_806B9BE
    .word 0xFF
dword_806B968:    .word 0x3B541708
    .word 0xB9726363
    .word 0x42040806
    .word 0x6B9890E
    .word 0x14130E08
    .word 0xFE9A0130
    .word 0x5160000
    .word 0x9F6CC36
    .byte  8
    .byte  3
unk_806B98A:    .byte  8
    .byte 0x17
    .word 0x1403183C
    .word 0xFE9A0072
    .word 0x1160000
    .word 0x9F6CC36
    .byte  8
unk_806B99D:    .byte  8
    .byte 0x25 
    .byte  2
    .word 0x158C291C
    .word 0x3158C45
dword_806B9A8:    .word 0x1C022508
    .word 0x45158D29
    .byte 0x8D
    .byte 0x15
    .byte  3
unk_806B9B3:    .byte  8
    .word 0x291C0225
    .word 0x8E45158E
    .byte 0x15
    .byte  3
unk_806B9BE:    .byte  8
    .byte 0x25 
    .word 0x8F291C02
    .word 0x158F4515
    .byte  3
unk_806B9C9:    .byte  8
    .byte  4
    .byte 0xDC
    .word 0x6B9E70F
    .word 0x1C4E2508
    .word 0x10F012E
    .word 0x1F41413
    .word 0xFFC0
    .word 0xCC360018
    .word 0x30809F6
dword_806B9E8:    .word 0xFDD0408
    .word byte_806BA06
    .word 0x2E1C4E25
    .word 0x13020F01
    .word 0x40FF7414
    .word 0x180000FF
    .word 0xF6CC3601
    .byte  9
    .byte  8
byte_806BA06:    .byte 0x3
unk_806BA07:    .byte  8
    .word 0x250FDE04
    .word 0x250806BA
    .word 0x12E1C4E
    .word 0x1413000F
    .word 0xC0FE74
    .word 0x2180000
    .word 0x9F6CC36
    .word 0x308
    .word dword_806BA40
    .word unk_806BA63
    .word unk_806BA7D
    .word unk_806BAA2
    .word unk_806BAC7
    .word 0xFF
dword_806BA40:    .word 0x14371708
    .word 0xFFDC01F6
    .word 0x2C160000
    .word 0x1680083F
    .word 0x3CC02A18
    .word unk_83F8108
    .word 0x3C041682
    .word 0xCC360408
    .byte 0xF6
    .byte  9
    .byte  8
unk_806BA63:    .byte  8
    .word 0x141C4E25
    .word 0xFFC001F4
    .word 0x52E0000
    .word byte_83F010F
    .word 0x2A0D2E02
    .word 0x3083CC0
    .byte  3
unk_806BA7D:    .byte  9
    .byte 0x25 
    .byte 0x11
    .word 0x1EE1414
    .word 0xFFC0
    .word loc_801083E+1
    .word 0xA103083D
    .word 0x100806BA
    .word 0x28002E0A
    .word 0xC02A0070
    .word 0x6BA8C02
    .byte  8
    .byte  3
unk_806BAA2:    .byte  9
    .byte 0x25 
    .word 0xF4141411
    .word 0x18FFC001
    .word 0x1083F00
    .word 0x3083D08
    .word byte_806BAC6
    .word 0x2E0510
    .word 0x2A007028
    .word 0xBAB102C0
    .byte  6
    .byte  8
byte_806BAC6:    .byte 0x3
unk_806BAC7:    .byte  9
    .word 0x14141125
    .word 0xFFC0020C
    .word byte_83F0000
    .word unk_83D0801
    .word 0x6BAEB03
    .word 0x2E141008
    .word 0x702800
    .word 0xD602C02A
    .word 0x30806BA
    .word dword_806BB04
    .word unk_806BB27
    .word unk_806BB41
    .word unk_806BB66
    .word unk_806BB8B
    .word 0xFF
dword_806BB04:    .word 0x14371708
    .word 0xFF5CFF76
    .word 0x2C160000
    .word 0x1680083F
    .word 0x3CC02A18
    .word unk_83F8108
    .word 0x3C041682
    .word 0xCC360408
    .byte 0xF6
    .byte  9
    .byte  8
unk_806BB27:    .byte  8
    .word 0x141C4E25
    .word 0xFF40FF74
    .word 0x52E0000
    .word unk_83F020F
    .word 0x2A0D2E02
    .word 0x3083CC0
    .byte  3
unk_806BB41:    .byte  9
    .byte 0x25 
    .byte 0x11
    .word 0xFF6E1414
    .word 0xFF40
    .word loc_801083E+1
    .word 0x6503083D
    .word 0x100806BB
    .word 0x28002E0A
    .word 0xC02A0070
    .word 0x6BB5002
    .byte  8
    .byte  3
unk_806BB66:    .byte  9
    .byte 0x25 
    .word 0x74141411
    .word 0x18FF40FF
    .word 0x1083F00
    .word 0x3083D08
    .word byte_806BB8A
    .word 0x2E0510
    .word 0x2A007028
    .word 0xBB7502C0
    .byte  6
    .byte  8
byte_806BB8A:    .byte 0x3
unk_806BB8B:    .byte  9
    .word 0x14141125
    .word 0xFF40FF8C
    .word byte_83F0000
    .word unk_83D0801
    .word 0x6BBAF03
    .word 0x2E141008
    .word 0x702800
    .word 0x9A02C02A
    .word 0x30806BB
    .word dword_806BBC8
    .word unk_806BBEB
    .word unk_806BC05
    .word unk_806BC2A
    .word unk_806BC4F
    .word 0xFF
dword_806BBC8:    .word 0x14371708
    .word 0xDCFE76
    .word 0x2C160000
    .word 0x1680083F
    .word 0x3CC02A18
    .word 0x83F8108
    .word 0x3C041682
    .word 0xCC360408
    .byte 0xF6
    .byte  9
    .byte  8
unk_806BBEB:    .byte  8
    .word 0x141C4E25
    .word 0xC0FE74
    .word 0x52E0000
    .word byte_83F000F
    .word 0x2A0D2E02
    .word 0x3083CC0
    .byte  3
unk_806BC05:    .byte  9
    .byte 0x25 
    .byte 0x11
    .word 0xFE6E1414
    .word 0xC0
    .word loc_801083E+1
    .word 0x2903083D
    .word 0x100806BC
    .word 0x28002E0A
    .word 0xC02A0070
    .word 0x6BC1402
    .byte  8
    .byte  3
unk_806BC2A:    .byte  9
    .byte 0x25 
    .word 0x74141411
    .word 0x1800C0FE
    .word 0x1083F00
    .word 0x3083D08
    .word byte_806BC4E
    .word 0x2E0510
    .word 0x2A007028
    .word 0xBC3902C0
    .byte  6
    .byte  8
byte_806BC4E:    .byte 0x3
unk_806BC4F:    .byte  9
    .word 0x14141125
    .word 0xC0FE88
    .word byte_83F0000
    .word unk_83D0801
    .word 0x6BC7303
    .word 0x2E141008
    .word 0x702800
    .word 0x5E02C02A
    .word 0x30806BC
    .word dword_806BC7C
    .word 0xFF
dword_806BC7C:    .word 0xE541708
    .word 0x1301413
    .word 0xFE9A
    .word 0xCC360516
    .word 0x809F6
    .word dword_806BC9C
    .word unk_806BCB2
    .word 0xFF
dword_806BC9C:    .word 0x17271F08
    .word 0x1081437
    .word 0xFE9A
    .word byte_83F2916
    .word 0xF6CC3601
    .byte  9
    .byte  8
unk_806BCB2:    .byte  8
    .byte 0x1F
    .word 0x14541727
    .word 0xFE9A0130
    .word 0x5160000
    .word 0x3601083F
    .word byte_809F6CC
    .word dword_806BCD4
    .word unk_806BCFA
    .word 0xFF
dword_806BCD4:    .word 0x17271F08
    .word 0x1081437
    .word 0xFE9A
    .word byte_83F2916
    .word 0x3F011603
    .word 0x11160408
    .word 0x7100115
    .word byte_83C0116
    .word 0xF6CC3605
    .byte  9
    .byte  8
unk_806BCFA:    .byte  8
    .byte 0x1F
    .word 0x14541727
    .word 0xFE9A0130
    .word 0x5160000
    .word 0x1601083F
    .word 0x2083C33
    .word 0x303083F
dword_806BD14:    .word 0xFF
    .word dword_806BD38
    .word unk_806BD7E
    .word unk_806BDAA
    .word unk_806BDD6
    .word dword_806BDEC
    .word unk_806BE02
    .word unk_806BE19
    .word 0xFF
dword_806BD38:    .word 0x17271F08
    .word 0x6C1437
    .word 0xFFA4
    .word unk_83F0716
    .word 0x15171601
    .word 0x160C1007
    .word 0x2083C2C
    .word 0x1604083F
    .word 0x10071517
    .word 0x3C2C160C
    .word byte_83F0508
    .word 0x15311606
    .word 0x3C010403
    .word byte_83F0708
    .word 0x3C2C1608
    .word dword_83F0908
    .word 0xF6CC360A
    .byte  9
    .byte  8
unk_806BD7E:    .byte  9
    .byte 0x1F
    .word 0x1C832527
    .word 0xB4006414
    .word 0x160020FE
    .word 0x3083F00
    .word 0x81093F08
    .word 0x93F0116
    .word 0x3F001682
    .word 0x1168409
    .word 0x1685093F
    .word 0xF6CC3600
    .byte  9
    .byte  8
unk_806BDAA:    .byte  9
    .byte 0x1F
    .word 0x1C972527
    .word 0xB4006414
    .word 0x160020FE
    .word 0x3083F00
    .word 0x81093F08
    .word 0x93F0116
    .word 0x3F001682
    .word 0x1168409
    .word 0x1685093F
    .word 0xF6CC3600
    .byte  9
    .byte  8
unk_806BDD6:    .byte  8
    .byte 0x1F
    .word 0x14531727
    .word 0xFEECFF98
    .word 0x2C160020
    .word 0x3601083F
    .word byte_809F6CC
dword_806BDEC:    .word 0x17271F08
    .word 0xFF801411
    .word 0x20FEEC
    .word unk_83F1D16
    .word 0xF6CC3601
    .byte  9
    .byte  8
unk_806BE02:    .byte  8
    .byte 0x1F
    .word 0x1C842527
    .word 0xB4FF8814
    .word 0x160020FE
    .word 0x1083F00
    .word 0x9F6CC36
    .byte  8
unk_806BE19:    .byte  8
    .byte 0x1F
    .byte 0x27 
    .word 0x141C9425
    .word 0xFEB4FF88
    .word 0x160020
    .word 0x3601083F
    .word byte_809F6CC
    .word dword_806BE58
    .word unk_806BEC3
    .word unk_806BEDA
    .word unk_806BEF7
    .word dword_806BF14
    .word unk_806BF6F
    .word unk_806BFBA
    .word unk_806BFCD
    .word dword_806BFE0
    .word 0xFF
dword_806BE58:    .word 0x17271F08
    .word 0x6C1437
    .word 0x20FEEC
    .word byte_83F2C16
    .word 0x3C311602
    .word unk_83F0308
    .word 0x14591704
    .word 0xFECC0064
    .word 0x1B160020
    .word 0x1684093F
    .word 0x85093F1A
    .word unk_83F1B16
    .word 0x1352807
    .word 0xC02A1E2E
    .word byte_8083C09
    .word byte_809083F
    .word 0xACFF8C14
    .word 0x280020FE
    .word 0x1F160094
    .word unk_83CC02A
    .word 0x18083F0A
    .word 0x8C143717
    .word 0x20FEDCFF
    .word 0x3F471600
    .word 0x482E1908
    .word 0x3C09C02A
    .byte  8
    .byte 0x1A
    .byte  3
unk_806BEC3:    .byte  9
    .word 0x25271F
    .word 0xFF8C141C
    .word 0x20FEDC
    .word byte_83F0016
    .word 0xF8800219
    .byte  9
    .byte  8
unk_806BEDA:    .byte  8
    .byte 0x1F
    .word 0x1C832527
    .word 0xB4006414
    .word 0x160020FE
    .word 0x81093F00
    .word 0x93F0116
    .word 0x3F001682
    .byte  8
    .byte  4
    .byte  3
unk_806BEF7:    .byte  8
    .word 0x9725271F
    .word 0x64141C
    .word 0x20FEB4
    .word 0x93F0016
    .word 0x3F011681
    .word 0x168209
    .word 0x304083F
dword_806BF14:    .word 0x17271F08
    .word 0xFF981453
    .word 0x20FEEC
    .word 0x83F2C16
    .word 0x3F071601
    .word 0x98140408
    .word 0x20FEE0FF
    .word 0xB083F00
    .word byte_83F2C16
    .word 0xFE2811
    .word unk_83F3F16
    .word 0x2051513
    .word 0x15083F01
    .word 0xE4FF8C14
    .word 0x3F0020FE
    .word 0x7151608
    .word 0x40160240
    .word 0x3F17083C
    .word 0x8C141808
    .word 0x20FEB4FF
    .word 0x3F411600
    .word 0xCC361908
    .byte 0xF6
    .byte  9
    .byte  8
unk_806BF6F:    .byte  8
    .word 0x1117271F
    .word 0xECFF8014
    .word 0x160020FE
    .word 0x1083F1D
    .word unk_83F0716
    .word 0xFF801404
    .word 0x20FEE0
    .word 0x160B083F
    .word 0xC083C1D
    .word 0x160D083F
    .word 0xE083C04
    .word 0x160F083F
    .word 0x10083C07
    .word 0x1611083F
    .word 0x12083C1E
    .word 0x1513083F
    .word 0x3C010201
    .word unk_83F1408
    .byte 0x15
    .byte  3
unk_806BFBA:    .byte  8
    .byte 0x1F
    .word 0x1C842527
    .word 0xB4FF8814
    .word 0x160020FE
    .word 0x1083F00
    .byte  3
unk_806BFCD:    .byte  8
    .byte 0x1F
    .byte 0x27 
    .word 0x141C9425
    .word 0xFEB4FF88
    .word 0x160020
    .word 0x301083F
dword_806BFE0:    .word 0x25271F09
    .word 0x94141C8D
    .word 0x18FEACFF
    .word 0x3F001600
    .word 0x36081808
    .word byte_809F6CC
off_806BFF8:    .word dword_806C014
    .word dword_806C074
    .word 0x0
    .word dword_806C0D4
    .word 0x0
    .word dword_806C104
    .word dword_806C144
dword_806C014:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x1080090, 0xFE940000, 0xFFCC0000, 0x0
    .word 0x7080388, 0x600000, 0x500000, 0x0
    .word 0x3080588, 0xFFC00000, 0xFF900000, 0x0
    .word 0x7080688, 0xFFC20000, 0x4E0000, 0x0
    .word 0x3080188, 0x600000, 0xFF900000, 0x0
dword_806C074:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x3080294, 0xFEE40000, 0x5C0000, 0x0
    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x7080088, 0xFFE00000, 0x200000, 0x0
dword_806C0D4:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x3080191, 0x12C0000, 0xFE840000, 0x0
    .word 0x3080088, 0xFFE80000, 0xFFB80000, 0x0
dword_806C104:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x3080092, 0xFF340000, 0xFEEC0000, 0x200000, 0x4100000
    .word 0x0, 0x0, 0x0
    .word 0x7080088, 0x440000, 0x240000, 0x0
dword_806C144:    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x7080094, 0x440000, 0x11C0000, 0x400000, 0x4100000
    .word 0x0, 0x0, 0x0
    .word 0x4100000, 0x0, 0x0, 0x0
    .word 0x3080088, 0x460000, 0xFFBA0000, 0x0
off_806C194:    .word unk_3001AC0
dword_806C198:    .word 0x20
    .word 0xFFFF0000
    .word byte_85D270C
    .word 0x8
    .word byte_85D272C
    .word 0x8
    .word byte_85D274C
    .word 0x8
    .word byte_85D276C
    .word 0x8
    .word 0x1
off_806C1C4:    .word unk_3001AC0
    .word 0x20
    .word 0xFFFF0000
    .word byte_85D278C
    .word 0x8
    .word 0x0
off_806C1DC:    .word unk_3001AE0
dword_806C1E0:    .word 0x20
    .word 0xFFFF0100
    .word byte_85D27B0
    .word 0x8
    .word byte_85D27D0
    .word 0x8
    .word byte_85D27F0
    .word 0x8
    .word byte_85D2810
    .word 0x8
    .word 0x1
off_806C20C:    .word word_3001960
    .word 0x20
    .word 0xFFFF0200
    .word byte_8615B04
    .word 0xC
    .word byte_8615B24
    .word 0xC
    .word byte_8615B44
    .word 0xC
    .word byte_8615B64
    .word 0xC
    .word 0x1
.endfunc // sub_806AD00

.func
.thumb_func
sub_806C23C:
    push {r4-r7,lr}
    mov r7, r10
    ldr r0, off_806C294 // =off_806BFF8 
    ldr r1, [r7,#0x14]
    ldrb r2, [r5,#5]
    lsl r4, r2, #2
    add r0, r0, r4
    ldr r0, [r0]
    str r0, [r1,#0x14]
    bl sub_806C35C
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_803037C
    ldrb r0, [r5,#4]
    ldrb r1, [r5,#5]
    bl sub_8030AA4
    ldr r0, [r5,#0x24]
    ldr r1, [r5,#0x28]
    ldr r2, [r5,#0x2c]
    ldrb r3, [r5,#4]
    ldrb r4, [r5,#5]
    bl sub_802FF4C
    bl loc_8030472
    ldr r0, off_806C298 // =unk_2037800 
    bl sub_80028D4
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, off_806C29C // =off_806C2A0 
    ldr r0, [r0,r1]
    bl sub_8002906
    bl chatbox_uncomp_803FD08 // () -> int
    bl sub_806C59C
    bl sub_8034FB8
    pop {r4-r7,pc}
off_806C294:    .word off_806BFF8
off_806C298:    .word unk_2037800
off_806C29C:    .word off_806C2A0
off_806C2A0:    .word byte_806C2BC
    .word byte_806C2C2
    .word byte_806C2CA
    .word byte_806C2D0
    .word 0x0
    .word byte_806C2D6
    .word unk_806C2DC
byte_806C2BC:    .byte 0x1C, 0x88, 0x1C, 0x98, 0xFF, 0xFF
byte_806C2C2:    .byte 0x1C, 0x6, 0x1C, 0x88, 0x18, 0x38, 0xFF, 0xFF
byte_806C2CA:    .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
byte_806C2D0:    .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
byte_806C2D6:    .byte 0x1C, 0x6, 0x1C, 0x88, 0xFF, 0xFF
unk_806C2DC:    .byte 0x1C
    .byte  6
    .byte 0x1C
    .byte 0x88
    .byte 0xFF, 0xFF
.endfunc // sub_806C23C

.func
.thumb_func
sub_806C2E2:
    push {lr}
    lsl r1, r1, #2
    ldr r0, off_806C2F0 // =off_806C2F4 
    ldr r0, [r0,r1]
    bl sub_8002354
    pop {pc}
off_806C2F0:    .word off_806C2F4
off_806C2F4:    .word off_806C310
    .word off_806C31C
    .word off_806C328
    .word off_806C334
    .byte 0, 0, 0, 0
    .word off_806C344
    .word off_806C350
off_806C310:    .word off_806C194
    .word off_806C1DC
    .word 0xFFFFFFFF
off_806C31C:    .word off_806C194
    .word off_806C1DC
    .word 0xFFFFFFFF
off_806C328:    .word off_806C194
    .word off_806C1DC
    .word 0xFFFFFFFF
off_806C334:    .word off_806C194
    .word off_806C1DC
    .word off_806C20C
    .word 0xFFFFFFFF
off_806C344:    .word off_806C194
    .word off_806C1DC
    .word 0xFFFFFFFF
off_806C350:    .word off_806C194
    .word off_806C1DC
    .word 0xFFFFFFFF
.endfunc // sub_806C2E2

.func
.thumb_func
sub_806C35C:
    push {r4-r7,lr}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r1, [r5,#5]
    lsl r1, r1, #4
    ldr r7, off_806C390 // =off_806C394 
    add r7, r7, r1
    ldr r0, [r7]
    ldr r1, [r7,#4]
    ldr r2, [r7,#8]
    bl sub_800195C
    bl sub_8001780
    ldr r1, [r7,#0xc]
    orr r0, r1
    bl sub_8001778
    ldr r0, off_806C404 // =off_806C408 
    ldrb r1, [r5,#5]
    lsl r1, r1, #2
    ldr r0, [r0,r1]
    bl sub_80304E8
    pop {r4-r7,pc}
    .byte 0, 0
off_806C390:    .word off_806C394
off_806C394:    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word locret_8001AB4+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
    .word locret_8001AB4+1
    .word sub_80019D0+1
    .word unk_3005CD9
    .word 0x800
off_806C404:    .word off_806C408
off_806C408:    .word off_806C424
    .word off_806C440
    .word 0x0
    .word off_806C45C
    .word 0x0
    .word off_806C478
    .word off_806C494
off_806C424:    .word off_8614DE0
    .word 0x6008020
    .word dword_8615028
    .word 0x1800
    .word dword_86151BC
    .word 0x3001960
    .word 0x20
off_806C440:    .word off_8615360
    .word 0x6008020
    .word dword_86154A8
    .word 0x1800
    .word dword_86155E8
    .word 0x3001960
    .word 0x20
off_806C45C:    .word off_861578C
    .word 0x6008020
    .word dword_861595C
    .word 0x1800
    .word 0x0
    .word 0x0
    .word 0x0
off_806C478:    .word off_8615BA4
    .word 0x6008020
    .word byte_8615D14
    .word 0x1800
    .word byte_8615E88
    .word 0x3001960
    .word 0x20
off_806C494:    .word off_861602C
    .word 0x6008020
    .word dword_8616264
    .word 0x1800
    .word byte_86163F4
    .word word_3001960
    .word 0x20
.endfunc // sub_806C35C

.func
.thumb_func
sub_806C4B0:
    push {r4-r7,lr}
    push {r0,r1}
    mov r0, #0
    mov r1, #0x8e
    bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    mov r0, #0
    mov r1, #0x8f
    bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    pop {r0,r1}
    mov r5, r10
    ldr r5, [r5,#0x3c]
    ldrb r6, [r5,#5]
    lsl r6, r6, #2
    ldr r7, off_806C4D8 // =off_806C4DC 
    ldr r7, [r7,r6]
    mov lr, pc
    bx r7
    pop {r4-r7,pc}
off_806C4D8:    .word off_806C4DC
off_806C4DC:    .word sub_806C4F8+1
    .word sub_806C514+1
    .byte 0, 0, 0, 0
    .word sub_806C532+1
    .byte 0, 0, 0, 0
    .word sub_806C55A+1
    .word sub_806C578+1
.endfunc // sub_806C4B0

.func
.thumb_func
sub_806C4F8:
    push {lr}
    cmp r0, #1
    bne loc_806C504
    cmp r1, #2
    bne loc_806C504
    pop {pc}
loc_806C504:
    ldr r0, off_806C598 // =off_806C1C4 
    bl sub_8001B1C
    // entryIdx
    mov r0, #0x16
    // byteFlagIdx
    mov r1, #0xf1
    bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    pop {pc}
.endfunc // sub_806C4F8

.func
.thumb_func
sub_806C514:
    push {lr}
    cmp r0, #0
    bne loc_806C520
    cmp r1, #0
    bne loc_806C520
    pop {pc}
loc_806C520:
    mov r0, #0
    mov r1, #0x8e
    bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    // entryIdx
    mov r0, #0
    // byteFlagIdx
    mov r1, #0x8f
    bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    pop {pc}
.endfunc // sub_806C514

.func
.thumb_func
sub_806C532:
    push {lr}
    cmp r0, #3
    bne loc_806C548
    cmp r1, #2
    bne loc_806C548
    mov r1, r10
    ldr r1, [r1,#0x3c]
    ldr r0, [r1,#0x3c]
    cmp r0, #0
    bne loc_806C548
    pop {pc}
loc_806C548:
    mov r0, #0
    mov r1, #0x8e
    bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    // entryIdx
    mov r0, #0
    // byteFlagIdx
    mov r1, #0x8f
    bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    pop {pc}
.endfunc // sub_806C532

.func
.thumb_func
sub_806C55A:
    push {lr}
    cmp r0, #4
    bne loc_806C566
    cmp r1, #1
    bne loc_806C566
    pop {pc}
loc_806C566:
    mov r0, #0
    mov r1, #0x8e
    bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    // entryIdx
    mov r0, #0
    // byteFlagIdx
    mov r1, #0x8f
    bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    pop {pc}
.endfunc // sub_806C55A

.func
.thumb_func
sub_806C578:
    push {lr}
    cmp r0, #5
    bne loc_806C584
    cmp r1, #1
    bne loc_806C584
    pop {pc}
loc_806C584:
    mov r0, #0
    mov r1, #0x8e
    bl clearFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    // entryIdx
    mov r0, #0
    // byteFlagIdx
    mov r1, #0x8f
    bl setFlag_2001C88_entry // (u8 entryIdx, u8 byteFlagIdx) -> void
    pop {pc}
    .balign 4, 0x00
off_806C598:    .word off_806C1C4
.endfunc // sub_806C578

.func
.thumb_func
sub_806C59C:
    push {lr}
    mov r0, r10
    ldr r0, [r0,#0x3c]
    ldrb r0, [r0,#5]
    lsl r0, r0, #2
    ldr r1, off_806C5B0 // =pt_806C5B4 
    ldr r0, [r1,r0]
    bl sub_8003570
    pop {pc}
off_806C5B0:    .word pt_806C5B4
    // <endpool>
pt_806C5B4:    .word dword_806C5D0
.endfunc // sub_806C59C

    .word dword_806C638
    .byte 0, 0, 0, 0
    .word dword_806C68C
    .byte 0, 0, 0, 0
    .word dword_806C6E0
    // <endfile>
    .word dword_806C748
/*For debugging purposes, connect comment at any range!*/
