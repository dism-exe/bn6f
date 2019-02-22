	.include "include/macros.inc"

	.section ewram_2000000

// temporarily making this as a constant to
// make detecting fake instances of this easier
// timer_2000000:: // 0x2000000
	.space 96
dword_2000060:: // 0x2000060
	.space 16
unk_2000070:: // 0x2000070
	.space 32
unk_2000090:: // 0x2000090
	.space 16
unk_20000A0:: // 0x20000a0
	.space 96
unk_2000100:: // 0x2000100
	.space 256
unk_2000200:: // 0x2000200
	.space 16
byte_2000210:: // 0x2000210
	.space 2
byte_2000212:: // 0x2000212
	.space 1
byte_2000213:: // 0x2000213
	.space 1
word_2000214:: // 0x2000214
	.space 2
word_2000216:: // 0x2000216
	.space 2
dword_2000218:: // 0x2000218
	.space 8
dword_2000220:: // 0x2000220
	.space 64
unk_2000260:: // 0x2000260
	.space 48
reqBBS_requestEntriesList:: // 0x2000290
	.space 128
unk_2000310:: // 0x2000310
	.space 2
byte_2000312:: // 0x2000312
	.space 2
byte_2000314:: // 0x2000314
	.space 1
byte_2000315:: // 0x2000315
	.space 3
byte_2000318:: // 0x2000318
	.space 4
byte_200031C:: // 0x200031c
	.space 2
byte_200031E:: // 0x200031e
	.space 1
byte_200031F:: // 0x200031f
	.space 1
byte_2000320:: // 0x2000320
	.space 1
byte_2000321:: // 0x2000321
	.space 1
word_2000322:: // 0x2000322
	.space 2
dword_2000324:: // 0x2000324
	.space 4
byte_2000328:: // 0x2000328
	.space 4
byte_200032C:: // 0x200032c
	.space 4
dword_2000330:: // 0x2000330
	.space 64
unk_2000370:: // 0x2000370
	.space 368
byte_20004E0:: // 0x20004e0
	.space 400
unk_2000670:: // 0x2000670
	.space 256
unk_2000770:: // 0x2000770
	.space 16
byte_2000780:: // 0x2000780
	.space 1
byte_2000781:: // 0x2000781
	.space 1
byte_2000782:: // 0x2000782
	.space 1
byte_2000783:: // 0x2000783
	.space 1
byte_2000784:: // 0x2000784
	.space 7
byte_200078B:: // 0x200078b
	.space 2
byte_200078D:: // 0x200078d
	.space 1
byte_200078E:: // 0x200078e
	.space 2
dword_2000790:: // 0x2000790
	.space 8
byte_2000798:: // 0x2000798
	.space 16
byte_20007A8:: // 0x20007a8
	.space 46
byte_20007D6:: // 0x20007d6
	.space 100
byte_200083A:: // 0x200083a
	.space 102
byte_20008A0:: // 0x20008a0
	.space 512
byte_2000AA0:: // 0x2000aa0
	.space 1
byte_2000AA1:: // 0x2000aa1
	.space 1
byte_2000AA2:: // 0x2000aa2
	.space 1
byte_2000AA3:: // 0x2000aa3
	.space 1
byte_2000AA4:: // 0x2000aa4
	.space 1
byte_2000AA5:: // 0x2000aa5
	.space 1
word_2000AA6:: // 0x2000aa6
	.space 2
byte_2000AA8:: // 0x2000aa8
	.space 3
byte_2000AAB:: // 0x2000aab
	.space 1
dword_2000AAC:: // 0x2000aac
	.space 4
dword_2000AB0:: // 0x2000ab0
	.space 4
dword_2000AB4:: // 0x2000ab4
	.space 4
dword_2000AB8:: // 0x2000ab8
	.space 8
unk_2000AC0:: // 0x2000ac0
	.space 15
byte_2000ACF:: // 0x2000acf
	.space 2
byte_2000AD1:: // 0x2000ad1
	.space 2
byte_2000AD3:: // 0x2000ad3
	.space 2
byte_2000AD5:: // 0x2000ad5
	.space 1
byte_2000AD6:: // 0x2000ad6
	.space 1
byte_2000AD7:: // 0x2000ad7
	.space 1
byte_2000AD8:: // 0x2000ad8
	.space 1
byte_2000AD9:: // 0x2000ad9
	.space 1
word_2000ADA:: // 0x2000ada
	.space 2
word_2000ADC:: // 0x2000adc
	.space 20
unk_2000AF0:: // 0x2000af0
	.space 64
dword_2000B30:: // 0x2000b30
	.space 16
unk_2000B40:: // 0x2000b40
	.space 3
byte_2000B43:: // 0x2000b43
	.space 1
byte_2000B44:: // 0x2000b44
	.space 1
byte_2000B45:: // 0x2000b45
	.space 1
word_2000B46:: // 0x2000b46
	.space 2
byte_2000B48:: // 0x2000b48
	.space 1
byte_2000B49:: // 0x2000b49
	.space 3
byte_2000B4C:: // 0x2000b4c
	.space 6
word_2000B52:: // 0x2000b52
	.space 2
word_2000B54:: // 0x2000b54
	.space 6
word_2000B5A:: // 0x2000b5a
	.space 2
word_2000B5C:: // 0x2000b5c
	.space 132
unk_2000BE0:: // 0x2000be0
	.space 320
byte_2000D20:: // 0x2000d20
	.space 1
byte_2000D21:: // 0x2000d21
	.space 7
dword_2000D28:: // 0x2000d28
	.space 4
dword_2000D2C:: // 0x2000d2c
	.space 148
dword_2000DC0:: // 0x2000dc0
	.space 4
dword_2000DC4:: // 0x2000dc4
	.space 252
byte_2000EC0:: // 0x2000ec0
	.space 6
byte_2000EC6:: // 0x2000ec6
	.space 16
byte_2000ED6:: // 0x2000ed6
	.space 178
dword_2000F88:: // 0x2000f88
	.space 12
dword_2000F94:: // 0x2000f94
	.space 4
dword_2000F98:: // 0x2000f98
	.space 4
dword_2000F9C:: // 0x2000f9c
	.space 4
word_2000FA0:: // 0x2000fa0
	.space 32
unk_2000FC0:: // 0x2000fc0
	.space 16
unk_2000FD0:: // 0x2000fd0
	.space 16
byte_2000FE0:: // 0x2000fe0
	.space 1
byte_2000FE1:: // 0x2000fe1
	.space 15
unk_2000FF0:: // 0x2000ff0
	.space 32
byte_2001010:: // 0x2001010
	.space 1
byte_2001011:: // 0x2001011
	.space 1
byte_2001012:: // 0x2001012
	.space 1
byte_2001013:: // 0x2001013
	.space 1
dword_2001014:: // 0x2001014
	.space 4
byte_2001018:: // 0x2001018
	.space 1
byte_2001019:: // 0x2001019
	.space 1
byte_200101A:: // 0x200101a
	.space 2
dword_200101C:: // 0x200101c
	.space 4
dword_2001020:: // 0x2001020
	.space 4
dword_2001024:: // 0x2001024
	.space 4
dword_2001028:: // 0x2001028
	.space 4
dword_200102C:: // 0x200102c
	.space 4
dword_2001030:: // 0x2001030
	.space 4
dword_2001034:: // 0x2001034
	.space 4
byte_2001038:: // 0x2001038
	.space 1
byte_2001039:: // 0x2001039
	.space 1
byte_200103A:: // 0x200103a
	.space 1
byte_200103B:: // 0x200103b
	.space 37
eUnusedExtraToolkitPtrsOffset:: // 0x2001060
	.space 4
dword_2001064:: // 0x2001064
	.space 124
eActiveOverworldNPCObjectsBitfield:: // 0x20010e0
	.space 16
byte_20010F0:: // 0x20010f0
	.space 48
rngSeed_2001120:: // 0x2001120
	.space 16
unk_2001130:: // 0x2001130
	.space 16
dword_2001140:: // 0x2001140
	.space 16
reqBBS_bxo_2001150:: // 0x2001150
	.space 4
byte_2001154:: // 0x2001154
	.space 36
dword_2001178:: // 0x2001178
	.space 12
unk_2001184:: // 0x2001184
	.space 2
unk_2001186:: // 0x2001186
	.space 22
unk_200119C:: // 0x200119c
	.space 2
unk_200119E:: // 0x200119E
	.space 382
unk_200131C:: // 0x200131c
	.space 212
dword_20013F0:: // 0x20013f0
	.space 16
unk_2001400:: // 0x2001400
	.space 268
unk_200150C:: // 0x200150c
	.space 244
byte_2001600:: // 0x2001600
	.space 512
word_2001800:: // 0x2001800
	.space 2
byte_2001802:: // 0x2001802
	.space 6
unk_2001808:: // 0x2001808
	.space 16
byte_2001818:: // 0x2001818
	.space 16
unk_2001828:: // 0x2001828
	.space 20
byte_200183C:: // 0x200183c
	.space 20
unk_2001850:: // 0x2001850
	.space 16
byte_2001860:: // 0x2001860
	.space 32
byte_2001880:: // 0x2001880
	.space 32
byte_20018A0:: // 0x20018a0
	.space 16
unk_20018B0:: // 0x20018b0
	.space 8
dword_20018B8:: // 0x20018b8
	.space 8
unk_20018C0:: // 0x20018c0
	.space 40
dword_20018E8:: // 0x20018e8
	.space 4
unk_20018EC:: // 0x20018ec
	.space 1
byte_20018ED:: // 0x20018ed
	.space 1
byte_20018EE:: // 0x20018ee
	.space 2
dword_20018F0:: // 0x20018f0
	.space 4
byte_20018F4:: // 0x20018f4
	.space 88
dword_200194C:: // 0x200194c
	.space 4
byte_2001950:: // 0x2001950
	.space 88
dword_20019A8:: // 0x20019a8
	.space 4
byte_20019AC:: // 0x20019ac
	.space 88
dword_2001A04:: // 0x2001a04
	.space 4
byte_2001A08:: // 0x2001a08
	.space 88
dword_2001A60:: // 0x2001a60
	.space 4
byte_2001A64:: // 0x2001a64
	.space 88
dword_2001ABC:: // 0x2001abc
	.space 4
byte_2001AC0:: // 0x2001ac0
	.space 192
eToolkitExtraPtrsMemory::
eGameState:: // 0x2001b80
	game_state_struct eGameState
eGameStateEnd::
	.space 4
unk_2001C04:: // 0x2001c04
	.space 132
eEventFlags:: // 0x2001c88
	.space 1264
unk_2002178:: // 0x2002178
	.space 164
unk_200221C:: // 0x200221c
	.space 20
unk_2002230:: // 0x2002230
	.space 236
unk_200231C:: // 0x200231c
	.space 2048
unk_2002B1C:: // 0x2002b1c
	.space 512
unk_2002D1C:: // 0x2002d1c
	.space 1048
unk_2003134:: // 0x2003134
	.space 404
unk_20032C8:: // 0x20032c8
	.space 108
unk_2003334:: // 0x2003334
	.space 232
unk_200341C:: // 0x200341c
	.space 1024
unk_200381C:: // 0x200381c
	.space 2352
unk_200414C:: // 0x200414c
	.space 68
unk_2004190:: // 0x2004190
	.space 396
unk_200431C:: // 0x200431c
	.space 20
unk_2004330:: // 0x2004330
	.space 4
unk_2004334:: // 0x2004334
	.space 4
unk_2004338:: // 0x2004338
	.space 16
unk_2004348:: // 0x2004348
	.space 468
unk_200451C:: // 0x200451c
	.space 688
unk_20047CC:: // 0x20047cc
	.space 704
unk_2004A8C:: // 0x2004a8c
	.space 404
unk_2004C20:: // 0x2004c20
	.space 516
unk_2004E24:: // 0x2004e24
	.space 516
unk_2005028:: // 0x2005028
	.space 8
unk_2005030:: // 0x2005030
	.space 8
unk_2005038:: // 0x2005038
	.space 260
eToolkitExtraPtrsMemoryEnd:: // 0x200153c
// 0x200153c, end of eToolkit extra pointers
	.space 256 // additional buffer for dummied out randomization

	.space 1348
dynamicArr:: // 0x2005780
	.space 15
unk_200578F:: // 0x200578f
	.space 33

