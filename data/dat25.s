.include "data/dat25.inc"

    .word 0x60F86000, 0x8000008, 0x40002004, 0x4000, 0x20040800
    .word 0x40004000, 0x8000000, 0x40003804, 0x4000, 0x800
    .word 0x3E06003F, 0x887C15A8, 0x5301FF02, 0x5400FF, 0x8090340
    .word 0x4064024A, 0x343F0806, 0x82141C3F, 0x2080904, 0xFF3A5AFF
    .word 0x2800400, 0x145AFF, 0x4E000000, 0xFF270002, 0x14070408
    .word 0x809047A, 0x3A1EFF02, 0x800401FF, 0x351EFF02, 0x540108
    .word 0x8090348, 0x2080908, 0x3A1EFF02, 0x800405FF, 0x351EFF02
    .word 0x540308, 0x8090352, 0x4080908, 0x3A1EFF02, 0x800411FF
    .word 0x351EFF02, 0x8090508, 0x1EFF0206, 0x415FF3A, 0x3CFF0280
    .word 0x9070835, 0xFF020808, 0x5C00541E, 0x8080903, 0x3A1EFF02
    .word 0x800416FF, 0x351EFF02, 0x8090908, 0x1EFF020A, 0x417FF3A
    .word 0x1EFF0280, 0x90B0835, 0xFF020C08, 0x22FF3A1E, 0xFF028004
    .word 0xD08351E, 0x20E0809, 0xFF3A1EFF, 0x280042B, 0x143CFF
    .word 0x27000000, 0x7080CFF, 0x405AFF02, 0x4704FF04, 0x4104FF00
    .word 0x1FF00, 0x0
    .word 0x29303F00, 0x530C03FF, 0xFF2801FF, 0x4CFF, 0x809049C
    .word 0x3F183F3B, 0x3C0004, 0x4421540, 0x3C0809, 0x48FC3740
    .word 0xFF270803, 0x207FF18, 0xFF2701FF, 0x1507080C, 0x8090442
    .word 0x4000506, 0x0, 0x0, 0x0
    .word 0xA0FD6000, 0x400000B, 0x20, 0xFF80, 0x500408, 0xFF800000
    .word 0x80000, 0x3E06003F, 0x887C205C, 0x5301FF02, 0x5400FF, 0x80904AC
    .word 0x59F8024A, 0x343F0806, 0x8351C3F, 0x8FF2701, 0x7F140704, 0x9080905
    .word 0xFF020208, 0xFF3A1E, 0xFF028004, 0xBD00541E, 0x8080904, 0x3A1EFF02
    .word 0x800401FF, 0x351EFF02, 0x8090308, 0x1EFF0204, 0x402FF3A, 0x1EFF0280
    .word 0x9050835, 0xFF020608, 0x708351E, 0x2080809, 0xFF3A1EFF, 0x2800404
    .word 0x8351EFF, 0xA080909, 0x1478FF02, 0x0
    .word 0x40CFF27, 0x5AFF0207, 0x4FF0440, 0x4FF0047, 0x1FF0041
    .word 0x0
    .word 0x303F0000, 0xC05FF29, 0x2801FF53, 0x4CFFFF, 0x905A400
    .word 0x183F3B08, 0x3C00043F, 0x47154000, 0x3C080905, 0xFC374000
    .word 0x27080348, 0x7FF18FF, 0x2701FF02, 0x7080CFF, 0x9054715
    .word 0x8, 0x4000001, 0x0, 0x0, 0x0
    .word 0x80046000, 0x80000FD, 0x3E06003F, 0x887C23A8, 0x5301FF02
    .word 0x5400FF, 0x80905B4, 0xEBC024A, 0x343F0805, 0xC1141C3F
    .word 0x2080906, 0xFF3A3CFF, 0x2800400, 0x143CFF, 0x53000000
    .word 0x34E01FF, 0x8FF2700, 0xB9140704, 0x2080906, 0xFF3A1EFF
    .word 0x2800401, 0x8351EFF, 0x2080901, 0x3A1EFF02, 0x800405FF
    .word 0x351EFF02, 0xFF020308, 0x6FF3AD2, 0xFF028004, 0x508091E
    .word 0x3A1EFF02, 0x800407FF, 0x351EFF02, 0x8090608, 0x1EFF0207
    .word 0x408FF3A, 0x1EFF0280, 0x9080835, 0xFF020908, 0xAFF3A1E
    .word 0xFF028004, 0xA08351E, 0x20B0809, 0xFF3A1EFF, 0x280040B
    .word 0x8351EFF, 0xD08090C, 0x3A1EFF02, 0x80040DFF, 0x143CFF02
    .word 0x0
    .word 0x80CFF27, 0x390E3907, 0x54034A0F, 0x4403B01, 0x4701FF
    .word 0x4101FF, 0x40001FF, 0xFD60, 0xFF29303F, 0xFF530C07
    .word 0x3CFF0201, 0x27FFFF4E, 0x70808FF, 0x43F183F, 0x40003C00
    .word 0x9067B15, 0x40003C08, 0x348FC37, 0x18FF2708, 0xFF0207FF
    .word 0xCFF2701, 0x7B150708, 0x80906, 0x57D450, 0x60040802
    .word 0x0
    .word 0x40000FF, 0x60, 0x80FF00, 0x2404, 0xFF0000, 0x10040800
    .word 0x0
    .word LCDControl+1
    .word 0x70
    .word 0xFF800100, 0x4004, 0x10000, 0x40040800, 0x0
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  4
    .byte 0x70 
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte 0xFF
    .byte 0x80
    .byte  0
    .byte  4
    .byte 0x10
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte 0xFF
    .byte  0
    .byte  0
    .byte  8
    .byte  0
    .byte 0x40 
    .byte 0xFC
    .byte 0x60 
    .byte 0x17
    .byte 0x80
    .byte 0xFF
    .byte  8
    .byte  4
    .byte 0x28 
    .byte  0
    .byte 0x40 
    .byte  0
    .byte 0x40 
    .byte  0
    .byte  0
    .byte  0
    .byte  8
    .byte 0x3F 
    .byte  0
    .byte  6
    .byte 0x3E 
    .byte 0xD8
    .byte 0x28 
    .byte 0x7C 
    .byte 0x88
    .byte  2
    .byte 0xFF
    .byte  1
    .byte 0x54 
    .byte  0
    .byte 0xDC
    .byte  6
    .byte  9
    .byte  8
    .byte 0x4A 
    .byte  2
    .byte 0x68 
    .byte 0xE4
    .byte  7
    .byte  8
    .byte 0x3F 
    .byte 0x34 
    .byte 0x3F 
    .byte 0x1C
    .byte 0x35 
    .byte  8
    .byte  1
    .byte 0x27 
    .byte 0xFF
    .byte  8
    .byte  8
    .byte  7
    .byte 0x14
    .byte 0xA0
    .byte  8
    .byte  9
    .byte  8
    .byte  9
    .byte  8
    .byte  2
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte  0
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x35 
    .byte  8
    .byte  3
    .byte  2
    .byte 0xFF
    .byte 0x14
    .byte 0x3A 
    .byte 0xFF
    .byte  2
    .byte  4
    .byte 0x80
    .byte  9
    .byte  8
    .byte  4
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x54 
    .byte  0
    .byte 0xE2
    .byte  6
    .byte  9
    .byte  8
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte  4
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x35 
    .byte  8
    .byte  5
    .byte  9
    .byte  8
    .byte  6
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x54 
    .byte  0
    .byte 0xFE
    .byte  6
    .byte  9
    .byte  8
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x35 
    .byte  8
    .byte  7
    .byte  9
    .byte  8
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte  5
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x35 
    .byte  8
    .byte  9
    .byte  9
    .byte  8
    .byte 0xA
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte 0xD
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x54 
    .byte  0
    .byte 0x1A
    .byte  7
    .byte  9
    .byte  8
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte 0x14
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x14
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x4D 
    .byte 0xBC
    .byte  0
    .byte 0x13
    .byte 0x20
    .byte 0x27 
    .byte 0xFF
    .byte 0x24 
    .byte 0xFF
    .byte  7
    .byte 0x53 
    .byte 0xFF
    .byte  0
    .byte 0x14
    .byte 0xA8
    .byte  8
    .byte  9
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x3C 
    .byte 0x3A 
    .byte 0xFF
    .byte 0x18
    .byte  4
    .byte 0x80
    .byte 0x35 
    .byte  8
    .byte 0xF
    .byte 0x54 
    .byte  0
    .byte 0x36 
    .byte  7
    .byte  9
    .byte  8
    .byte 0x4A 
    .byte  2
    .byte 0xA4
    .byte 0xE4
    .byte  7
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x3C 
    .byte 0x14
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x53 
    .byte 0xFF
    .byte  1
    .byte 0x27 
    .byte 0xFF
    .byte  0
    .byte  4
    .byte  7
    .byte 0x14
    .byte 0xA0
    .byte  8
    .byte  9
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte 0x19
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x35 
    .byte  8
    .byte 0x10
    .byte  9
    .byte  8
    .byte 0x11
    .byte  2
    .byte 0xFF
    .byte 0x1E