eOverworldNPCObjects:: // 0x20057b0
	overworld_npc_object_struct eOverworldNPCObject0
	overworld_npc_object_struct eOverworldNPCObject1
	overworld_npc_object_struct eOverworldNPCObject2
	overworld_npc_object_struct eOverworldNPCObject3
	overworld_npc_object_struct eOverworldNPCObject4
	overworld_npc_object_struct eOverworldNPCObject5
	overworld_npc_object_struct eOverworldNPCObject6
	overworld_npc_object_struct eOverworldNPCObject7
	overworld_npc_object_struct eOverworldNPCObject8
	overworld_npc_object_struct eOverworldNPCObject9
	overworld_npc_object_struct eOverworldNPCObject10
	overworld_npc_object_struct eOverworldNPCObject11
	overworld_npc_object_struct eOverworldNPCObject12
	overworld_npc_object_struct eOverworldNPCObject13
	overworld_npc_object_struct eOverworldNPCObject14
	overworld_npc_object_struct eOverworldNPCObject15
eOverworldNPCObjectsEnd::

byte_2006530:: // 0x2006530
	.space 128
reqBBS_numRequestsSent:: // 0x20065b0
	.space 4
byte_20065B4:: // 0x20065b4
	.space 12
byte_20065C0:: // 0x20065c0
    .space 32
byte_20065E0:: // 0x20065E0
    .space 1
byte_20065E1:: // 0x20065E1
    .space 2
byte_20065E3:: // 0x20065E3
    .space 2
byte_20065E5:: // 0x20065E5
    .space 2
byte_20065E7:: // 0x20065E7
    .space 137
byte_2006670:: // 0x2006670
	.space 4
byte_2006674:: // 0x2006674
	.space 2
byte_2006676:: // 0x2006676
	.space 154
byte_2006710:: // 0x2006710
	.space 4
byte_2006714:: // 0x2006714
	.space 12
byte_2006720:: // 0x2006720
	.space 32
dword_2006740:: // 0x2006740
	.space 4
dword_2006744:: // 0x2006744
	.space 12
unk_2006750:: // 0x2006750
	.space 32
word_2006770:: // 0x2006770
	.space 2
byte_2006772:: // 0x2006772
	.space 2
word_2006774:: // 0x2006774
	.space 2
word_2006776:: // 0x2006776
	.space 2
unk_2006778:: // 0x2006778
	.space 16
byte_2006788:: // 0x2006788
	.space 16
unk_2006798:: // 0x2006798
	.space 22
byte_20067AE:: // 0x20067ae
	.space 18
dword_20067C0:: // 0x20067c0
	.space 128
unk_2006840:: // 0x2006840
	.space 8
byte_2006848:: // 0x2006848
	.space 1
byte_2006849:: // 0x2006849
	.space 1021
unk_2006C46:: // 0x2006c46
	.space 2
dword_2006C48:: // 0x2006c48
	.space 8
byte_2006C50:: // 0x2006c50
	.space 56
unk_2006C88:: // 0x2006c88
	.space 56
unk_2006CC0:: // 0x2006cc0
	.space 56
unk_2006CF8:: // 0x2006cf8
	.space 56
unk_2006D30:: // 0x2006d30
	.space 56
unk_2006D68:: // 0x2006d68
	.space 56
byte_2006DA0:: // 0x2006da0
	.space 56
unk_2006DD8:: // 0x2006dd8
	.space 36
word_2006DFC:: // 0x2006dfc
	.space 2
byte_2006DFE:: // 0x2006dfe
	.space 2
byte_2006E00:: // 0x2006e00
	.space 1
byte_2006E01:: // 0x2006e01
	.space 1
word_2006E02:: // 0x2006e02
	.space 2
word_2006E04:: // 0x2006e04
	.space 4
unk_2006E08:: // 0x2006e08
	.space 20
unk_2006E1C:: // 0x2006e1c
	.space 220
unk_2006EF8:: // 0x2006ef8
	.space 4728
unk_2008170:: // 0x2008170
	.space 64
byte_20081B0:: // 0x20081b0
	.space 1
byte_20081B1:: // 0x20081b1
	.space 1
word_20081B2:: // 0x20081b2
	.space 2
dword_20081B4:: // 0x20081b4
	.space 4
dword_20081B8:: // 0x20081b8
	.space 4
dword_20081BC:: // 0x20081bc
	.space 4
dword_20081C0:: // 0x20081c0
	.space 16
unk_20081D0:: // 0x20081d0
	.space 640
byte_2008450:: // 0x2008450
	.space 1
byte_2008451:: // 0x2008451
	.space 1
byte_2008452:: // 0x2008452
	.space 1
byte_2008453:: // 0x2008453
	.space 1317
byte_2008978:: // 0x2008978
	.space 4
dword_200897C:: // 0x200897c
	.space 4
unk_2008980:: // 0x2008980
	.space 1280
unk_2008E80:: // 0x2008e80
	.space 1280
eBattleObjectsLinkedListStart:: // 0x2009380
	battle_object_linked_list_struct eBattleObjectsLinkedListStart

byte_2009390:: // 0x2009390
	.space 8
word_2009398:: // 0x2009398
	.space 2
word_200939A:: // 0x200939a
	.space 2
word_200939C:: // 0x200939c
	.space 8
dword_20093A4:: // 0x20093a4
	.space 4
dword_20093A8:: // 0x20093a8
	.space 8

eToolkit:: // 0x20093b0
	toolkit_struct eToolkit
eToolkitEnd:: // 0x2009444
	.space 12

unk_2009450:: // 0x2009450
	.space 16
unk_2009460:: // 0x2009460
	.space 16
byte_2009470:: // 0x2009470
	.space 16
unk_2009480:: // 0x2009480
	.space 64
byte_20094C0:: // 0x20094c0
	.space 2
word_20094C2:: // 0x20094c2
	.space 2
dword_20094C4:: // 0x20094c4
	.space 4
dword_20094C8:: // 0x20094c8
	.space 12
byte_20094D4:: // 0x20094d4
	.space 444
dword_2009690:: // 0x2009690
	.space 4
dword_2009694:: // 0x2009694
	.space 12
unk_20096A0:: // 0x20096a0
	.space 3
byte_20096A3:: // 0x20096a3
	.space 1
dword_20096A4:: // 0x20096a4
	.space 4
dword_20096A8:: // 0x20096a8
	.space 4
dword_20096AC:: // 0x20096ac
	.space 4
dword_20096B0:: // 0x20096b0
	.space 4
dword_20096B4:: // 0x20096b4
	.space 4
dword_20096B8:: // 0x20096b8
	.space 4
dword_20096BC:: // 0x20096bc
	.space 4
dword_20096C0:: // 0x20096c0
	.space 4
dword_20096C4:: // 0x20096c4
	.space 4
dword_20096C8:: // 0x20096c8
	.space 4
dword_20096CC:: // 0x20096cc
	.space 4
dword_20096D0:: // 0x20096d0
	.space 8
byte_20096D8:: // 0x20096d8
	.space 8
unk_20096E0:: // 0x20096e0
	.space 96
unk_2009740:: // 0x2009740
	.space 16
unk_2009750:: // 0x2009750
	.space 64
byte_2009790:: // 0x2009790
	.space 16
byte_20097A0:: // 0x20097a0
	.space 1
byte_20097A1:: // 0x20097a1
	.space 1
byte_20097A2:: // 0x20097a2
	.space 2
dword_20097A4:: // 0x20097a4
	.space 4
dword_20097A8:: // 0x20097a8
	.space 256
byte_20098A8:: // 0x20098a8
	.space 1
byte_20098A9:: // 0x20098a9
	.space 1
word_20098AA:: // 0x20098aa
	.space 6
unk_20098B0:: // 0x20098b0
	.space 128
dword_2009930:: // 0x2009930
	.space 16
byte_2009940:: // 0x2009940
	.space 64
eCamera:: // 0x2009980
	.space 144
dword_2009A10:: // 0x2009a10
	.space 8
dword_2009A18:: // 0x2009a18
	.space 12
dword_2009A24:: // 0x2009a24
	.space 4
dword_2009A28:: // 0x2009a28
	.space 4
dword_2009A2C:: // 0x2009a2c
	.space 4
sSubmenu:: // 0x2009a30
	.space 80
unk_2009A80:: // 0x2009a80
	.space 2
unk_2009A82:: // 0x2009a82
	.space 2
unk_2009A84:: // 0x2009a84
	.space 2
unk_2009A86:: // 0x2009a86
	.space 2
unk_2009A88:: // 0x2009a88
	.space 2
unk_2009A8A:: // 0x2009a8a
	.space 38
eBattleObjectsLinkedListSentinel:: // 0x2009ab0
	battle_object_linked_list_struct eBattleObjectsLinkedListSentinel

unk_2009AC0:: // 0x2009ac0
	.space 512
dword_2009CC0:: // 0x2009cc0
	.space 16
sChatbox:: // 0x2009cd0
	.space 560
unk_2009F00:: // 0x2009f00
	.space 52
eActiveOWPlayerObjectBitfield:: // 0x2009f34
	.space 4
dword_2009F38:: // 0x2009f38
	.space 8
eOWPlayerObject:: // 0x2009f40
	overworld_player_object_struct eOWPlayerObject
eOWPlayerObjectEnd:: // 0x200a008
	.space 1
byte_200A009:: // 0x200a009
	.space 1
byte_200A00A:: // 0x200a00a
	.space 1
byte_200A00B:: // 0x200a00b
	.space 1
word_200A00C:: // 0x200a00c
	.space 2
word_200A00E:: // 0x200a00e
	.space 2
unk_200A010:: // 0x200a010
	.space 512
iCurrFrame:: // 0x200a210
	.space 16
byte_200A220:: // 0x200a220
	.space 1
byte_200A221:: // 0x200a221
	.space 1
byte_200A222:: // 0x200a222
	.space 1
byte_200A223:: // 0x200a223
	.space 1
byte_200A224:: // 0x200a224
	.space 20
dword_200A238:: // 0x200a238
	.space 4
dword_200A23C:: // 0x200a23c
	.space 4
dword_200A240:: // 0x200a240
	.space 4
dword_200A244:: // 0x200a244
	.space 12
dword_200A250:: // 0x200a250
	.space 4
dword_200A254:: // 0x200a254
	.space 4
dword_200A258:: // 0x200a258
	.space 4
dword_200A25C:: // 0x200a25c
	.space 20

eJoypad:: // 0x200a270
	joypad_struct eJoypad
eJoypadEnd::

unk_200A284:: // 0x200a284
	.space 4

	.space 8
byte_200A290:: // 0x200a290
	.space 1
byte_200A291:: // 0x200a291
	.space 2
unk_200A293:: // 0x200a293
	.space 17
byte_200A2A4:: // 0x200a2a4
	.space 2
byte_200A2A6:: // 0x200a2a6
	.space 1
byte_200A2A7:: // 0x200a2a7
	.space 9
word_200A2B0:: // 0x200a2b0
	.space 2
word_200A2B2:: // 0x200a2b2
	.space 2
word_200A2B4:: // 0x200a2b4
	.space 2
word_200A2B6:: // 0x200a2b6
	.space 234
unk_200A3A0:: // 0x200a3a0
	.space 16
unk_200A3B0:: // 0x200a3b0
	.space 16
unk_200A3C0:: // 0x200a3c0
	.space 32
unk_200A3E0:: // 0x200a3e0
	.space 32
unk_200A400:: // 0x200a400
	.space 32
unk_200A420:: // 0x200a420
	.space 32
byte_200A440:: // 0x200a440
	.space 1
byte_200A441:: // 0x200a441
	.space 1
byte_200A442:: // 0x200a442
	.space 1
byte_200A443:: // 0x200a443
	.space 1
word_200A444:: // 0x200a444
	.space 4
word_200A448:: // 0x200a448
	.space 2
word_200A44A:: // 0x200a44a
	.space 6
off_200A450:: // 0x200a450
	.space 4
off_200A454:: // 0x200a454
	.space 4
word_200A458:: // 0x200a458
	.space 4
word_200A45C:: // 0x200a45c
	.space 36
i_joGameSubsysSel:: // 0x200a480
	.space 16
dword_200A490:: // 0x200a490
	.space 4
byte_200A494:: // 0x200a494
	.space 4
dword_200A498:: // 0x200a498
	.space 520
byte_200A6A0:: // 0x200a6a0
	.space 4
dword_200A6A4:: // 0x200a6a4
	.space 4
dword_200A6A8:: // 0x200a6a8
	.space 4
dword_200A6AC:: // 0x200a6ac
	.space 68
word_200A6F0:: // 0x200a6f0
	.space 2
word_200A6F2:: // 0x200a6f2
	.space 2
word_200A6F4:: // 0x200a6f4
	.space 2
word_200A6F6:: // 0x200a6f6
	.space 378
dword_200A870:: // 0x200a870
	.space 16
dword_200A880:: // 0x200a880
	.space 4
dword_200A884:: // 0x200a884
	.space 4
dword_200A888:: // 0x200a888
	.space 8
dword_200A890:: // 0x200a890
	.space 4
dword_200A894:: // 0x200a894
	.space 516
unk_200AA98:: // 0x200aa98
	.space 384
dword_200AC18:: // 0x200ac18
	.space 4
dword_200AC1C:: // 0x200ac1c
	.space 4
byte_200AC20:: // 0x200ac20
	.space 1
byte_200AC21:: // 0x200ac21
	.space 1
byte_200AC22:: // 0x200ac22
	.space 1
byte_200AC23:: // 0x200ac23
	.space 4
byte_200AC27:: // 0x200ac27
	.space 9
unk_200AC30:: // 0x200ac30
	.space 3
byte_200AC33:: // 0x200ac33
	.space 1
byte_200AC34:: // 0x200ac34
	.space 1
byte_200AC35:: // 0x200ac35
	.space 11
unk_200AC40:: // 0x200ac40
	.space 64
unk_200AC80:: // 0x200ac80
	.space 4
word_200AC84:: // 0x200ac84
	.space 44
dword_200ACB0:: // 0x200acb0
	.space 28
dword_200ACCC:: // 0x200accc
	.space 4
dword_200ACD0:: // 0x200acd0
	.space 16
byte_200ACE0:: // 0x200ace0
	.space 1
byte_200ACE1:: // 0x200ace1
	.space 1
byte_200ACE2:: // 0x200ace2
	.space 6
dword_200ACE8:: // 0x200ace8
	.space 4
dword_200ACEC:: // 0x200acec
	.space 4
dword_200ACF0:: // 0x200acf0
	.space 5
byte_200ACF5:: // 0x200acf5
	.space 3
dword_200ACF8:: // 0x200acf8
	.space 4
byte_200ACFC:: // 0x200acfc
	.space 4
dword_200AD00:: // 0x200ad00
	.space 4
byte_200AD04:: // 0x200ad04
	.space 1
byte_200AD05:: // 0x200ad05
	.space 1
word_200AD06:: // 0x200ad06
	.space 10
sStartScr:: // 0x200ad10
	.space 592
BattleSettings_200AF60:: // 0x200af60
	.space 16
eUnkBattleObjectLinkedList:: // 0x200af70
	battle_object_linked_list_struct eUnkBattleObjectLinkedList

byte_200AF80:: // 0x200af80
	.space 1
byte_200AF81:: // 0x200af81
	.space 1
byte_200AF82:: // 0x200af82
	.space 1
byte_200AF83:: // 0x200af83
	.space 1
byte_200AF84:: // 0x200af84
	.space 1
byte_200AF85:: // 0x200af85
	.space 3
dword_200AF88:: // 0x200af88
	.space 4
dword_200AF8C:: // 0x200af8c
	.space 4
byte_200AF90:: // 0x200af90
	.space 4
dword_200AF94:: // 0x200af94
	.space 12
unk_200AFA0:: // 0x200afa0
	.space 512
byte_200B1A0:: // 0x200b1a0
	.space 1
byte_200B1A1:: // 0x200b1a1
	.space 1
byte_200B1A2:: // 0x200b1a2
	.space 1
byte_200B1A3:: // 0x200b1a3
	.space 5
dword_200B1A8:: // 0x200b1a8
	.space 8
dword_200B1B0:: // 0x200b1b0
	.space 4
word_200B1B4:: // 0x200b1b4
	.space 2
word_200B1B6:: // 0x200b1b6
	.space 2
word_200B1B8:: // 0x200b1b8
	.space 2
word_200B1BA:: // 0x200b1ba
	.space 246
unk_200B2B0:: // 0x200b2b0
	.space 512
dword_200B4B0:: // 0x200b4b0
	.space 4
dword_200B4B4:: // 0x200b4b4
	.space 4
dword_200B4B8:: // 0x200b4b8
	.space 4
dword_200B4BC:: // 0x200b4bc
	.space 4
dword_200B4C0:: // 0x200b4c0
	.space 1904
byte_200BC30:: // 0x200bc30
	.space 1
byte_200BC31:: // 0x200bc31
	.space 1
byte_200BC32:: // 0x200bc32
	.space 3
byte_200BC35:: // 0x200bc35
	.space 7
byte_200BC3C:: // 0x200bc3c
	.space 1
byte_200BC3D:: // 0x200bc3d
	.space 1
byte_200BC3E:: // 0x200bc3e
	.space 18
byte_200BC50:: // 0x200bc50
	.space 1
byte_200BC51:: // 0x200bc51
	.space 1
byte_200BC52:: // 0x200bc52
	.space 1
byte_200BC53:: // 0x200bc53
	.space 1
byte_200BC54:: // 0x200bc54
	.space 1
byte_200BC55:: // 0x200bc55
	.space 1
byte_200BC56:: // 0x200bc56
	.space 1
byte_200BC57:: // 0x200bc57
	.space 1
word_200BC58:: // 0x200bc58
	.space 2
word_200BC5A:: // 0x200bc5a
	.space 2
dword_200BC5C:: // 0x200bc5c
	.space 4
byte_200BC60:: // 0x200bc60
	.space 1
byte_200BC61:: // 0x200bc61
	.space 15
unk_200BC70:: // 0x200bc70
	.space 512
byte_200BE70:: // 0x200be70
	.space 1
byte_200BE71:: // 0x200be71
	.space 3
word_200BE74:: // 0x200be74
	.space 2
word_200BE76:: // 0x200be76
	.space 2
dword_200BE78:: // 0x200be78
	.space 4
dword_200BE7C:: // 0x200be7c
	.space 4
dword_200BE80:: // 0x200be80
	.space 4
dword_200BE84:: // 0x200be84
	.space 4
dword_200BE88:: // 0x200be88
	.space 4
dword_200BE8C:: // 0x200be8c
	.space 4
dword_200BE90:: // 0x200be90
	.space 16
unk_200BEA0:: // 0x200bea0
	.space 576
unk_200C0E0:: // 0x200c0e0
	.space 192
unk_200C1A0:: // 0x200c1a0
	.space 16
unk_200C1B0:: // 0x200c1b0
	.space 240
unk_200C2A0:: // 0x200c2a0
	.space 528
unk_200C4B0:: // 0x200c4b0
	.space 32
unk_200C4D0:: // 0x200c4d0
	.space 32
unk_200C4F0:: // 0x200c4f0
	.space 304
byte_200C620:: // 0x200c620
	.space 384
byte_200C7A0:: // 0x200c7a0
	.space 32
byte_200C7C0:: // 0x200c7c0
	.space 32
byte_200C7E0:: // 0x200c7e0
	.space 16
byte_200C7F0:: // 0x200c7f0
	.space 304
byte_200C920:: // 0x200c920
	.space 768
byte_200CC20:: // 0x200cc20
	.space 384
dword_200CDA0:: // 0x200cda0
	.space 4
dword_200CDA4:: // 0x200cda4
	.space 4
dword_200CDA8:: // 0x200cda8
	.space 4
dword_200CDAC:: // 0x200cdac
	.space 4
dword_200CDB0:: // 0x200cdb0
	.space 4
dword_200CDB4:: // 0x200cdb4
	.space 4
dword_200CDB8:: // 0x200cdb8
	.space 4
byte_200CDBC:: // 0x200cdbc
	.space 100
dword_200CE20:: // 0x200ce20
	.space 4
dword_200CE24:: // 0x200ce24
	.space 4
dword_200CE28:: // 0x200ce28
	.space 4
dword_200CE2C:: // 0x200ce2c
	.space 4
dword_200CE30:: // 0x200ce30
	.space 4
dword_200CE34:: // 0x200ce34
	.space 4
dword_200CE38:: // 0x200ce38
	.space 4
byte_200CE3C:: // 0x200ce3c
	.space 228
byte_200CF20:: // 0x200cf20
	.space 768
byte_200D220:: // 0x200d220
	.space 512
dword_200D420:: // 0x200d420
	.space 4
dword_200D424:: // 0x200d424
	.space 4
dword_200D428:: // 0x200d428
	.space 4
dword_200D42C:: // 0x200d42c
	.space 4
dword_200D430:: // 0x200d430
	.space 4
dword_200D434:: // 0x200d434
	.space 4
dword_200D438:: // 0x200d438
	.space 4
byte_200D43C:: // 0x200d43c
	.space 2148
byte_200DCA0:: // 0x200dca0
	.space 76
dword_200DCEC:: // 0x200dcec
	.space 4
word_200DCF0:: // 0x200dcf0
	.space 2
word_200DCF2:: // 0x200dcf2
	.space 2
word_200DCF4:: // 0x200dcf4
	.space 2
word_200DCF6:: // 0x200dcf6
	.space 2
word_200DCF8:: // 0x200dcf8
	.space 2
word_200DCFA:: // 0x200dcfa
	.space 2
word_200DCFC:: // 0x200dcfc
	.space 2
word_200DCFE:: // 0x200dcfe
	.space 2
word_200DD00:: // 0x200dd00
	.space 2
word_200DD02:: // 0x200dd02
	.space 2
word_200DD04:: // 0x200dd04
	.space 12
byte_200DD10:: // 0x200dd10
	.space 1
byte_200DD11:: // 0x200dd11
	.space 3
dword_200DD14:: // 0x200dd14
byte_200DD14:: // 0x200dd14
	.space 12
byte_200DD20:: // 0x200dd20
	.space 512
byte_200DF20:: // 0x200df20
	.space 1
byte_200DF21:: // 0x200df21
	.space 3
byte_200DF24:: // 0x200df24
	.space 1
byte_200DF25:: // 0x200df25
	.space 3
byte_200DF28:: // 0x200df28
	.space 1
byte_200DF29:: // 0x200df29
	.space 1
byte_200DF2A:: // 0x200df2a
	.space 1
byte_200DF2B:: // 0x200df2b
	.space 5
word_200DF30:: // 0x200df30
	.space 16
unk_200DF40:: // 0x200df40
	.space 1280
unk_200E440:: // 0x200e440
	.space 320
unk_200E580:: // 0x200e580
	.space 192
unk_200E640:: // 0x200e640
	.space 2304
unk_200EF40:: // 0x200ef40
	.space 1024
dword_200F340:: // 0x200f340
	.space 8
byte_200F348:: // 0x200f348
	.space 8
dword_200F350:: // 0x200f350
	.space 16
byte_200F360:: // 0x200f360
	.space 1
byte_200F361:: // 0x200f361
	.space 1
byte_200F362:: // 0x200f362
	.space 6
dword_200F368:: // 0x200f368
	.space 24
unk_200F380:: // 0x200f380
	.space 8
unk_200F388:: // 0x200f388
	.space 1
unk_200F389:: // 0x200f389
	.space 7
unk_200F390:: // 0x200f390
	.space 16
unk_200F3A0:: // 0x200f3a0
	.space 16
dword_200F3B0:: // 0x200f3b0
	.space 8
unk_200F3B8:: // 0x200f3b8
	.space 12
unk_200F3C4:: // 0x200f3c4
	.space 12
dword_200F3D0:: // 0x200f3d0
	.space 16
dword_200F3E0:: // 0x200f3e0
	.space 4
dword_200F3E4:: // 0x200f3e4
	.space 8
dword_200F3EC:: // 0x200f3ec
	.space 4
dword_200F3F0:: // 0x200f3f0
	.space 8
dword_200F3F8:: // 0x200f3f8
	.space 4
dword_200F3FC:: // 0x200f3fc
	.space 20
byte_200F410:: // 0x200f410
	.space 48
byte_200F440:: // 0x200f440
	.space 4
dword_200F444:: // 0x200f444
	.space 4
byte_200F448:: // 0x200f448
	.space 4
unk_200F44C:: // 0x200f44c
	.space 1
byte_200F44D:: // 0x200f44d
	.space 3
byte_200F450:: // 0x200f450
	.space 4
byte_200F454:: // 0x200f454
	.space 12
byte_200F460:: // 0x200f460
	.space 1
byte_200F461:: // 0x200f461
	.space 1
byte_200F462:: // 0x200f462
	.space 1
byte_200F463:: // 0x200f463
	.space 1
dword_200F464:: // 0x200f464
	.space 4
dword_200F468:: // 0x200f468
	.space 4
byte_200F46C:: // 0x200f46c
	.space 1
byte_200F46D:: // 0x200f46d
	.space 3
byte_200F470:: // 0x200f470
	.space 1
byte_200F471:: // 0x200f471
	.space 1
byte_200F472:: // 0x200f472
	.space 1
byte_200F473:: // 0x200f473
	.space 1
byte_200F474:: // 0x200f474
	.space 1
byte_200F475:: // 0x200f475
	.space 1
word_200F476:: // 0x200f476
	.space 18