unk_809083F:    .byte 0x54 
    .byte  0
    .byte 0x3E 
    .byte  7
    .byte  9
    .byte  8
    .byte  8
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte 0x1C
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x35 
    .byte  8
    .byte 0x12
    .byte  9
    .byte  8
    .byte 0x13
    .byte  2
    .byte 0xFF
    .byte 0x1E
    .byte 0x3A 
    .byte 0xFF
    .byte 0x35 
    .byte  4
    .byte 0x80
    .byte  2
    .byte 0xFF
    .byte 0x3C 
    .byte 0x14
    .byte  0
    .byte  0
    .byte  0
    .byte  0
    .byte 0x27 
    .byte 0xFF
    .byte 0xC
    .byte  8
    .byte  7
    .byte 0x39 
    .byte 0xE
    .byte 0x39 
    .byte 0xF
    .byte 0x4A 
    .byte  3
    .byte 0x54 
    .byte  1
    .byte 0x3B 
    .byte 0x40 
    .byte  4
    .byte 0xFF
    .byte  7
    .byte 0x47 
    .byte  0
    .byte 0xFF
    .byte  7
    .byte 0x41 
    .byte  0
    .byte 0xFF
    .byte  1
    .byte 0x40 
    .byte 0xFC
    .byte 0xA0
    .byte 0x19
    .byte  0
    .byte  0
    .byte 0x3F 
    .byte 0x30 
    .byte 0x29 
    .byte 0xFF
    .byte  9
    .byte 0xC
    .byte 0x53 
    .byte 0xFF
    .byte  1
    .byte  2
    .byte 0xFF
    .byte 0x3C 
    .byte 0x4E 
    .byte 0xFF
    .byte 0xFF
    .byte 0x27 
    .byte 0xFF
    .byte  8
    .byte  8
    .byte  7
    .byte 0x3F 
    .byte 0x18
    .byte 0x3F 
    .byte  4
    .byte  0
    .byte 0x3C 
    .byte  0
    .byte 0x40 
    .byte 0x15
aB:    .byte 0x62, 0x8, 0x9, 0x8, 0x3C, 0x0
    .hword 0x3740
    .word off_8034938
    .word 0xFF20FF27, 0x1FF0207, 0x80CFF27, 0x8621507, 0x809
    .word 0x6004A000, 0x80000FD, 0x3E06003F, 0x887C3210, 0x5301FF02
    .word 0x5400FF, 0x80908C4, 0x1070024A, 0x343F0805, 0x98141C3F
    .word 0x2080909, 0xFF3A3CFF, 0x2800400, 0x143CFF, 0x53000000
    .word 0xFF2701FF, 0x14070408, 0x8090990, 0x3A1EFF02, 0x800401FF
    .word 0x351EFF02, 0x8090108, 0x1EFF0202, 0x408FF3A, 0x1EFF0280
    .word 0x9030835, 0xFF020408, 0xBFF3A1E, 0xFF028004, 0x508351E
    .word 0x2060809, 0xFF3A1EFF, 0x280040F, 0x143CFF, 0x27000000
    .word 0x7080CFF, 0xF390E39, 0x1700052, 0x1190152, 0x3AFF2A
    .word 0x154034A, 0xFF04403B, 0xFF004701, 0xFF004101, 0xC005C001
    .word 0x3F0000FC, 0x1FF5330, 0x4E3CFF02, 0xFF27FFFF, 0x3F070808
    .word 0x43F18
    .word 0x1540003C