byte_200F488:: // 0x200f488
	.space 1
byte_200F489:: // 0x200f489
	.space 487
byte_200F670:: // 0x200f670
	.space 1
byte_200F671:: // 0x200f671
	.space 1923
byte_200FDF4:: // 0x200fdf4
	.space 1
byte_200FDF5:: // 0x200fdf5
	.space 11
byte_200FE00:: // 0x200fe00
	.space 1
byte_200FE01:: // 0x200fe01
	.space 1
byte_200FE02:: // 0x200fe02
	.space 1
byte_200FE03:: // 0x200fe03
	.space 1
byte_200FE04:: // 0x200fe04
	.space 1
byte_200FE05:: // 0x200fe05
	.space 1
byte_200FE06:: // 0x200fe06
	.space 1
byte_200FE07:: // 0x200fe07
	.space 1
byte_200FE08:: // 0x200fe08
	.space 1
byte_200FE09:: // 0x200fe09
	.space 1
byte_200FE0A:: // 0x200fe0a
	.space 1
byte_200FE0B:: // 0x200fe0b
	.space 1
byte_200FE0C:: // 0x200fe0c
	.space 1
byte_200FE0D:: // 0x200fe0d
	.space 1
byte_200FE0E:: // 0x200fe0e
	.space 1
byte_200FE0F:: // 0x200fe0f
	.space 1
byte_200FE10:: // 0x200fe10
	.space 1
byte_200FE11:: // 0x200fe11
	.space 1
byte_200FE12:: // 0x200fe12
	.space 2
word_200FE14:: // 0x200fe14
	.space 2
word_200FE16:: // 0x200fe16
	.space 2
word_200FE18:: // 0x200fe18
	.space 2
word_200FE1A:: // 0x200fe1a
	.space 2
word_200FE1C:: // 0x200fe1c
	.space 2
word_200FE1E:: // 0x200fe1e
	.space 2
dword_200FE20:: // 0x200fe20
	.space 4
byte_200FE24:: // 0x200fe24
	.space 2
word_200FE26:: // 0x200fe26
	.space 10
byte_200FE30:: // 0x200fe30
	.space 2
word_200FE32:: // 0x200fe32
	.space 10
dword_200FE3C:: // 0x200fe3c
	.space 4
dword_200FE40:: // 0x200fe40
	.space 4
dword_200FE44:: // 0x200fe44
	.space 12
word_200FE50:: // 0x200fe50
	.space 16
byte_200FE60:: // 0x200fe60
	.space 2
byte_200FE62:: // 0x200fe62
	.space 1
unk_200FE63:: // 0x200fe63
	.space 1
byte_200FE64:: // 0x200fe64
	.space 12
unk_200FE70:: // 0x200fe70
	.space 16
byte_200FE80:: // 0x200fe80
	.space 16
unk_200FE90:: // 0x200fe90
	.space 340
byte_200FFE4:: // 0x200ffe4
	.space 12
unk_200FFF0:: // 0x200fff0
	.space 16
unk_2010000:: // 0x2010000
	.space 256
unk_2010100:: // 0x2010100
	.space 8
unk_2010108:: // 0x2010108
	.space 60
byte_2010144:: // 0x2010144
	.space 12
unk_2010150:: // 0x2010150
	.space 10
byte_201015A:: // 0x201015a
	.space 1
byte_201015B:: // 0x201015b
	.space 1
byte_201015C:: // 0x201015c
	.space 4
byte_2010160:: // 0x2010160
	.space 4
byte_2010164:: // 0x2010164
	.space 4
word_2010168:: // 0x2010168
	.space 72
byte_20101B0:: // 0x20101b0
	.space 4
byte_20101B4:: // 0x20101b4
	.space 28
byte_20101D0:: // 0x20101d0
	.space 4
byte_20101D4:: // 0x20101d4
	.space 12
byte_20101E0:: // 0x20101e0
	.space 12
unk_20101EC:: // 0x20101ec
	.space 28
unk_2010208:: // 0x2010208
	.space 20
byte_201021C:: // 0x201021c
	.space 1
byte_201021D:: // 0x201021d
	.space 3
byte_2010220:: // 0x2010220
	.space 16
unk_2010230:: // 0x2010230
	.space 64
byte_2010270:: // 0x2010270
	.space 4
byte_2010274:: // 0x2010274
	.space 12
byte_2010280:: // 0x2010280
	.space 4
byte_2010284:: // 0x2010284
	.space 4
byte_2010288:: // 0x2010288
	.space 4
byte_201028C:: // 0x201028c
	.space 4
byte_2010290:: // 0x2010290
	.space 1
byte_2010291:: // 0x2010291
	.space 1
byte_2010292:: // 0x2010292
	.space 1
byte_2010293:: // 0x2010293
	.space 1
unk_2010294:: // 0x2010294
	.space 50
word_20102C6:: // 0x20102c6
	.space 10
word_20102D0:: // 0x20102d0
	.space 16
unk_20102E0:: // 0x20102e0
	.space 40
unk_2010308:: // 0x2010308
	.space 28
byte_2010324:: // 0x2010324
	.space 4
byte_2010328:: // 0x2010328
	.space 8
unk_2010330:: // 0x2010330
	.space 8
word_2010338:: // 0x2010338
	.space 4
byte_201033C:: // 0x201033c
	.space 4
byte_2010340:: // 0x2010340
	.space 16
unk_2010350:: // 0x2010350
	.space 2
word_2010352:: // 0x2010352
	.space 22
byte_2010368:: // 0x2010368
	.space 40
byte_2010390:: // 0x2010390
	.space 12
byte_201039C:: // 0x201039c
	.space 4
unk_20103A0:: // 0x20103a0
	.space 60
byte_20103DC:: // 0x20103dc
	.space 4
byte_20103E0:: // 0x20103e0
	.space 4
byte_20103E4:: // 0x20103e4
	.space 12
byte_20103F0:: // 0x20103f0
	.space 4
byte_20103F4:: // 0x20103f4
	.space 4
byte_20103F8:: // 0x20103f8
	.space 8
word_2010400:: // 0x2010400
	.space 8
byte_2010408:: // 0x2010408
	.space 8
unk_2010410:: // 0x2010410
	.space 8
dword_2010418:: // 0x2010418
	.space 8
word_2010420:: // 0x2010420
	.space 8
word_2010428:: // 0x2010428
	.space 8
byte_2010430:: // 0x2010430
	.space 4
byte_2010434:: // 0x2010434
	.space 12
unk_2010440:: // 0x2010440
	.space 60
byte_201047C:: // 0x201047c
	.space 4
byte_2010480:: // 0x2010480
	.space 16
unk_2010490:: // 0x2010490
	.space 64
unk_20104D0:: // 0x20104d0
	.space 56
off_2010508:: // 0x2010508
	.space 8
byte_2010510:: // 0x2010510
	.space 64
byte_2010550:: // 0x2010550
	.space 64
byte_2010590:: // 0x2010590
	.space 64
byte_20105D0:: // 0x20105d0
	.space 56
off_2010608:: // 0x2010608
	.space 8
byte_2010610:: // 0x2010610
	.space 64
byte_2010650:: // 0x2010650
	.space 64
byte_2010690:: // 0x2010690
	.space 64
byte_20106D0:: // 0x20106d0
	.space 56
off_2010708:: // 0x2010708
	.space 8
byte_2010710:: // 0x2010710
	.space 64
byte_2010750:: // 0x2010750
	.space 64
byte_2010790:: // 0x2010790
	.space 64
byte_20107D0:: // 0x20107d0
	.space 48
byte_2010800:: // 0x2010800
	.space 8
off_2010808:: // 0x2010808
	.space 8
byte_2010810:: // 0x2010810
	.space 64
byte_2010850:: // 0x2010850
	.space 64
off_2010890:: // 0x2010890
	.space 4
byte_2010894:: // 0x2010894
	.space 60
byte_20108D0:: // 0x20108d0
	.space 56
off_2010908:: // 0x2010908
	.space 8
byte_2010910:: // 0x2010910
	.space 64
byte_2010950:: // 0x2010950
	.space 64
byte_2010990:: // 0x2010990
	.space 64
byte_20109D0:: // 0x20109d0
	.space 56
off_2010A08:: // 0x2010a08
	.space 8
byte_2010A10:: // 0x2010a10
	.space 64
byte_2010A50:: // 0x2010a50
	.space 64
byte_2010A90:: // 0x2010a90
	.space 64
byte_2010AD0:: // 0x2010ad0
	.space 56
off_2010B08:: // 0x2010b08
	.space 8
byte_2010B10:: // 0x2010b10
	.space 64
byte_2010B50:: // 0x2010b50
	.space 64
byte_2010B90:: // 0x2010b90
	.space 16
byte_2010BA0:: // 0x2010ba0
	.space 64
byte_2010BE0:: // 0x2010be0
	.space 64
byte_2010C20:: // 0x2010c20
	.space 64
byte_2010C60:: // 0x2010c60
	.space 64
off_2010CA0:: // 0x2010ca0
	.space 12
dword_2010CAC:: // 0x2010cac
	.space 4
dword_2010CB0:: // 0x2010cb0
	.space 16
dword_2010CC0:: // 0x2010cc0
	.space 4
dword_2010CC4:: // 0x2010cc4
	.space 4
dword_2010CC8:: // 0x2010cc8
	.space 4
dword_2010CCC:: // 0x2010ccc
	.space 4
byte_2010CD0:: // 0x2010cd0
	.space 1
byte_2010CD1:: // 0x2010cd1
	.space 1
word_2010CD2:: // 0x2010cd2
	.space 2
word_2010CD4:: // 0x2010cd4
	.space 2
word_2010CD6:: // 0x2010cd6
	.space 4
word_2010CDA:: // 0x2010cda
	.space 1602
unk_201131C:: // 0x201131c
	.space 1252
byte_2011800:: // 0x2011800
	.space 5
byte_2011805:: // 0x2011805
	.space 91
byte_2011860:: // 0x2011860
	.space 1
byte_2011861:: // 0x2011861
	.space 1
byte_2011862:: // 0x2011862
	.space 1
byte_2011863:: // 0x2011863
	.space 445
dword_2011A20:: // 0x2011a20
	.space 4
word_2011A24:: // 0x2011a24
	.space 2
byte_2011A26:: // 0x2011a26
	.space 1
byte_2011A27:: // 0x2011a27
	.space 13
dword_2011A34:: // 0x2011a34
	.space 12
byte_2011A40:: // 0x2011a40
	.space 80
unk_2011A90:: // 0x2011a90
	.space 10
byte_2011A9A:: // 0x2011a9a
	.space 1
byte_2011A9B:: // 0x2011a9b
	.space 2
byte_2011A9D:: // 0x2011a9d
	.space 147
byte_2011B30:: // 0x2011b30
	.space 128
byte_2011BB0:: // 0x2011bb0
	.space 32
dword_2011BD0:: // 0x2011bd0
	.space 4
dword_2011BD4:: // 0x2011bd4
	.space 60
byte_2011C10:: // 0x2011c10
	.space 4
byte_2011C14:: // 0x2011c14
	.space 14
word_2011C22:: // 0x2011c22
	.space 2
word_2011C24:: // 0x2011c24
	.space 4
word_2011C28:: // 0x2011c28
	.space 4
dword_2011C2C:: // 0x2011c2c
	.space 8
dword_2011C34:: // 0x2011c34
	.space 28
unk_2011C50:: // 0x2011c50
	.space 4
unk_2011C54:: // 0x2011c54
	.space 1
unk_2011C55:: // 0x2011c55
	.space 1
unk_2011C56:: // 0x2011c56
	.space 1
unk_2011C57:: // 0x2011c57
	.space 1
byte_2011C58:: // 0x2011c58
	.space 104
dword_2011CC0:: // 0x2011cc0
	.space 32
unk_2011CE0:: // 0x2011ce0
	.space 48
dword_2011D10:: // 0x2011d10
	.space 4
word_2011D14:: // 0x2011d14
	.space 2
word_2011D16:: // 0x2011d16
	.space 2
byte_2011D18:: // 0x2011d18
	.space 1
byte_2011D19:: // 0x2011d19
	.space 1
byte_2011D1A:: // 0x2011d1a
	.space 1
byte_2011D1B:: // 0x2011d1b
	.space 1
byte_2011D1C:: // 0x2011d1c
	.space 4
dword_2011D20:: // 0x2011d20
	.space 4
dword_2011D24:: // 0x2011d24
	.space 4
word_2011D28:: // 0x2011d28
	.space 264
unk_2011E30:: // 0x2011e30
	.space 4
byte_2011E34:: // 0x2011e34
	.space 3
byte_2011E37:: // 0x2011e37
	.space 1
word_2011E38:: // 0x2011e38
	.space 8
byte_2011E40:: // 0x2011e40
	.space 2
byte_2011E42:: // 0x2011e42
	.space 4
byte_2011E46:: // 0x2011e46
	.space 10
eActiveOverworldMapObjectsBitfield:: // 0x2011e50
	.space 8

	.space 8

// some sort of state for some map script (bytecode)
eUnkMapScriptState_2011e60:: // 0x2011e60
	unk_map_script_state_2011e60_struct eUnkMapScriptState_2011e60
eUnkMapScriptState_2011e60End::
	.space 44
unk_2011EA0:: // 0x2011ea0
	.space 4
unk_2011EA4:: // 0x2011ea4
	.space 60
eOverworldMapObjects:: // 0x2011ee0
	.space 1
byte_2011EE1:: // 0x2011ee1
	.space 3
dword_2011EE4:: // 0x2011ee4
	.space 4
dword_2011EE8:: // 0x2011ee8
	.space 4
dword_2011EEC:: // 0x2011eec
	.space 4
dword_2011EF0:: // 0x2011ef0
	.space 4
dword_2011EF4:: // 0x2011ef4
	.space 552
unk_201211C:: // 0x201211c
	.space 256
unk_201221C:: // 0x201221c
	.space 2304
unk_2012B1C:: // 0x2012b1c
	.space 2560
unk_201351C:: // 0x201351c
	.space 256
unk_201361C:: // 0x201361c
	.space 512
unk_201381C:: // 0x201381c
	.space 140
byte_20138A8:: // 0x20138a8
	.space 1
byte_20138A9:: // 0x20138a9
	.space 3
dword_20138AC:: // 0x20138ac
	.space 4
dword_20138B0:: // 0x20138b0
	.space 4
dword_20138B4:: // 0x20138b4
	.space 4
dword_20138B8:: // 0x20138b8
	.space 4
dword_20138BC:: // 0x20138bc
	.space 100
dword_2013920:: // 0x2013920
	.space 4
word_2013924:: // 0x2013924
	.space 2
byte_2013926:: // 0x2013926
	.space 1
byte_2013927:: // 0x2013927
	.space 13
dword_2013934:: // 0x2013934
	.space 12
dword_2013940:: // 0x2013940
	.space 4
word_2013944:: // 0x2013944
	.space 2
byte_2013946:: // 0x2013946
	.space 1
byte_2013947:: // 0x2013947
	.space 13
dword_2013954:: // 0x2013954
	.space 12
unk_2013960:: // 0x2013960
	.space 5
byte_2013965:: // 0x2013965
	.space 15
word_2013974:: // 0x2013974
	.space 140
decomp_2013A00:: // 0x2013a00
	.space 512
unk_2013C00:: // 0x2013c00
	.space 64
unk_2013C40:: // 0x2013c40
	.space 960
unk_2014000:: // 0x2014000
	.space 2560
unk_2014A00:: // 0x2014a00
	.space 4096
unk_2015A00:: // 0x2015a00
	.space 1024
unk_2015E00:: // 0x2015e00
	.space 1024
unk_2016200:: // 0x2016200
	.space 256
unk_2016300:: // 0x2016300
	.space 256
unk_2016400:: // 0x2016400
	.space 1536
byte_2016A00:: // 0x2016a00
	.space 4
byte_2016A04:: // 0x2016a04
	.space 2044
byte_2017200:: // 0x2017200
	.space 4
byte_2017204:: // 0x2017204
	.space 2044
byte_2017A00:: // 0x2017a00
	.space 4
byte_2017A04:: // 0x2017a04
	.space 28
byte_2017A20:: // 0x2017a20
	.space 192
unk_2017AE0:: // 0x2017ae0
	.space 196
unk_2017BA4:: // 0x2017ba4
	.space 92
unk_2017C00:: // 0x2017c00
	.space 104
unk_2017C68:: // 0x2017c68
	.space 24
unk_2017C80:: // 0x2017c80
	.space 160
unk_2017D20:: // 0x2017d20
	.space 224
unk_2017E00:: // 0x2017e00
	.space 352
unk_2017F60:: // 0x2017f60
	.space 160
unk_2018000:: // 0x2018000
	.space 512
unk_2018200:: // 0x2018200
	.space 4
reqBBS_tile_data:: // 0x2018204
	.space 508
unk_2018400:: // 0x2018400
	.space 512
unk_2018600:: // 0x2018600
	.space 512
unk_2018800:: // 0x2018800
	.space 512
unk_2018A00:: // 0x2018a00
	.space 4
unk_2018A04:: // 0x2018a04
	.space 508
unk_2018C00:: // 0x2018c00
	.space 512
unk_2018E00:: // 0x2018e00
	.space 512
unk_2019000:: // 0x2019000
	.space 512
unk_2019200:: // 0x2019200
	.space 4
unk_2019204:: // 0x2019204
	.space 508
unk_2019400:: // 0x2019400
	.space 4
unk_2019404:: // 0x2019404
	.space 508
unk_2019600:: // 0x2019600
	.space 512
unk_2019800:: // 0x2019800
	.space 512
byte_2019A00:: // 0x2019a00
	.space 1
byte_2019A01:: // 0x2019a01
	.space 1
word_2019A02:: // 0x2019a02
	.space 2
byte_2019A04:: // 0x2019a04
	.space 508
unk_2019C00:: // 0x2019c00
	.space 512
unk_2019E00:: // 0x2019e00
	.space 1024
unk_201A200:: // 0x201a200
	.space 1024
unk_201A600:: // 0x201a600
	.space 512
unk_201A800:: // 0x201a800
	.space 512
unk_201AA00:: // 0x201aa00
	.space 4
unk_201AA04:: // 0x201aa04
	.space 1020
byte_201AE00:: // 0x201ae00
	.space 1
byte_201AE01:: // 0x201ae01
	.space 1
word_201AE02:: // 0x201ae02
	.space 2
byte_201AE04:: // 0x201ae04
	.space 1
byte_201AE05:: // 0x201ae05
	.space 1
word_201AE06:: // 0x201ae06
	.space 1018
byte_201B200:: // 0x201b200
	.space 640
byte_201B480:: // 0x201b480
	.space 1408
unk_201BA00:: // 0x201ba00
	.space 4
unk_201BA04:: // 0x201ba04
	.space 12
byte_201BA10:: // 0x201ba10
	.space 16
byte_201BA20:: // 0x201ba20
	.space 32
byte_201BA40:: // 0x201ba40
	.space 288
byte_201BB60:: // 0x201bb60
	.space 224
byte_201BC40:: // 0x201bc40
	.space 64
byte_201BC80:: // 0x201bc80
	.space 312
byte_201BDB8:: // 0x201bdb8
	.space 64
byte_201BDF8:: // 0x201bdf8
	.space 136
byte_201BE80:: // 0x201be80
	.space 128
byte_201BF00:: // 0x201bf00
	.space 32
byte_201BF20:: // 0x201bf20
	.space 288
unk_201C040:: // 0x201c040
	.space 192
unk_201C100:: // 0x201c100
	.space 176
unk_201C1B0:: // 0x201c1b0
	.space 80
unk_201C200:: // 0x201c200
	.space 32
unk_201C220:: // 0x201c220
	.space 216
unk_201C2F8:: // 0x201c2f8
	.space 136
unk_201C380:: // 0x201c380
	.space 128
unk_201C400:: // 0x201c400
	.space 128
unk_201C480:: // 0x201c480
	.space 32
unk_201C4A0:: // 0x201c4a0
	.space 16
unk_201C4B0:: // 0x201c4b0
	.space 16
unk_201C4C0:: // 0x201c4c0
	.space 28
unk_201C4DC:: // 0x201c4dc
	.space 4
word_201C4E0:: // 0x201c4e0
	.space 2
word_201C4E2:: // 0x201c4e2
	.space 14
unk_201C4F0:: // 0x201c4f0
	.space 16
unk_201C500:: // 0x201c500
	.space 512
unk_201C700:: // 0x201c700
	.space 128
byte_201C780:: // 0x201c780
	.space 640
byte_201CA00:: // 0x201ca00
	.space 32
unk_201CA20:: // 0x201ca20
	.space 316
unk_201CB5C:: // 0x201cb5c
	.space 36
unk_201CB80:: // 0x201cb80
	.space 160
unk_201CC20:: // 0x201cc20
	.space 736
unk_201CF00:: // 0x201cf00
	.space 32
unk_201CF20:: // 0x201cf20
	.space 96
unk_201CF80:: // 0x201cf80
	.space 160
unk_201D020:: // 0x201d020
	.space 256
unk_201D120:: // 0x201d120
	.space 96
unk_201D180:: // 0x201d180
	.space 92
unk_201D1DC:: // 0x201d1dc
	.space 68
unk_201D220:: // 0x201d220
	.space 96
unk_201D280:: // 0x201d280
	.space 120
unk_201D2F8:: // 0x201d2f8
	.space 40
unk_201D320:: // 0x201d320
	.space 512
unk_201D520:: // 0x201d520
	.space 256
unk_201D620:: // 0x201d620
	.space 192
unk_201D6E0:: // 0x201d6e0
	.space 32
unk_201D700:: // 0x201d700
	.space 32
unk_201D720:: // 0x201d720
	.space 44
byte_201D74C:: // 0x201d74c
	.space 40
unk_201D774:: // 0x201d774
	.space 76
unk_201D7C0:: // 0x201d7c0
	.space 56
unk_201D7F8:: // 0x201d7f8
	.space 56
unk_201D830:: // 0x201d830
	.space 28
unk_201D84C:: // 0x201d84c
	.space 16
unk_201D85C:: // 0x201d85c
	.space 40
unk_201D884:: // 0x201d884
	.space 508
word_201DA80:: // 0x201da80
	.space 160
unk_201DB20:: // 0x201db20
	.space 256
unk_201DC20:: // 0x201dc20
	.space 336
unk_201DD70:: // 0x201dd70
	.space 364
unk_201DEDC:: // 0x201dedc
	.space 700
unk_201E198:: // 0x201e198
	.space 236
unk_201E284:: // 0x201e284
	.space 412
dword_201E420:: // 0x201e420
	.space 316
unk_201E55C:: // 0x201e55c
	.space 276
unk_201E670:: // 0x201e670
	.space 688
unk_201E920:: // 0x201e920
	.space 120
unk_201E998:: // 0x201e998
	.space 580
unk_201EBDC:: // 0x201ebdc
	.space 68
dword_201EC20:: // 0x201ec20
	.space 12
unk_201EC2C:: // 0x201ec2c
	.space 96
unk_201EC8C:: // 0x201ec8c
	.space 32
unk_201ECAC:: // 0x201ecac
	.space 32
unk_201ECCC:: // 0x201eccc
	.space 340
unk_201EE20:: // 0x201ee20
	.space 592
byte_201F070:: // 0x201f070
	.space 296
unk_201F198:: // 0x201f198
	.space 252
unk_201F294:: // 0x201f294
	.space 92
unk_201F2F0:: // 0x201f2f0
	.space 48
unk_201F320:: // 0x201f320
	.space 256
dword_201F420:: // 0x201f420
	.space 208
unk_201F4F0:: // 0x201f4f0
	.space 176
unk_201F5A0:: // 0x201f5a0
	.space 336
unk_201F6F0:: // 0x201f6f0
	.space 304
unk_201F820:: // 0x201f820
	.space 376
unk_201F998:: // 0x201f998
	.space 352
unk_201FAF8:: // 0x201faf8
	.space 296
dword_201FC20:: // 0x201fc20
	.space 256
unk_201FD20:: // 0x201fd20
	.space 32
unk_201FD40:: // 0x201fd40
	.space 32
unk_201FD60:: // 0x201fd60
	.space 32
unk_201FD80:: // 0x201fd80
	.space 32
unk_201FDA0:: // 0x201fda0
	.space 608
unk_2020000:: // 0x2020000
	.space 408
unk_2020198:: // 0x2020198
	.space 104
unk_2020200:: // 0x2020200
	.space 4
unk_2020204:: // 0x2020204
	.space 640
unk_2020484:: // 0x2020484
	.space 124
unk_2020500:: // 0x2020500
	.space 524
unk_202070C:: // 0x202070c
	.space 788
unk_2020A20:: // 0x2020a20
	.space 480
unk_2020C00:: // 0x2020c00
	.space 1784
unk_20212F8:: // 0x20212f8
	.space 1528
unk_20218F0:: // 0x20218f0
	.space 1200
unk_2021DA0:: // 0x2021da0
	.space 592
unk_2021FF0:: // 0x2021ff0
	.space 688
unk_20222A0:: // 0x20222a0
	.space 80