aJ:    .byte 0x4A, 0x9, 0x9, 0x8, 0x3C, 0x0
    .hword 0x3740
    .word dword_80348F8+4
    .word 0xFF18FF27, 0x1FF0207, 0x80CFF27, 0x94A1507, 0x809
    .word 0x57D450, 0x802, 0x3E06003F, 0x887C3638, 0x5301FF02
    .word 0x5400FF, 0x80909B4, 0x89AC024A, 0x343F0805, 0x6E141C3F
    .word 0x208090A, 0xFF3A3CFF, 0x2800400, 0xA8363CFF, 0x14080525
    .word 0x0
    .word 0x408FF27, 0xA661407, 0xFF020809, 0x1FF3A1E, 0xFF028004
    .word 0x108351E, 0x2020809, 0xFF3A1EFF, 0x2800403, 0x8351EFF
    .word 0x4080903, 0x3A1EFF02, 0x800405FF, 0x143CFF02, 0x0
    .word 0x80CFF27, 0x51063207, 0x405AFF02, 0x4704FF04, 0x4104FF00
    .word 0x1FF00, 0x0
    .word 0x29303F00, 0x530C0DFF, 0xFF2801FF, 0x4CFF, 0x8090A88
    .word 0x3F183F3B, 0x3C0004, 0xA2B1540, 0x3C0809, 0x48FC3740
    .word 0xFF270803, 0x207FF18, 0xFF2701FF, 0x1507080C, 0x8090A2B
    .word 0x4000101, 0x0, 0x0, 0x0
    .word 0x80FCE000, 0x80000FA, 0x57D450, 0x802, 0x3E06003F
    .word 0x887C393C, 0x5301FF02, 0x5400FF, 0x8090A98, 0x1A68024A
    .word 0x343F0805, 0xFF291C3F, 0x8360124, 0x140804E5, 0x8090BC6
    .word 0x3A3CFF02, 0x800400FF, 0x143CFF02, 0x0
    .word 0x4E01FF53, 0xFF27FFFF, 0x14070408, 0x8090BBE, 0x3A1EFF02
    .word 0x800402FF, 0x351EFF02, 0x8090108, 0x1EFF0202, 0x409FF3A
    .word 0x1EFF0280, 0x9030835, 0xFF020408, 0x19FF3A3C, 0xFF028004
    .word 0x143C, 0xFF270000, 0x5307081C, 0xC61400FF, 0x208090B
    .word 0xFF3A3CFF, 0x3580041A, 0x540508, 0x8090AA0, 0x143CFF02
    .word 0x0
    .word 0x2701FF53, 0x70808FF, 0x90BBE14, 0x1EFF0208, 0x41BFF3A
    .word 0x3CFF0280, 0x14, 0xCFF2700, 0xE390708, 0xFF290F39
    .word 0x34A0037, 0x403B0154, 0x4704FF04, 0x4104FF00, 0x6001FF00
    .word 0xFDA001, 0x29303F00, 0x530C0FFF, 0x6D7801FF, 0x6E78011B
    .word 0x6F78011B, 0x7078011B, 0x7A78011B, 0x7D78011B, 0xFF02011B
    .word 0xFFFF4E3C, 0x808FF27, 0x3F183F07, 0x3C0004, 0xB641540
    .word 0x3C0809, 0x48FC3740, 0xFF270803, 0x207FF18, 0xFF2701FF
    .word 0x1507080C, 0x8090B64, 0x40FAE000, 0x80800F9, 0x10004
    .word 0x80000000, 0x300408FF, 0x8000, 0x8000000, 0x60F56000
    .word 0x8000000, 0x3E06003F, 0x887C3E48, 0x5301FF02, 0x5400FF
    .word 0x8090BE0, 0xD928024A, 0x343F0804, 0xF141C3F, 0x208090D
    .word 0xFF3A5AFF, 0x14800410, 0x0
    .word 0x201FF53, 0xFF273CFF, 0x540408, 0x8090BE8, 0xD071407
    .word 0x2080809, 0xFF3A3CFF, 0x2800400, 0x8351EFF, 0x2080901
    .word 0x541EFF02, 0x90BF200, 0xFF020808, 0x3FF3A1E, 0xFF028004
    .word 0x308351E, 0x2040809, 0xFF3A1EFF, 0x2800404, 0x143CFF
    .word 0x27000000, 0x7081CFF, 0x1400FF53, 0x8090D0F, 0x3A3CFF02
    .word 0x800408FF, 0x54050835, 0x90BFC00, 0x3CFF0208, 0x14
    .word 0x1FF5300, 0x808FF27, 0xD071407, 0xFF020809, 0x9FF3A1E
    .word 0xFF028004, 0x143C, 0xFF270000, 0x3907080C, 0x2A0F390E
    .word 0x4A003AFF, 0x3B015403, 0x5FF0440, 0x5FF0047, 0x1FF0041
    .word 0x60F640, 0x303F0000, 0xC11FF29, 0x201FF53, 0xFF4E3CFF
    .word 0x8FF27FF, 0x183F0708, 0x3C00043F, 0xC5154000, 0x3C08090C
    .word 0xFC374000, 0x27080348, 0x7FF18FF, 0x2701FF02, 0x7080CFF
    .word 0x90CC515, 0x8, 0x200FC000, 0x8000002, 0x206003F
    .word 0xFF271EFF, 0x3E07080C, 0x887C41E4, 0xD2C0054, 0x24A0809
    .word 0x804DA28, 0x1C3F343F, 0x271EFF02, 0x70808FF, 0x90DA314
    .word 0x1EFF0208, 0x400FF3A, 0x3CFF0280, 0x14, 0xCFF2700
    .word 0x34A0708, 0x403B0154, 0x4705FF04, 0x4105FF00, 0x6001FF00
    .word 0x22010, 0x29303F00
    .word 0x20C13FF
    .word 0xFF4E3CFF, 0x8FF27FF, 0x183F0708, 0x3C00043F, 0x6C154000
    .word 0x8090D, 0xE0192000, 0x80000FC, 0x2018E000, 0x80000FD
    .word 0x40180000, 0x80000FC, 0x40003004, 0x4000, 0x800
    .word 0x206003F, 0xFF271EFF, 0x3E07080C, 0x887C4494, 0xDAC0054
    .word 0x24A0809, 0x807C674, 0x1C3F343F, 0x271EFF02, 0x70808FF
    .word 0x90EF414, 0x1EFF0208, 0x400FF3A, 0x3CFF0280, 0x14
    .word 0xCFF2700, 0x8350704, 0xB4005401, 0x208090D, 0xFF275AFF
    .word 0x14070808, 0x8090EF4, 0x3A1EFF02, 0x800410FF, 0x141EFF02
    .word 0x0
    .word 0x4D00634E
    .word 0x201300D7
    .word 0xFF24FF27, 0xFF5307, 0x90EFC14, 0x1EFF0208, 0x414FF3A
    .word 0x2083580, 0xDBC0054, 0xFF020809, 0x1478, 0xFF530000
    .word 0x1C4E01, 0x400FF27, 0xEF41407, 0xFF020809, 0x18FF3A1E
    .word 0xFF028004, 0x308351E, 0x3A040809, 0x800423FF, 0x350AFF02
    .word 0x8090508, 0x5AFF0206, 0xDC40054, 0x2080809, 0x8353CFF
    .word 0x8080907, 0x3A1EFF02, 0x800424FF, 0x143CFF02, 0x0
    .word 0x80CFF27, 0x390E3907, 0x5107320F, 0x154034A, 0xFF04403B
    .word 0xFF004707, 0xFF004107, 0xA0192001, 0x3F0000FC, 0x15FF2930
    .word 0x1FF530C, 0x4E3CFF02, 0xFF27FFFF, 0x3F070808, 0x43F18
    .word 0x1540003C, 0x8090EB3, 0x3740003C, 0x8034938, 0xFF20FF27
    .word 0x1FF0207, 0x80CFF27, 0xEB31507, 0x809, 0x57D450
    .word 0x94040802, 0x0
    .word 0x40000FF, 0xFF800020, 0xFF80, 0x8, 0x206003F, 0xFF271EFF
    .word 0x3E07080C, 0x887C4C14, 0xF180054, 0x24A0809, 0x807E7DC, 0x1C3F343F
    .word 0x351EFF02, 0xFF270108, 0x14070808, 0x8090FA8, 0x2020809, 0xFF3A1EFF
    .word 0x2800400, 0x541EFF, 0x8090F1E, 0x1C4E08, 0x351EFF02, 0x8090308
    .word 0x1EFF0204, 0x401FF3A, 0x1480, 0xFF290000, 0xFF290C17, 0xFF020CC0
    .word 0x775514, 0x43F183F, 0x1FF02, 0x1540003C, 0x8090F8D, 0x80FB6000
    .word 0x80800EE, 0x3E06003F, 0x887C4F68, 0x5401FF02, 0x90FB000, 0x98024A08
    .word 0x3F0807E8, 0x491C3F34, 0x100, 0x0
    .word 0x4010800, 0x4902FF02, 0x101, 0x0
    .word 0x5010800, 0x271EFF02, 0x70808FF, 0x9114A14, 0x1EFF0208
    .word 0x400FF3A, 0x1EFF0280, 0x9010835, 0x140208, 0x12000000
    .word 0x9116C20, 0x49943708, 0xFF020803, 0x91585F10, 0xE10804CA
    .word 0x40804CA, 0x2000000, 0xC34D5AFF, 0x4FF2700, 0x8350704
    .word 0x49304903, 0x20F3931, 0x13591EFF, 0x5AFF0220, 0x4F683E38
    .word 0xFF02887C, 0xFF271E, 0x4A140704, 0x2080911, 0x8351EFF
    .word 0x5080904, 0x3A1EFF02, 0x800402FF, 0x351EFF02, 0x8090608
    .word 0x1EFF0207, 0x9080835, 0x1C4E0908, 0x1EFF0200, 0x405FF3A
    .word 0x1EFF0280, 0x90A0835, 0xFF020B08, 0x7820120A, 0x2080911
    .word 0xFF3A1EFF, 0x280040D, 0x8351EFF, 0xD08090C, 0x14
    .word 0x634E00, 0x4D00D74D, 0x2013015E, 0xFF24FF27, 0xFF5307
    .word 0x9115214, 0x1EFF0208, 0x410FF3A, 0xE083580, 0x1478FF02
    .word 0x0
    .word 0x2701FF53, 0x70400FF, 0x9114A14, 0x1EFF0208, 0x411FF3A
    .word 0x1EFF0280, 0x90F0835, 0xFF021008, 0x18FF3A1E, 0xFF028004
    .word 0x1108351E, 0x2120809, 0xFF3A1EFF, 0x2800419, 0x143CFF
    .word 0x27000000, 0x71004FF, 0x5A, 0x31493049, 0xFF290F39
    .word 0xFF290C19, 0x77172A, 0x281EFF02, 0x14C1000, 0x9118801
    .word 0x3F183F08, 0x3C0004, 0x111A1540, 0x3C0809, 0x49383740
    .word 0xFF270803, 0x207FF20, 0xFF2701FF, 0x15071004, 0x809111A
    .word 0x6015A, 0x1506FF02, 0x809116C, 0x20005A, 0x200E34D
    .word 0x781520FF, 0x80911, 0x4000001, 0x0, 0x0
    .word 0x0
    .word 0x40F52000, 0x80000FD, 0x3E06003F, 0x887C54A8, 0x5401FF02
    .word 0x9119800, 0x94024A08, 0x3F0804DA, 0x271C3F34, 0x71000FF
    .word 0x9122C14, 0x1EFF0208, 0x400FF3A, 0x1EFF0280, 0x9010835
    .word 0xFF020208, 0x1FF3A1E, 0xFF028004, 0x308351E, 0x2040809
    .word 0xFF3A1EFF, 0x2800402, 0x143CFF, 0x27000000, 0x7080CFF
    .word 0x4A520732, 0x3B015403, 0x5FF0440, 0x5FF0047, 0x1FF0041
    .word 0xFD40F5E0, 0x303F0000, 0xC1BFF29, 0x4E3CFF02, 0xFF27FFFF
    .word 0x3F070808, 0x43F18, 0x1540003C, 0x80911F2, 0xF14000
    .word 0x8FE000B, 0x40002404, 0x4000, 0x24040800, 0xC0FFC000
    .word 0x80000FF, 0x40002004, 0x4000, 0x800, 0x3E06003F
    .word 0x887C56CC, 0x5401FF02, 0x9123400, 0x24024A08, 0x3F0805BD
    .word 0x271C3F34, 0x70808FF, 0x9135314, 0x1EFF0208, 0x400FF3A
    .word 0x1EFF0280, 0x9010835, 0xFF020208, 0x1FF3A1E, 0xFF028004
    .word 0x308351E, 0x2040809, 0x541EFF, 0x809123C, 0x1EFF0208
    .word 0x402FF3A, 0x1EFF0280, 0x9050835, 0xFF020608, 0x4600541E
    .word 0x8080912, 0x3A1EFF02, 0x800405FF, 0x351EFF02, 0x8090708
    .word 0x1EFF0208, 0x406FF3A, 0x1EFF0280, 0x9090835, 0xFF020A08
    .word 0x7FF3A1E, 0xFF028004, 0xB08351E, 0x12500054, 0x9080809
    .word 0xFF020C08, 0x9FF3A1E, 0xFF028004, 0x143C, 0xFF270000
    .word 0x2907080C, 0x20128FF, 0x4403CFF, 0x4704FF, 0x4104FF
    .word 0x1FF, 0x0
    .word 0xFF29303F, 0xFF290C1D, 0xE86B003A, 0xE96B011C, 0xEA6B011C
    .word 0x4C011C, 0x9135C00, 0x183F3B08, 0x3C00043F, 0xD154000
    .word 0x80913, 0x5000001, 0x900000, 0x740000, 0x0
    .word 0x57D450, 0x802, 0x3E06003F, 0x887C5CD8, 0x5401FF02
    .word 0x9136C00, 0xA4024A08, 0x3F08051A, 0x271C3F34, 0x70808FF
    .word 0x9140214, 0x1EFF0208, 0x400FF3A, 0x1EFF0280, 0x9010835
    .word 0xFF020208, 0x3FF3A1E, 0xFF028004, 0x143C, 0xFF270000
    .word 0x3207080C, 0x7325206, 0x24FF2A53, 0x23FF2901, 0xE4E83601
    .word 0x34A0804, 0x403B0154, 0x4704FF04, 0x4104FF00, 0xE001FF00
    .word 0x2A0FC, 0x29303F00, 0x530C1FFF, 0xFF0201FF, 0xFFFF4E3C
    .word 0x808FF27, 0x3F183F07, 0x3C0004, 0x13B51540, 0x809
    .word 0x57D450, 0x40040802, 0x0
    .word 0x4FF0000, 0xFF000064, 0x100, 0x10C00008, 0x4000260
    .word 0x800008, 0xFC40, 0x2C0408, 0x800000, 0x80000
    .word 0xFC400000, 0x4080000, 0xFF80002C, 0xFF80, 0x400408
    .word 0xFF800000, 0x4080000, 0xFFC00024, 0xFFC0, 0x340408
    .word 0x400040, 0x80000, 0x206003F, 0xFF271EFF, 0x3E07080C
    .word 0x887C6028, 0x140C0054, 0x24A0809, 0x805BE04, 0x1C3F343F
    .word 0x271EFF02, 0x70808FF, 0x9170714, 0x1EFF0208, 0x400FF3A
    .word 0x1EFF0280, 0x14120054, 0x2080809, 0xFF3A3CFF, 0x2800401
    .word 0x8351EFF, 0x2080901, 0x3A1EFF02, 0x800406FF, 0x543CFF02
    .word 0x9142500, 0xFF020808, 0xAFF3A1E, 0x8358004, 0x4080903
    .word 0x543CFF02, 0x9142D00, 0xFF020808, 0x508351E, 0x2060809
    .word 0xFF3A1EFF, 0x280040C, 0x8351EFF, 0x38201207, 0x9080917
    .word 0xFF020808, 0xFFF3A1E, 0xFF028004, 0x141E, 0x20130000
    .word 0x2700D74D, 0x7FF24FF, 0x1400FF53, 0x809170F, 0x3A3CFF02
    .word 0x800412FF, 0x2090835, 0x143CFF, 0x53000000, 0xFF2701FF
    .word 0x14070400, 0x8091707, 0x3A1EFF02, 0x800413FF, 0x351EFF02
    .word 0x8090A08, 0x1EFF020B, 0x415FF3A, 0x1EFF0280, 0x540C0835
    .word 0x9143500, 0x8090808, 0x1EFF020D, 0x416FF3A, 0x1EFF0280
    .word 0x90E0835, 0xFF020F08, 0x18FF3A1E, 0xFF028004, 0x1008351E
    .word 0x2110809, 0xFF3A1EFF, 0x280041D, 0x8351EFF, 0x38201212
    .word 0x9080917, 0xFF021308, 0x20FF3A1E, 0xFF028004, 0x141E
    .word 0x20130000, 0x2700D74D, 0x72004FF, 0x2140835, 0xFF2778FF
    .word 0x14070200, 0x8091707, 0x3A1EFF02, 0x800422FF, 0x543CFF02
    .word 0x9142500, 0xFF020808, 0x25FF3A1E, 0xFF028004, 0x143C
    .word 0x20130000, 0x40CFF27, 0x15083507, 0x143F0054, 0x24A0809
    .word 0x805BE30, 0x2796FF02, 0x70408FF, 0x9170714, 0x1EFF0208
    .word 0x426FF3A, 0x1EFF0280, 0x9160835, 0xFF021708, 0x4700541E
    .word 0x8080914, 0x3A1EFF02, 0x800429FF, 0x351EFF02, 0x541808
    .word 0x8091451, 0x19080908, 0x3A1EFF02, 0x80042BFF, 0x351EFF02
    .word 0x541A08, 0x809145B, 0x1B080908, 0x3A1EFF02, 0x80042DFF
    .word 0x351EFF02, 0x8091C08, 0x1EFF021D, 0x91E0835, 0xFF021F08
    .word 0x32FF3A1E, 0xFF028004, 0x2008351E, 0x2210809, 0xFF3A3CFF
    .word 0x2800435, 0x8351EFF, 0x23080922, 0x541EFF02, 0x9146500
    .word 0xFF020808, 0x2408351E, 0x2250809, 0xFF3A1EFF, 0x2800436
    .word 0x143CFF, 0x27000000, 0x7080CFF, 0xF390E39, 0x67540732
    .word 0x4A06186F, 0x3B015403, 0x4FF0440, 0x4FF0047, 0x1FF0041
    .word 0xF920FEE0, 0x303F0000, 0xC2FFF29, 0x201FF53, 0xFF4E3CFF
    .word 0x8FF27FF, 0x183F0708, 0x3C00043F, 0xC2154000, 0x3C080916
    .word 0x38374000, 0x27080349, 0x7FF20FF, 0x2701FF02, 0x7080CFF
    .word 0x916C215, 0x20005A08, 0xE34D00, 0x1520FF02, 0x8091729
    .word 0x20015A, 0x200E34D, 0x381520FF, 0x80917, 0xC0FC8000
    .word 0x8000007, 0x3004, 0xFF8000, 0x500400, 0xFFC0FFC0
    .word 0x4080000, 0x90, 0x1000000, 0x900408, 0x0
    .word 0x8FF00, 0x206003F, 0xFF271EFF, 0x3E07080C, 0x887C6940
    .word 0x17480054, 0x24A0809, 0x8057C24, 0x1C3F343F, 0x271EFF02
    .word 0x70808FF, 0x9185F14, 0x1EFF0208, 0x400FF3A, 0x1EFF0280
    .word 0x9010835, 0xFF020208, 0x7FF3A1E, 0xFF028004, 0x308351E
    .word 0x541EFF02, 0x9175000, 0x8090808, 0x1EFF0204, 0x408FF3A
    .word 0x1EFF0280, 0x9050835, 0xFF020608, 0x708351E, 0xA015A
    .word 0x40CFF3A, 0x8080980, 0x541EFF02, 0x9176300, 0xFF020808
    .word 0xEFF3A1E, 0xFF028004, 0x908351E, 0x20A0809, 0x543CFF
    .word 0x809176D, 0x1EFF0208, 0x40FFF3A, 0x3CFF0280, 0x14
    .word 0xCFF2700, 0xFF2A0708, 0x34A1715, 0x403B0154, 0x4707FF04
    .word 0x4107FF00, 0xC001FF00, 0x640FB, 0x29303F00, 0x20C23FF
    .word 0xFF4E3CFF, 0x8FF27FF, 0x183F0708, 0x3C00043F, 0x24154000
    .word 0x80918, 0xC0018000, 0x8000005, 0x80009004, 0xFF80FF
    .word 0x480400, 0xFF00, 0x4080000, 0x800024, 0x80
    .word 0x3600008, 0x1C0, 0x3600008, 0xFF8001C0, 0x380408
    .word 0xFF80, 0x4080000, 0x800038, 0x0
    .word 0xC20408, 0xFF00, 0x4080000, 0x10000C2, 0x0
    .word 0xF9A00008, 0x260, 0x10C08, 0x80002004, 0xFF, 0x14040800
    .word 0xFF8000, 0x8000000, 0xC0F80000, 0x8000001, 0x3E06003F, 0x887C6DDC
    .word 0x5401FF02, 0x9186800, 0xD8024A08, 0x3F080589, 0x271C3F34, 0x70808FF
    .word 0x91CD314, 0x1EFF0208, 0x400FF3A, 0x1EFF0280, 0x9010835, 0xFF020208
    .word 0x7000541E, 0x8080918, 0x3A1EFF02, 0x80040AFF, 0x351EFF02, 0x540308
    .word 0x8091883, 0x4080908, 0x3A1EFF02, 0x80040EFF, 0x351EFF02, 0x8090508
    .word 0x1EFF0206, 0x414FF3A, 0x3CFF0280, 0x14, 0x1CFF2700, 0xFF2A0704
    .word 0xFF2A008A, 0xF437008B, 0x54080348, 0x9188D00, 0xE8024A08, 0x53080589
    .word 0xFF2700FF, 0x1407FF08, 0x8091CD3, 0x3A3CFF02, 0x800417FF, 0x4D3CFF02
    .word 0x490157, 0x8, 0x48000000, 0x2007A1C, 0x574D0EFF, 0x8014901
    .word 0x0
    .word 0x1C490000, 0xFF02007A, 0x1574D16, 0x80249, 0x0
    .word 0x7A1C4A00
    .word 0x12FF0200
    .word 0x4901574D, 0x803
    .word 0x0
    .word 0x7A1C4B, 0x3A1EFF02, 0x800418FF, 0x491EFF02, 0x1614D30
    .word 0x80049, 0x0
    .word 0x7A1C4C00
    .word 0xEFF0200
    .word 0x614D3149, 0x8014901, 0x0
    .word 0x1C4D0000
    .word 0xFF02007A, 0x4D324916, 0x2490161, 0x8, 0x4E000000, 0x2007A1C
    .word 0x334912FF, 0x4901614D, 0x803, 0x0
    .word 0x7A1C4F, 0x3A3CFF02, 0x800419FF, 0x4D1EFF02, 0x4490157
    .word 0x8, 0x50000000, 0x2007A1C, 0x574D0EFF, 0x8054901
    .word 0x0
    .word 0x1C510000, 0xFF02007A, 0x1574D16, 0x80649, 0x0
    .word 0x7A1C5200, 0x12FF0200, 0x3A1EFF02, 0x80041AFF, 0x141EFF02
    .word 0x0
    .word 0x2701004D, 0x7FF04FF, 0x49110835, 0x95005440, 0x2080918
    .word 0x214E5AFF, 0xFF2700, 0xD3140704, 0x208091C, 0xFF3A1EFF
    .word 0x280041D, 0x8351EFF, 0x9D005412, 0x8080918, 0x2130809
    .word 0xFF3A1EFF, 0x280041E, 0x8351EFF, 0x15080914, 0x141EFF02
    .word 0x0
    .word 0x4D015F4D, 0xFF270100
    .word 0x3507FF04
    .word 0xFF021608, 0xFF275A, 0xD3140702, 0x208091C, 0x8353CFF
    .word 0x18080917, 0x543CFF02, 0x918A700, 0xFF020808, 0x1FFF3A3C
    .word 0xFF028004, 0x1908351E, 0x541EFF02, 0x918B100, 0x8090808
    .word 0x1EFF021A, 0x420FF3A, 0x1EFF0280, 0x8A14024A, 0x8350805
    .word 0x1EFF021B, 0x18BB0054, 0x2080809, 0xFF3A1EFF, 0x2800423
    .word 0x8351EFF, 0x1E08091D, 0x541EFF02, 0x918B100, 0xFF020808
    .word 0x24FF3A1E, 0xFF028004, 0xBB00543C, 0x8080918, 0x3A1EFF02
    .word 0x800425FF, 0x353CFF02, 0x8091F08, 0x3CFF0220, 0x426FF3A
    .word 0x1EFF0280, 0x14, 0x1F085000, 0xFF0CFF27, 0x8AFF29
    .word 0x8BFF2A, 0x39210835, 0x4A0F390E, 0x58A5402, 0xC5005408
    .word 0x2080918, 0x503E78FF, 0x53887C7A, 0xFF2701FF, 0x14070408
    .word 0x8091CD3, 0x3A1EFF02, 0x800427FF, 0x351EFF02, 0x8093108
    .word 0x1EFF0232, 0x42AFF3A, 0x1EFF0280, 0x54330835, 0x918CD00
    .word 0x8090808, 0x1EFF0234, 0x42BFF3A, 0x1EFF0280, 0x54350835
    .word 0x918DA00, 0x8090808, 0x1EFF0236, 0x42CFF3A, 0x1EFF0280
    .word 0x9370835, 0xFF023808, 0x32FF3A1E, 0xFF028004, 0x3908351E
    .word 0x23A0809, 0xFF3A1EFF, 0x2800435, 0x8351EFF, 0x3CFF023B
    .word 0x14, 0x1CFF2700, 0xFF530708, 0x1CDB1400, 0xFF020809
    .word 0x37FF3A1E, 0x8358004, 0xE400543C, 0x2080918, 0x14D2FF
    .word 0x53000000, 0xFF2701FF, 0x14070408, 0x8091CD3, 0x3A1EFF02
    .word 0x800439FF, 0x143CFF02, 0x0
    .word 0x80CFF27, 0x390E3907, 0x2940490F, 0x2A008AFF, 0x4A008BFF
    .word 0x3B015403, 0x5FF0440, 0x5FF0047, 0x1FF0041, 0x1C0F800
    .word 0x303F0000, 0xC25FF29, 0x201FF53, 0xFF4E3CFF, 0x8FF27FF
    .word 0x183F0708, 0x3C00043F, 0x8B154000, 0x3C08091C, 0xFC374000
    .word 0x27080348, 0x7FF18FF, 0x2701FF02, 0x7080CFF, 0x91C8B15
    .word 0x8, 0x57D450, 0x18040802, 0xFE0000, 0x8000000
    .word 0x206003F, 0x8501EFF, 0xCFF271F, 0xA03E0708, 0x41887C84
    .word 0x8001FF00, 0x80FC, 0xF8005400, 0x4A08091C, 0x74EC802
    .word 0x3F343F08, 0x1EFF021C, 0x808FF27, 0x1DF51407, 0xFF020809
    .word 0xFF3A1E, 0xFF028004, 0x108351E, 0x2020809, 0x8351EFF
    .word 0x8004903, 0x0
    .word 0x1C470000, 0xAD4D00A0, 0x10FF0201, 0x200EA4D, 0x201268FF
    .word 0x8091DFD, 0x123CFF02, 0x91E0C20, 0x3CFF0208, 0x1DFD2012
    .word 0xFF020809, 0x220133C, 0x835B4FF, 0xFE005404, 0x808091C
    .word 0x2050809, 0xFF3A5AFF, 0x280040B, 0x143CFF, 0x27000000
    .word 0x7080CFF, 0x126FF29, 0x127FF29, 0x405AFF02, 0x4704FF04
    .word 0x4104FF00, 0x1FF00, 0x0
    .word 0x29303F00, 0x290C27FF, 0x290741FF, 0x2B0740FF, 0x6007F602
    .word 0x8082800, 0x1C00004C, 0x3B08091E, 0x43F183F, 0x40003C00
    .word 0x91DAA15, 0x20005A08, 0xE34D00
    .word 0x1520FF02
    .word 0x8091DFD, 0x20015A, 0x200E34D, 0xC1520FF, 0x8091E
    .word 0x3000093, 0x40000, 0x1E0000, 0x400000, 0xC000C000
    .word 0x80400E4, 0x5006003F, 0xFF021F08, 0xCFF271E, 0xE43E0708
    .word 0x54887C86, 0x91E2C00, 0x18024A08, 0x3F08079A, 0x21C3F34
    .word 0xFF2778FF, 0x14070808, 0x8091EE4, 0x3A1EFF02, 0x800400FF
    .word 0x351EFF02, 0x8090108, 0x1EFF0202, 0x401FF3A, 0x1EFF0280
    .word 0x14, 0x1004D00, 0xFF04FF27, 0x3083507, 0x1278FF02
    .word 0x91EEC20, 0x214E08, 0x400FF27, 0x1EE41407, 0xFF020809
    .word 0x2FF3A1E, 0xFF028004, 0x408351E, 0x1EFB2012, 0x8090809
    .word 0x1EFF0205, 0x403FF3A, 0x1480, 0xFF290000, 0x6320C29
    .word 0x41FF2A53, 0xFF026107, 0x7A5514, 0x43F183F, 0x1FF02
    .word 0x1540003C, 0x8091EC5, 0x20005A, 0x200E34D, 0xEC1520FF
    .word 0x5A08091E, 0x4D002001, 0xFF0200E4, 0x1EFB1520, 0x809
    .word 0xC000C000, 0x80400E4, 0x400010C, 0x18, 0xFF80
    .word 0x140408, 0x800080, 0x4080000, 0xFFC00028, 0xFFC0
    .word 0xC00008, 0x400E4C0, 0x400008, 0x400E2C0, 0x8
    .word 0x3E06003F, 0x887C8C14, 0x5401FF02, 0x91F0C00, 0x68024A08
    .word 0x3F08079A, 0x4B1C3F34, 0x80922D5, 0x22B42012, 0xFF020809
    .word 0x8FF271E, 0x97140708, 0x2080922, 0xFF3A1EFF, 0x2800400
    .word 0x8351EFF, 0x2080901, 0x3A1EFF02, 0x800403FF, 0x22C32012
    .word 0xFF020809, 0x143C, 0x20130000, 0x4D00634E, 0xFF2700D7
    .word 0x207FF04, 0x8351EFF, 0x78FF0203, 0x400FF27, 0x22971407
    .word 0xFF020809, 0x5FF3A1E, 0xFF028004, 0x408351E, 0x1F140054
    .word 0x9080809, 0xFF020508, 0x6FF3A1E, 0xFF028004, 0x608351E
    .word 0x1F210054, 0x9080809, 0x8350708, 0x9080908, 0x2001C4E
    .word 0xFF3A1EFF, 0x2800412, 0x8351EFF, 0xB08090A, 0x3A1EFF02
    .word 0x800418FF, 0x351EFF02, 0x8090C08, 0x1EFF020D, 0x423FF3A
    .word 0x1EFF0280, 0x14, 0x4E201300, 0xD74D0063, 0x4FF2700
    .word 0xFF0207FF, 0xE083596, 0x400FF27, 0x22971407, 0xFF020809
    .word 0x24FF3A1E, 0xFF028004, 0xF08351E, 0x2100809, 0xFF3A1EFF
    .word 0x2800426, 0x8351EFF, 0x12080911, 0x3A1EFF02, 0x800427FF
    .word 0x351EFF02, 0x8091308, 0x1EFF0214, 0x42AFF3A, 0x1EFF0280
    .word 0x9150835, 0xFF021608, 0x2B00543C, 0x808091F, 0x351EFF02
    .word 0x8091708, 0x1EFF0218, 0x42CFF3A, 0x1EFF0280, 0x9190835
    .word 0xFF021A08, 0x2EFF3A1E, 0xFF028004, 0x1B08351E, 0x21C0809
    .word 0xFF3A1EFF, 0x280042F, 0x143CFF, 0x27000000, 0x7080CFF
    .word 0x353CFF02, 0x8091D08, 0x2006A1E, 0xFF275AFF, 0x14070808
    .word 0x8092297, 0x3A1EFF02, 0x800430FF, 0x351EFF02, 0x8091F08
    .word 0x1EFF0220, 0x432FF3A, 0x1EFF0280, 0x9210835, 0xFF022208
    .word 0x33FF3A1E, 0xFF028004, 0x2308351E, 0x2240809, 0xFF3A1EFF
    .word 0x280043F, 0x8351EFF, 0x26080925, 0x3A1EFF02, 0x800441FF
    .word 0x351EFF02, 0x8092708, 0x1EFF0228, 0x443FF3A, 0x1EFF0280
    .word 0x14, 0x634E00, 0x2700BC4D, 0x7FF04FF, 0x7C97A83E
    .word 0x5AFF0288, 0x1F350054, 0x8350809, 0x1C4E30, 0x400FF27
    .word 0x22971407, 0xFF020809, 0x51FF3A1E, 0xFF028004, 0x3108351E
    .word 0x2320809, 0xFF3A1EFF, 0x280045D, 0x8351EFF, 0x34080933
    .word 0x3A1EFF02, 0x80045EFF, 0x351EFF02, 0x8093508, 0x1EFF0236
    .word 0x469FF3A, 0x1EFF0280, 0x9370835, 0xFF023808, 0x7DFF3A1E
    .word 0xFF028004, 0x3908351E, 0x143A0809, 0x0
    .word 0x2700BC4D, 0x7FF24FF, 0x1400FF53, 0x809229F, 0x3A3CFF02
    .word 0x800481FF, 0x1F3D0054, 0xFF020809, 0x143C, 0xFF530000
    .word 0x3B083501, 0x400FF27, 0x22971407, 0xFF020809, 0x3C08353C
    .word 0x23D0809, 0xFF3A1EFF, 0x2800482, 0x8351EFF, 0x3F08093E
    .word 0x3A1EFF02, 0x800483FF, 0x351EFF02, 0x8094008, 0x1EFF0241
    .word 0x485FF3A, 0x1EFF0280, 0x9420835, 0xFF024308, 0x86FF3A1E
    .word 0xFF028004, 0x4408351E, 0x2450809, 0xFF3A1EFF, 0x280048F
    .word 0x8351EFF, 0x47080946, 0x3A1EFF02, 0x800492FF, 0x14
    .word 0x2BFF2900, 0x2A006A0C, 0x77172AFF, 0x32FF2901, 0x14FF0217
    .word 0x3F007B55, 0x2043F18, 0x3C0001FF, 0x74154000, 0x3C080922
    .word 0x38374000, 0x27080349, 0x7FF20FF, 0x1501FF02, 0x8092274
    .word 0x20005A, 0x200E34D, 0xB41520FF, 0x5A080922, 0x4D002001
    .word 0xFF0200E4, 0x22C31520, 0x809, 0xF76EB5F0, 0x7128FEEE
    .word 0xBDF02000, 0x40004000, 0x80400E3, 0x80001004, 0xFF80FF
    .word 0x800, 0x3E06003F, 0x887CA1C0, 0x5401FF02, 0x922E000
    .word 0x6C024A08, 0x3F08079D, 0x21C3F34, 0x8351EFF, 0x8FF2780
    .word 0xCF140708, 0x2080923, 0xFF3A1EFF, 0x2800400, 0x8351EFF
    .word 0x2080901, 0x3A1EFF02, 0x800404FF, 0x351EFF02, 0x8090308
    .word 0x1EFF0204, 0x405FF3A, 0x1EFF0280, 0x54050835, 0x922E800
    .word 0x8090808, 0x1EFF0206, 0x40FFF3A, 0x1EFF0280, 0x9070835
    .word 0xFF020808, 0x11FF3A1E, 0xFF028004, 0x143C, 0x8500000
    .word 0x1CFF271F, 0xFF530704, 0x23B51400, 0xFF020809, 0x1EFF0278
    .word 0x412FF3A, 0x3CFF0280, 0x14, 0xCFF2700, 0xFF290708
    .word 0xFF020C2D, 0x14C3C, 0x80923D8, 0x43F183F, 0x40003C00
    .word 0x348FC37, 0x18FF2708, 0xFF0207FF, 0xCFF2701, 0x98150708
    .word 0x3C080923, 0x98154000, 0x80923, 0x4000003, 0x0
    .word 0x0, 0x0
    .word 0xF14000, 0x8FE000B, 0x3E06003F, 0x887CA6E4, 0x5301FF02
    .word 0x5400FF, 0x80923E8, 0xC1A8024A, 0x343F0805, 0xA3141C3F
    .word 0x2080924, 0xFF3A3CFF, 0x2800400, 0x143CFF, 0x27000000
    .word 0x70408FF, 0x9249B14, 0x1EFF0208, 0x401FF3A, 0x3CFF0280
    .word 0x14, 0xCFF2700, 0xFF020708, 0xFF293C, 0x23FF2A0C
    .word 0x60063201, 0x32030832, 0xC6676007, 0xF6670417, 0x2F670717
    .word 0x75670718, 0xB7670218, 0x8500318, 0xB4FF021F, 0x4FF0440
    .word 0x4FF0047, 0x1FF0041, 0x0
    .word 0x303F0000, 0xE01FF29, 0x2801FF53, 0x4CFFFF, 0x924C000
    .word 0x183F3B08, 0x3C00043F, 0x38154000, 0x3C080924, 0xFC374000
    .word 0x27080348, 0x7FF18FF, 0x2701FF02, 0x7080CFF, 0x9243815
    .word 0x8, 0x4000106, 0x0, 0x0, 0x0
/*For debugging purposes, connect comment at any range!*/