unk_20222F0:: // 0x20222f0
	.space 1024
unk_20226F0:: // 0x20226f0
	.space 176
unk_20227A0:: // 0x20227a0
	.space 592
unk_20229F0:: // 0x20229f0
	.space 176
unk_2022AA0:: // 0x2022aa0
	.space 16
unk_2022AB0:: // 0x2022ab0
	.space 192
unk_2022B70:: // 0x2022b70
	.space 6
byte_2022B76:: // 0x2022b76
	.space 30
unk_2022B94:: // 0x2022b94
	.space 108
unk_2022C00:: // 0x2022c00
	.space 284
unk_2022D1C:: // 0x2022d1c
	.space 644
unk_2022FA0:: // 0x2022fa0
	.space 512
unk_20231A0:: // 0x20231a0
	.space 1660
unk_202381C:: // 0x202381c
	.space 484
reqBBS_requestEntries_IDs:: // 0x2023a00
	.space 416
word_2023BA0:: // 0x2023ba0
	.space 16
word_2023BB0:: // 0x2023bb0
	.space 16
byte_2023BC0:: // 0x2023bc0
	.space 8
byte_2023BC8:: // 0x2023bc8
	.space 8
unk_2023BD0:: // 0x2023bd0
	.space 976
word_2023FA0:: // 0x2023fa0
	.space 2
word_2023FA2:: // 0x2023fa2
	.space 2
word_2023FA4:: // 0x2023fa4
	.space 2
word_2023FA6:: // 0x2023fa6
	.space 10
unk_2023FB0:: // 0x2023fb0
	.space 16
unk_2023FC0:: // 0x2023fc0
	.space 720
unk_2024290:: // 0x2024290
	.space 224
unk_2024370:: // 0x2024370
	.space 36
unk_2024394:: // 0x2024394
	.space 60
unk_20243D0:: // 0x20243d0
	.space 24
unk_20243E8:: // 0x20243e8
	.space 24
unk_2024400:: // 0x2024400
	.space 200
unk_20244C8:: // 0x20244c8
	.space 56
unk_2024500:: // 0x2024500
	.space 56
unk_2024538:: // 0x2024538
	.space 28
unk_2024554:: // 0x2024554
	.space 56
unk_202458C:: // 0x202458c
	.space 768
unk_202488C:: // 0x202488c
	.space 372
unk_2024A00:: // 0x2024a00
	.space 32
unk_2024A20:: // 0x2024a20
	.space 432
unk_2024BD0:: // 0x2024bd0
	.space 48
unk_2024C00:: // 0x2024c00
	.space 16
unk_2024C10:: // 0x2024c10
	.space 496
unk_2024E00:: // 0x2024e00
	.space 140
unk_2024E8C:: // 0x2024e8c
	.space 260
unk_2024F90:: // 0x2024f90
	.space 32
unk_2024FB0:: // 0x2024fb0
	.space 192
unk_2025070:: // 0x2025070
	.space 304
unk_20251A0:: // 0x20251a0
	.space 16
unk_20251B0:: // 0x20251b0
	.space 80
unk_2025200:: // 0x2025200
	.space 44
dword_202522C:: // 0x202522c
	.space 16
unk_202523C:: // 0x202523c
	.space 64
unk_202527C:: // 0x202527c
	.space 64
unk_20252BC:: // 0x20252bc
	.space 324
unk_2025400:: // 0x2025400
	.space 4
unk_2025404:: // 0x2025404
	.space 508
unk_2025600:: // 0x2025600
	.space 256
unk_2025700:: // 0x2025700
	.space 768
unk_2025A00:: // 0x2025a00
	.space 4
reqBBS_requestNames_textualData:: // 0x2025a04
	.space 108
unk_2025A70:: // 0x2025a70
	.space 120
unk_2025AE8:: // 0x2025ae8
	.space 296
unk_2025C10:: // 0x2025c10
	.space 496
unk_2025E00:: // 0x2025e00
	.space 1024
unk_2026200:: // 0x2026200
	.space 512
unk_2026400:: // 0x2026400
	.space 4
unk_2026404:: // 0x2026404
	.space 508
unk_2026600:: // 0x2026600
	.space 256
unk_2026700:: // 0x2026700
	.space 368
unk_2026870:: // 0x2026870
	.space 400
unk_2026A00:: // 0x2026a00
	.space 32
unk_2026A20:: // 0x2026a20
	.space 480
unk_2026C00:: // 0x2026c00
	.space 16
unk_2026C10:: // 0x2026c10
	.space 1008
unk_2027000:: // 0x2027000
	.space 140
unk_202708C:: // 0x202708c
	.space 96
unk_20270EC:: // 0x20270ec
	.space 96
unk_202714C:: // 0x202714c
	.space 180
byte_2027200:: // 0x2027200
	.space 4
byte_2027204:: // 0x2027204
	.space 4
byte_2027208:: // 0x2027208
	.space 4
byte_202720C:: // 0x202720c
	.space 4
byte_2027210:: // 0x2027210
	.space 4
byte_2027214:: // 0x2027214
	.space 4
byte_2027218:: // 0x2027218
	.space 4
byte_202721C:: // 0x202721c
	.space 484
unk_2027400:: // 0x2027400
	.space 368
unk_2027570:: // 0x2027570
	.space 32
dword_2027590:: // 0x2027590
	.space 4
byte_2027594:: // 0x2027594
	.space 4
dword_2027598:: // 0x2027598
	.space 4
dword_202759C:: // 0x202759c
	.space 4
byte_20275A0:: // 0x20275a0
	.space 4
byte_20275A4:: // 0x20275a4
	.space 4
dword_20275A8:: // 0x20275a8
	.space 4
dword_20275AC:: // 0x20275ac
	.space 1108
unk_2027A00:: // 0x2027a00
	.space 1536
unk_2028000:: // 0x2028000
	.space 512
unk_2028200:: // 0x2028200
	.space 4
unk_2028204:: // 0x2028204
	.space 908
unk_2028590:: // 0x2028590
	.space 256
unk_2028690:: // 0x2028690
	.space 880
unk_2028A00:: // 0x2028a00
	.space 32
unk_2028A20:: // 0x2028a20
	.space 1504
unk_2029000:: // 0x2029000
	.space 512
unk_2029200:: // 0x2029200
	.space 2048
unk_2029A00:: // 0x2029a00
	.space 4
reqBBS_requestInfo_textOffsets:: // 0x2029a04
	.space 1020
unk_2029E00:: // 0x2029e00
	.space 4
unk_2029E04:: // 0x2029e04
	.space 508
unk_202A000:: // 0x202a000
	.space 32
word_202A020:: // 0x202a020
	.space 20
dword_202A034:: // 0x202a034
	.space 8
dword_202A03C:: // 0x202a03c
	.space 452
unk_202A200:: // 0x202a200
	.space 4
unk_202A204:: // 0x202a204
	.space 476
unk_202A3E0:: // 0x202a3e0
	.space 20
word_202A3F4:: // 0x202a3f4
	.space 8
word_202A3FC:: // 0x202a3fc
	.space 516
unk_202A600:: // 0x202a600
	.space 4
unk_202A604:: // 0x202a604
	.space 1276
unk_202AB00:: // 0x202ab00
	.space 1024
unk_202AF00:: // 0x202af00
	.space 2816
unk_202BA00:: // 0x202ba00
	.space 4
unk_202BA04:: // 0x202ba04
	.space 4092
unk_202CA00:: // 0x202ca00
	.space 512
unk_202CC00:: // 0x202cc00
	.space 512
unk_202CE00:: // 0x202ce00
	.space 512
unk_202D000:: // 0x202d000
	.space 512
unk_202D200:: // 0x202d200
	.space 512
unk_202D400:: // 0x202d400
	.space 512
unk_202D600:: // 0x202d600
	.space 512
unk_202D800:: // 0x202d800
	.space 512
unk_202DA00:: // 0x202da00
	.space 4
unk_202DA04:: // 0x202da04
	.space 508
unk_202DC00:: // 0x202dc00
	.space 512
unk_202DE00:: // 0x202de00
	.space 416
unk_202DFA0:: // 0x202dfa0
	.space 32
unk_202DFC0:: // 0x202dfc0
	.space 192
unk_202E080:: // 0x202e080
	.space 56
unk_202E0B8:: // 0x202e0b8
	.space 56
unk_202E0F0:: // 0x202e0f0
	.space 28
byte_202E10C:: // 0x202e10c
	.space 56
byte_202E144:: // 0x202e144
	.space 56
byte_202E17C:: // 0x202e17c
	.space 5120
byte_202F57C:: // 0x202f57c
	.space 644
byte_202F800:: // 0x202f800
	.space 512
byte_202FA00:: // 0x202fa00
	.space 4
byte_202FA04:: // 0x202fa04
	.space 1532
byte_2030000:: // 0x2030000
	.space 3
byte_2030003:: // 0x2030003
	.space 509
byte_2030200:: // 0x2030200
	.space 4
byte_2030204:: // 0x2030204
	.space 513
byte_2030405:: // 0x2030405
	.space 1115
comp_2030860:: // 0x2030860
	.space 416
unk_2030A00:: // 0x2030a00
	.space 1120
unk_2030E60:: // 0x2030e60
	.space 416
unk_2031000:: // 0x2031000
	.space 512
unk_2031200:: // 0x2031200
	.space 4
unk_2031204:: // 0x2031204
	.space 320
unk_2031344:: // 0x2031344
	.space 3260
decomp_2032000:: // 0x2032000
	.space 2560
unk_2032A00:: // 0x2032a00
	.space 4
unk_2032A04:: // 0x2032a04
	.space 764
unk_2032D00:: // 0x2032d00
	.space 768
dword_2033000:: // 0x2033000
	.space 4
word_2033004:: // 0x2033004
	.space 2
word_2033006:: // 0x2033006
	.space 6
dword_203300C:: // 0x203300c
	.space 4
word_2033010:: // 0x2033010
	.space 2
word_2033012:: // 0x2033012
	.space 6
word_2033018:: // 0x2033018
	.space 2
word_203301A:: // 0x203301a
	.space 10
word_2033024:: // 0x2033024
	.space 2
word_2033026:: // 0x2033026
	.space 2
word_2033028:: // 0x2033028
	.space 2
word_203302A:: // 0x203302a
	.space 6
word_2033030:: // 0x2033030
	.space 8
word_2033038:: // 0x2033038
	.space 2
word_203303A:: // 0x203303a
	.space 2
word_203303C:: // 0x203303c
	.space 2
word_203303E:: // 0x203303e
	.space 2
word_2033040:: // 0x2033040
	.space 2
word_2033042:: // 0x2033042
	.space 958
unk_2033400:: // 0x2033400
	.space 4
unk_2033404:: // 0x2033404
	.space 764
unk_2033700:: // 0x2033700
	.space 256
unk_2033800:: // 0x2033800
	.space 28
unk_203381C:: // 0x203381c
	.space 484
unk_2033A00:: // 0x2033a00
	.space 4
reqBBS_dialogList:: // 0x2033a04
	.space 508
unk_2033C00:: // 0x2033c00
	.space 44
dword_2033C2C:: // 0x2033c2c
	.space 4
dword_2033C30:: // 0x2033c30
	.space 976
eActiveT1BattleObjectsBitfield:: // 0x2034000
	.space 16
unk_2034010:: // 0x2034010
	.space 8
unk_2034018:: // 0x2034018
	.space 1
byte_2034019:: // 0x2034019
	.space 1
byte_203401A:: // 0x203401a
	.space 1
byte_203401B:: // 0x203401b
	.space 1
byte_203401C:: // 0x203401c
	.space 1
byte_203401D:: // 0x203401d
	.space 1
word_203401E:: // 0x203401e
	.space 98
unk_2034080:: // 0x2034080
	.space 124
dword_20340FC:: // 0x20340fc
	.space 740
unk_20343E0:: // 0x20343e0
	.space 32
unk_2034400:: // 0x2034400
	.space 88
unk_2034458:: // 0x2034458
	.space 224
unk_2034538:: // 0x2034538
	.space 56
unk_2034570:: // 0x2034570
	.space 56
unk_20345A8:: // 0x20345a8
	.space 28
unk_20345C4:: // 0x20345c4
	.space 56
unk_20345FC:: // 0x20345fc
	.space 224
unk_20346DC:: // 0x20346dc
	.space 56
unk_2034714:: // 0x2034714
	.space 56
unk_203474C:: // 0x203474c
	.space 28
unk_2034768:: // 0x2034768
	.space 56
unk_20347A0:: // 0x20347a0
	.space 56
unk_20347D8:: // 0x20347d8
	.space 40
dword_2034800:: // 0x2034800
	.space 20
unk_2034814:: // 0x2034814
	.space 88
unk_203486C:: // 0x203486c
	.space 20

eBattleState:: // 0x2034880
	battle_state_struct eBattleState
eBattleStateEnd:: // 0x2034970
	.space 48

dword_20349A0:: // 0x20349a0
	.space 4
byte_20349A4:: // 0x20349a4
	.space 1
byte_20349A5:: // 0x20349a5
	.space 3
dword_20349A8:: // 0x20349a8
	.space 4
word_20349AC:: // 0x20349ac
	.space 2
word_20349AE:: // 0x20349ae
	.space 2
byte_20349B0:: // 0x20349b0
	.space 1
byte_20349B1:: // 0x20349b1
	.space 15
byte_20349C0:: // 0x20349c0
	.space 64
unk_2034A00:: // 0x2034a00
	.space 4
unk_2034A04:: // 0x2034a04
	.space 12
byte_2034A10:: // 0x2034a10
	.space 80
unk_2034A60:: // 0x2034a60
	.space 100
unk_2034AC4:: // 0x2034ac4
	.space 108
unk_2034B30:: // 0x2034b30
	.space 60
unk_2034B6C:: // 0x2034b6c
	.space 660
unk_2034E00:: // 0x2034e00
	.space 340
eActiveT3BattleObjectsBitfield:: // 0x2034f54
	.space 12
unk_2034F60:: // 0x2034f60
	.space 160
unk_2035000:: // 0x2035000
	.space 90
unk_203505A:: // 0x203505a
	.space 300
unk_2035186:: // 0x2035186
	.space 2
unk_2035188:: // 0x2035188
	.space 4
unk_203518C:: // 0x203518c
	.space 4
unk_2035190:: // 0x2035190
	.space 4
unk_2035194:: // 0x2035194
	.space 4
unk_2035198:: // 0x2035198
	.space 200
unk_2035260:: // 0x2035260
	.space 1
byte_2035261:: // 0x2035261
	.space 7
dword_2035268:: // 0x2035268
	.space 4
unk_203526C:: // 0x203526c
	.space 1
byte_203526D:: // 0x203526d
	.space 7
dword_2035274:: // 0x2035274
	.space 12
byte_2035280:: // 0x2035280
	.space 1
byte_2035281:: // 0x2035281
	.space 1
byte_2035282:: // 0x2035282
	.space 9
byte_203528B:: // 0x203528b
	.space 1
byte_203528C:: // 0x203528c
	.space 6
byte_2035292:: // 0x2035292
	.space 1
byte_2035293:: // 0x2035293
	.space 2
byte_2035295:: // 0x2035295
	.space 1
byte_2035296:: // 0x2035296
	.space 1
byte_2035297:: // 0x2035297
	.space 1
byte_2035298:: // 0x2035298
	.space 1
byte_2035299:: // 0x2035299
	.space 1
byte_203529A:: // 0x203529a
	.space 1
byte_203529B:: // 0x203529b
	.space 1
byte_203529C:: // 0x203529c
	.space 2
byte_203529E:: // 0x203529e
	.space 1
byte_203529F:: // 0x203529f
	.space 1
word_20352A0:: // 0x20352a0
	.space 2
word_20352A2:: // 0x20352a2
	.space 2
word_20352A4:: // 0x20352a4
	.space 2
word_20352A6:: // 0x20352a6
	.space 2
word_20352A8:: // 0x20352a8
	.space 2
word_20352AA:: // 0x20352aa
	.space 2
word_20352AC:: // 0x20352ac
	.space 2
word_20352AE:: // 0x20352ae
	.space 2
word_20352B0:: // 0x20352b0
	.space 2
word_20352B2:: // 0x20352b2
	.space 2
word_20352B4:: // 0x20352b4
	.space 4
word_20352B8:: // 0x20352b8
	.space 8
dword_20352C0:: // 0x20352c0
	.space 4
dword_20352C4:: // 0x20352c4
	.space 4
dword_20352C8:: // 0x20352c8
	.space 4
byte_20352CC:: // 0x20352cc
	.space 20
dword_20352E0:: // 0x20352e0
	.space 4
dword_20352E4:: // 0x20352e4
	.space 44
dword_2035310:: // 0x2035310
	.space 16
unk_2035320:: // 0x2035320
	.space 448
unk_20354E0:: // 0x20354e0
	.space 64
unk_2035520:: // 0x2035520
	.space 736
dword_2035800:: // 0x2035800
	.space 512
unk_2035A00:: // 0x2035a00
	.space 4
unk_2035A04:: // 0x2035a04
	.space 616
unk_2035C6C:: // 0x2035c6c
	.space 32
unk_2035C8C:: // 0x2035c8c
	.space 1172
unk_2036120:: // 0x2036120
	.space 44
word_203614C:: // 0x203614c
	.space 420
unk_20362F0:: // 0x20362f0
	.space 44
word_203631C:: // 0x203631c
	.space 24
dword_2036334:: // 0x2036334
	.space 396
dword_20364C0:: // 0x20364c0
	.space 4
dword_20364C4:: // 0x20364c4
	.space 4
byte_20364C8:: // 0x20364c8
	.space 1
byte_20364C9:: // 0x20364c9
	.space 3
byte_20364CC:: // 0x20364cc
	.space 1
byte_20364CD:: // 0x20364cd
	.space 3
byte_20364D0:: // 0x20364d0
	.space 1
byte_20364D1:: // 0x20364d1
	.space 3
unk_20364D4:: // 0x20364d4
	.space 1
byte_20364D5:: // 0x20364d5
	.space 1
word_20364D6:: // 0x20364d6
	.space 2
dword_20364D8:: // 0x20364d8
	.space 4
dword_20364DC:: // 0x20364dc
	.space 4
word_20364E0:: // 0x20364e0
	.space 24
word_20364F8:: // 0x20364f8
	.space 2
word_20364FA:: // 0x20364fa
	.space 6
unk_2036500:: // 0x2036500
	.space 192
unk_20365C0:: // 0x20365c0
	.space 160
word_2036660:: // 0x2036660
	.space 4
word_2036664:: // 0x2036664
	.space 2
byte_2036666:: // 0x2036666
	.space 1
byte_2036667:: // 0x2036667
	.space 1
byte_2036668:: // 0x2036668
	.space 4
dword_203666C:: // 0x203666c
	.space 8
word_2036674:: // 0x2036674
	.space 76
byte_20366C0:: // 0x20366c0
	.space 2
word_20366C2:: // 0x20366c2
	.space 12
word_20366CE:: // 0x20366ce
	.space 12
word_20366DA:: // 0x20366da
	.space 12
word_20366E6:: // 0x20366e6
	.space 12
word_20366F2:: // 0x20366f2
	.space 12
byte_20366FE:: // 0x20366fe
	.space 6
byte_2036704:: // 0x2036704
	.space 12
eActiveT4BattleObjectsBitfield:: // 0x2036710
	.space 16
unk_2036720:: // 0x2036720
	.space 8
dword_2036728:: // 0x2036728
	.space 16
dword_2036738:: // 0x2036738
	.space 8
byte_2036740:: // 0x2036740
	.space 2
byte_2036742:: // 0x2036742
	.space 1
byte_2036743:: // 0x2036743
	.space 1
byte_2036744:: // 0x2036744
	.space 1
byte_2036745:: // 0x2036745
	.space 1
byte_2036746:: // 0x2036746
	.space 1
byte_2036747:: // 0x2036747
	.space 1
byte_2036748:: // 0x2036748
	.space 1
byte_2036749:: // 0x2036749
	.space 1
byte_203674A:: // 0x203674a
	.space 1
byte_203674B:: // 0x203674b
	.space 1
byte_203674C:: // 0x203674c
	.space 1
byte_203674D:: // 0x203674d
	.space 3
unk_2036750:: // 0x2036750
	.space 40
byte_2036778:: // 0x2036778
	.space 8
word_2036780:: // 0x2036780
	.space 2
word_2036782:: // 0x2036782
	.space 2
byte_2036784:: // 0x2036784
	.space 2
byte_2036786:: // 0x2036786
	.space 2
dword_2036788:: // 0x2036788
	.space 4
word_203678C:: // 0x203678c
	.space 4
unk_2036790:: // 0x2036790
	.space 40
unk_20367B8:: // 0x20367b8
	.space 40
dword_20367E0:: // 0x20367e0
	.space 16
dword_20367F0:: // 0x20367f0
	.space 4
byte_20367F4:: // 0x20367f4
	.space 44
dword_2036820:: // 0x2036820
	.space 4
dword_2036824:: // 0x2036824
	.space 4
dword_2036828:: // 0x2036828
	.space 4
dword_203682C:: // 0x203682c
	.space 4
byte_2036830:: // 0x2036830
	.space 16
byte_2036840:: // 0x2036840
	.space 1
byte_2036841:: // 0x2036841
	.space 1
word_2036842:: // 0x2036842
	.space 4
byte_2036846:: // 0x2036846
	.space 1
byte_2036847:: // 0x2036847
	.space 1
byte_2036848:: // 0x2036848
	.space 2
word_203684A:: // 0x203684a
	.space 2
word_203684C:: // 0x203684c
	.space 4
unk_2036850:: // 0x2036850
	.space 2
word_2036852:: // 0x2036852
	.space 5
byte_2036857:: // 0x2036857
	.space 1
byte_2036858:: // 0x2036858
	.space 1
byte_2036859:: // 0x2036859
	.space 7

	.section ewram_t4_battle_objects
eT4BattleObjects:: // 0x2036860
	t4_battle_object_struct eT4BattleObject0 // 0x203a9b0
	t4_battle_object_struct eT4BattleObject1 // 0x203aa88
	t4_battle_object_struct eT4BattleObject2 // 0x203ab60
	t4_battle_object_struct eT4BattleObject3 // 0x203ac38
	t4_battle_object_struct eT4BattleObject4
	t4_battle_object_struct eT4BattleObject5
	t4_battle_object_struct eT4BattleObject6
	t4_battle_object_struct eT4BattleObject7
	t4_battle_object_struct eT4BattleObject8
	t4_battle_object_struct eT4BattleObject9
	t4_battle_object_struct eT4BattleObject10
	t4_battle_object_struct eT4BattleObject11
	t4_battle_object_struct eT4BattleObject12
	t4_battle_object_struct eT4BattleObject13
	t4_battle_object_struct eT4BattleObject14
	t4_battle_object_struct eT4BattleObject15
	t4_battle_object_struct eT4BattleObject16
	t4_battle_object_struct eT4BattleObject17
	t4_battle_object_struct eT4BattleObject18
	t4_battle_object_struct eT4BattleObject19
	t4_battle_object_struct eT4BattleObject20
	t4_battle_object_struct eT4BattleObject21
	t4_battle_object_struct eT4BattleObject22
	t4_battle_object_struct eT4BattleObject23
	t4_battle_object_struct eT4BattleObject24
	t4_battle_object_struct eT4BattleObject25
	t4_battle_object_struct eT4BattleObject26
	t4_battle_object_struct eT4BattleObject27
	t4_battle_object_struct eT4BattleObject28
	t4_battle_object_struct eT4BattleObject29
	t4_battle_object_struct eT4BattleObject30
	t4_battle_object_struct eT4BattleObject31
eT4BattleObjectsEnd:: // 0x2038160

	.section ewram_2036860

	.space 3628

unk_203768C:: // 0x203768c
	.space 32
unk_20376AC:: // 0x20376ac
	.space 84
unk_2037700:: // 0x2037700
	.space 12
byte_203770C:: // 0x203770c
	.space 16
word_203771C:: // 0x203771c
	.space 64
dword_203775C:: // 0x203775c
	.space 4
dword_2037760:: // 0x2037760
	.space 16
byte_2037770:: // 0x2037770
	.space 16
unk_2037780:: // 0x2037780
	.space 12
byte_203778C:: // 0x203778c
	.space 18
word_203779E:: // 0x203779e
	.space 2
word_20377A0:: // 0x20377a0
	.space 4
word_20377A4:: // 0x20377a4
	.space 24
word_20377BC:: // 0x20377bc
	.space 4
word_20377C0:: // 0x20377c0
	.space 64
unk_2037800:: // 0x2037800
	.space 512
unk_2037A00:: // 0x2037a00
	.space 4
unk_2037A04:: // 0x2037a04
	.space 1884
unk_2038160:: // 0x2038160
	.space 1
byte_2038161:: // 0x2038161
	.space 15

	.section ewram_2038170

unk_2038170:: // 0x2038170
	.space 896
unk_20384F0:: // 0x20384f0
	.space 56
dword_2038528:: // 0x2038528
	.space 5320
unk_20399F0:: // 0x20399f0
	.space 2
word_20399F2:: // 0x20399f2
	.space 2
byte_20399F4:: // 0x20399f4
	.space 2
byte_20399F6:: // 0x20399f6
	.space 2
dword_20399F8:: // 0x20399f8
	.space 4
word_20399FC:: // 0x20399fc
	.space 4
unk_2039A00:: // 0x2039a00
	.space 2
word_2039A02:: // 0x2039a02
	.space 2
byte_2039A04:: // 0x2039a04
	.space 2
byte_2039A06:: // 0x2039a06
	.space 2
dword_2039A08:: // 0x2039a08
	.space 4
word_2039A0C:: // 0x2039a0c
	.space 4
dword_2039A10:: // 0x2039a10
	.space 144
unk_2039AA0:: // 0x2039aa0
	.space 60
unk_2039ADC:: // 0x2039adc
	.space 4
byte_2039AE0:: // 0x2039ae0
	.space 1
byte_2039AE1:: // 0x2039ae1
	.space 5
byte_2039AE6:: // 0x2039ae6
	.space 1
byte_2039AE7:: // 0x2039ae7
	.space 1
byte_2039AE8:: // 0x2039ae8
	.space 1
byte_2039AE9:: // 0x2039ae9
	.space 1
byte_2039AEA:: // 0x2039aea
	.space 1
byte_2039AEB:: // 0x2039aeb
	.space 1
byte_2039AEC:: // 0x2039aec
	.space 1
byte_2039AED:: // 0x2039aed
	.space 275
unk_2039C00:: // 0x2039c00
	.space 2
byte_2039C02:: // 0x2039c02
	.space 22
dword_2039C18:: // 0x2039c18
	.space 1016
dword_203A010:: // 0x203a010
	.space 144
unk_203A0A0:: // 0x203a0a0
	.space 736
unk_203A380:: // 0x203a380
	.space 1536
unk_203A980:: // 0x203a980
	.space 16
unk_203A990:: // 0x203a990
	.space 16
eT1BattleObjects:: // 0x203a9a0
	t1_battle_object_struct eT1BattleObject0 // 0x203a9b0
	t1_battle_object_struct eT1BattleObject1 // 0x203aa88
	t1_battle_object_struct eT1BattleObject2 // 0x203ab60
	t1_battle_object_struct eT1BattleObject3 // 0x203ac38
	t1_battle_object_struct eT1BattleObject4
	t1_battle_object_struct eT1BattleObject5
	t1_battle_object_struct eT1BattleObject6
	t1_battle_object_struct eT1BattleObject7
	t1_battle_object_struct eT1BattleObject8
	t1_battle_object_struct eT1BattleObject9
	t1_battle_object_struct eT1BattleObject10
	t1_battle_object_struct eT1BattleObject11
	t1_battle_object_struct eT1BattleObject12
	t1_battle_object_struct eT1BattleObject13
	t1_battle_object_struct eT1BattleObject14
	t1_battle_object_struct eT1BattleObject15
	t1_battle_object_struct eT1BattleObject16
	t1_battle_object_struct eT1BattleObject17
	t1_battle_object_struct eT1BattleObject18
	t1_battle_object_struct eT1BattleObject19
	t1_battle_object_struct eT1BattleObject20
	t1_battle_object_struct eT1BattleObject21
	t1_battle_object_struct eT1BattleObject22
	t1_battle_object_struct eT1BattleObject23
	t1_battle_object_struct eT1BattleObject24
	t1_battle_object_struct eT1BattleObject25
	t1_battle_object_struct eT1BattleObject26
	t1_battle_object_struct eT1BattleObject27
	t1_battle_object_struct eT1BattleObject28
	t1_battle_object_struct eT1BattleObject29
	t1_battle_object_struct eT1BattleObject30
	t1_battle_object_struct eT1BattleObject31
eT1BattleObjectsEnd:: // 0x203c4a0
byte_203C4A0:: // 0x203c4a0
	.space 64
byte_203C4E0:: // 0x203c4e0
	.space 512
byte_203C6E0:: // 0x203c6e0
	.space 640
byte_203C960:: // 0x203c960
	.space 1
byte_203C961:: // 0x203c961
	.space 1
word_203C962:: // 0x203c962
	.space 2
dword_203C964:: // 0x203c964
	.space 4
byte_203C968:: // 0x203c968
	.space 8
dword_203C970:: // 0x203c970
	.space 4
byte_203C974:: // 0x203c974
	.space 4
dword_203C978:: // 0x203c978
	.space 4
dword_203C97C:: // 0x203c97c
	.space 4
byte_203C980:: // 0x203c980
	.space 100
byte_203C9E4:: // 0x203c9e4
	.space 100
dword_203CA48:: // 0x203ca48
	.space 4
dword_203CA4C:: // 0x203ca4c
	.space 4
byte_203CA50:: // 0x203ca50
	.space 32
dword_203CA70:: // 0x203ca70
	.space 4
byte_203CA74:: // 0x203ca74
	.space 6
word_203CA7A:: // 0x203ca7a
	.space 2
dword_203CA7C:: // 0x203ca7c
	.space 4
byte_203CA80:: // 0x203ca80
	.space 132
byte_203CB04:: // 0x203cb04
	.space 12
byte_203CB10:: // 0x203cb10
	.space 100
byte_203CB74:: // 0x203cb74
	.space 108
dword_203CBE0:: // 0x203cbe0
	.space 4
dword_203CBE4:: // 0x203cbe4
	.space 4
byte_203CBE8:: // 0x203cbe8
	.space 27
byte_203CC03:: // 0x203cc03
	.space 10
byte_203CC0D:: // 0x203cc0d
	.space 29
word_203CC2A:: // 0x203cc2a
	.space 2
byte_203CC2C:: // 0x203cc2c
	.space 8
byte_203CC34:: // 0x203cc34
	.space 28
byte_203CC50:: // 0x203cc50
	.space 40
byte_203CC78:: // 0x203cc78
	.space 32
byte_203CC98:: // 0x203cc98
	.space 8
dword_203CCA0:: // 0x203cca0
	.space 4
dword_203CCA4:: // 0x203cca4
	.space 4
byte_203CCA8:: // 0x203cca8
	.space 1
byte_203CCA9:: // 0x203cca9
	.space 1
byte_203CCAA:: // 0x203ccaa
	.space 1
byte_203CCAB:: // 0x203ccab
	.space 41
byte_203CCD4:: // 0x203ccd4
	.space 12
byte_203CCE0:: // 0x203cce0
	.space 200
byte_203CDA8:: // 0x203cda8
	.space 8
byte_203CDB0:: // 0x203cdb0
	.space 56
word_203CDE8:: // 0x203cde8
	.space 2
byte_203CDEA:: // 0x203cdea
	.space 6
dword_203CDF0:: // 0x203cdf0
	.space 4
byte_203CDF4:: // 0x203cdf4
	.space 12
byte_203CE00:: // 0x203ce00
	.space 100
byte_203CE64:: // 0x203ce64
	.space 108
byte_203CED0:: // 0x203ced0
	.space 1
byte_203CED1:: // 0x203ced1
	.space 2
byte_203CED3:: // 0x203ced3
	.space 1
dword_203CED4:: // 0x203ced4
	.space 4
byte_203CED8:: // 0x203ced8
	.space 40
byte_203CF00:: // 0x203cf00
	.space 160
dword_203CFA0:: // 0x203cfa0
	.space 4
byte_203CFA4:: // 0x203cfa4
	.space 12
dword_203CFB0:: // 0x203cfb0
	.space 4
dword_203CFB4:: // 0x203cfb4
	.space 4
dword_203CFB8:: // 0x203cfb8
	.space 4
dword_203CFBC:: // 0x203cfbc
	.space 4
dword_203CFC0:: // 0x203cfc0
	.space 4
byte_203CFC4:: // 0x203cfc4
	.space 12

eT3BattleObjects:: // 0x203cfd0
	t3_battle_object_struct eT3BattleObject0
	t3_battle_object_struct eT3BattleObject1
	t3_battle_object_struct eT3BattleObject2
	t3_battle_object_struct eT3BattleObject3
	t3_battle_object_struct eT3BattleObject4
	t3_battle_object_struct eT3BattleObject5
	t3_battle_object_struct eT3BattleObject6
	t3_battle_object_struct eT3BattleObject7
	t3_battle_object_struct eT3BattleObject8
	t3_battle_object_struct eT3BattleObject9
	t3_battle_object_struct eT3BattleObject10
	t3_battle_object_struct eT3BattleObject11
	t3_battle_object_struct eT3BattleObject12
	t3_battle_object_struct eT3BattleObject13
	t3_battle_object_struct eT3BattleObject14
	t3_battle_object_struct eT3BattleObject15
	t3_battle_object_struct eT3BattleObject16
	t3_battle_object_struct eT3BattleObject17
	t3_battle_object_struct eT3BattleObject18
	t3_battle_object_struct eT3BattleObject19
	t3_battle_object_struct eT3BattleObject20
	t3_battle_object_struct eT3BattleObject21
	t3_battle_object_struct eT3BattleObject22
	t3_battle_object_struct eT3BattleObject23
	t3_battle_object_struct eT3BattleObject24
	t3_battle_object_struct eT3BattleObject25
	t3_battle_object_struct eT3BattleObject26
	t3_battle_object_struct eT3BattleObject27
	t3_battle_object_struct eT3BattleObject28
	t3_battle_object_struct eT3BattleObject29
	t3_battle_object_struct eT3BattleObject30
	t3_battle_object_struct eT3BattleObject31
eT3BattleObjectsEnd:: // 0x203eae0

dword_203EAD0:: // 0x203ead0
	.space 4
dword_203EAD4:: // 0x203ead4
	.space 4
word_203EAD8:: // 0x203ead8
	.space 2
word_203EADA:: // 0x203eada
	.space 2
word_203EADC:: // 0x203eadc
	.space 2
word_203EADE:: // 0x203eade
	.space 2
byte_203EAE0:: // 0x203eae0
	.space 32
byte_203EB00:: // 0x203eb00
	.space 40
byte_203EB28:: // 0x203eb28
	.space 40
byte_203EB50:: // 0x203eb50
	.space 2
word_203EB52:: // 0x203eb52
	.space 2
byte_203EB54:: // 0x203eb54
	.space 1
byte_203EB55:: // 0x203eb55
	.space 1
word_203EB56:: // 0x203eb56
	.space 2
byte_203EB58:: // 0x203eb58
	.space 1
byte_203EB59:: // 0x203eb59
	.space 7
byte_203EB60:: // 0x203eb60
	.space 64
byte_203EBA0:: // 0x203eba0
	.space 512
byte_203EDA0:: // 0x203eda0
	.space 512
byte_203EFA0:: // 0x203efa0
	.space 1280
dword_203F4A0:: // 0x203f4a0
	.space 4
byte_203F4A4:: // 0x203f4a4
	.space 8
byte_203F4AC:: // 0x203f4ac
	.space 72
byte_203F4F4:: // 0x203f4f4
	.space 28
byte_203F510:: // 0x203f510
	.space 40
byte_203F538:: // 0x203f538
	.space 32
byte_203F558:: // 0x203f558
	.space 8
dword_203F560:: // 0x203f560
	.space 4
dword_203F564:: // 0x203f564
	.space 4
dword_203F568:: // 0x203f568
	.space 4
byte_203F56C:: // 0x203f56c
	.space 40
byte_203F594:: // 0x203f594
	.space 12
dword_203F5A0:: // 0x203f5a0
	.space 4
byte_203F5A4:: // 0x203f5a4
	.space 8
byte_203F5AC:: // 0x203f5ac
	.space 72
byte_203F5F4:: // 0x203f5f4
	.space 28
byte_203F610:: // 0x203f610
	.space 40
byte_203F638:: // 0x203f638
	.space 32
byte_203F658:: // 0x203f658
	.space 8
dword_203F660:: // 0x203f660
	.space 4
byte_203F664:: // 0x203f664
	.space 8
byte_203F66C:: // 0x203f66c
	.space 40
byte_203F694:: // 0x203f694
	.space 12
byte_203F6A0:: // 0x203f6a0
	.space 16
byte_203F6B0:: // 0x203f6b0
	.space 1
byte_203F6B1:: // 0x203f6b1
	.space 1
byte_203F6B2:: // 0x203f6b2
	.space 1
byte_203F6B3:: // 0x203f6b3
	.space 29
byte_203F6D0:: // 0x203f6d0
	.space 128
byte_203F750:: // 0x203f750
	.space 136
byte_203F7D8:: // 0x203f7d8
	.space 8
dword_203F7E0:: // 0x203f7e0
	.space 4
