
	.data

unk_3000000:: // 0x3000000
	.space 1
byte_3000001:: // 0x3000001
	.space 239
byte_30000F0:: // 0x30000f0
	.space 10
byte_30000FA:: // 0x30000fa
	.space 150
byte_3000190:: // 0x3000190
	.space 3296
off_3000E70:: // 0x3000e70
	.space 4
off_3000E74:: // 0x3000e74
	.space 4
off_3000E78:: // 0x3000e78
	.space 4
off_3000E7C:: // 0x3000e7c
	.space 4
off_3000E80:: // 0x3000e80
	.space 4
off_3000E84:: // 0x3000e84
	.space 4
off_3000E88:: // 0x3000e88
	.space 4
off_3000E8C:: // 0x3000e8c
	.space 4
off_3000E90:: // 0x3000e90
	.space 4
off_3000E94:: // 0x3000e94
	.space 4
off_3000E98:: // 0x3000e98
	.space 4
off_3000E9C:: // 0x3000e9c
	.space 4
off_3000EA0:: // 0x3000ea0
	.space 4
off_3000EA4:: // 0x3000ea4
	.space 4
byte_3000EA8:: // 0x3000ea8
	.space 680

iObjectAttr3001150:: // 0x3001150
	.space oObjectAttr3001150_Size*128

byte_3001550:: // 0x3001550
	.space 28
byte_300156C:: // 0x300156c
	.space 4
byte_3001570:: // 0x3001570
	.space 32
byte_3001590:: // 0x3001590
	.space 32
byte_30015B0:: // 0x30015b0
	.space 32
byte_30015D0:: // 0x30015d0
	.space 32
byte_30015F0:: // 0x30015f0
	.space 32
byte_3001610:: // 0x3001610
	.space 32
byte_3001630:: // 0x3001630
	.space 32
byte_3001650:: // 0x3001650
	.space 32
byte_3001670:: // 0x3001670
	.space 20
word_3001684:: // 0x3001684
	.space 2
byte_3001686:: // 0x3001686
	.space 10
byte_3001690:: // 0x3001690
	.space 24
byte_30016A8:: // 0x30016a8
	.space 8
byte_30016B0:: // 0x30016b0
	.space 32
byte_30016D0:: // 0x30016d0
	.space 32
byte_30016F0:: // 0x30016f0
	.space 32
byte_3001710:: // 0x3001710
	.space 32
byte_3001730:: // 0x3001730
	.space 32
iPallete3001750:: // 0x3001750
	.space 0x120
iPalette3001870:: // 0x3001870
	.space 0x20
iPalette3001890:: // 0x3001890
	.space 0x60
iPalette30018F0:: // 0x30018f0
	.space 0x60
byte_3001950:: // 0x3001950
	.space 16
palette_3001960:: // 0x3001960
	.space 32
unk_3001980:: // 0x3001980
	.space 32
unk_30019A0:: // 0x30019a0
	.space 32
unk_30019C0:: // 0x30019c0
	.space 32
unk_30019E0:: // 0x30019e0
	.space 32
unk_3001A00:: // 0x3001a00
	.space 32
unk_3001A20:: // 0x3001a20
	.space 32
unk_3001A40:: // 0x3001a40
	.space 32
unk_3001A60:: // 0x3001a60
	.space 32
unk_3001A80:: // 0x3001a80
	.space 32
unk_3001AA0:: // 0x3001aa0
	.space 32
unk_3001AC0:: // 0x3001ac0
	.space 20
unk_3001AD4:: // 0x3001ad4
	.space 12
unk_3001AE0:: // 0x3001ae0
	.space 32
byte_3001B00:: // 0x3001b00
	.space 32
unk_3001B20:: // 0x3001b20
	.space 12
word_3001B2C:: // 0x3001b2c
	.space 20
unk_3001B40:: // 0x3001b40
	.space 22
word_3001B56:: // 0x3001b56
	.space 2
word_3001B58:: // 0x3001b58
	.space 8
iPalette3001B60:: // 0x3001b60
	.space 0x120
iPalette3001C80:: // 0x3001c80
	.space 0xe0
dword_3001D60:: // 0x3001d60
	.space 16

iObjectAttr3001D70:: // 0x3001d70
	.space oObjectAttr3001D70_Size*128
iObjectAttr3001D70End::

unk_3002170:: // 0x3002170
	.space 16
dword_3002180:: // 0x3002180
	.space 4
dword_3002184:: // 0x3002184
	.space 4
dword_3002188:: // 0x3002188
	.space 4
dword_300218C:: // 0x300218c
	.space 372
unk_3002300:: // 0x3002300
	.space 28
unk_300231C:: // 0x300231c
	.space 228
unk_3002400:: // 0x3002400
	.space oOAMEntry3002400_Size*32
unk_3002580:: // 0x3002580
	.space 16
tupleArr_3002590:: // 0x3002590
	// type: struct{u8 *p0, int len} [4]
	.space 4*8
unk_30025B0:: // 0x30025b0
	.space 16
// array of 32x32 blocks of u16 tile ids
// 0x2000 is cleared and recopied every frame
iBGTileIdBlocks:: // 0x30025c0
	// type: u16[32][32][4]
	.space 4*2*32*32
byte_30045C0:: // 0x30045c0
	.space 2688
byte_3005040:: // 0x3005040
	.space 156
unk_30050DC:: // 0x30050dc
	.space 64
	.space 264
unk_3005224:: // 0x3005224
	.space 76
unk_3005270:: // 0x3005270
	.space 112
unk_30052E0:: // 0x30052e0
	.space 132
unk_3005364:: // 0x3005364
	.space 84
unk_30053B8:: // 0x30053b8
	.space 92
unk_3005414:: // 0x3005414
	.space 4
unk_3005418:: // 0x3005418
	.space 8
unk_3005420:: // 0x3005420
	.space 42
unk_300544A:: // 0x300544a
	.space 4
unk_300544E:: // 0x300544e
	.space 10
unk_3005458:: // 0x3005458
	.space 2
unk_300545A:: // 0x300545a
	.space 2
unk_300545C:: // 0x300545c
	.space 16
unk_300546C:: // 0x300546c
	.space 68
unk_30054B0:: // 0x30054b0
	.space 12
unk_30054BC:: // 0x30054bc
	.space 32
unk_30054DC:: // 0x30054dc
	.space 4
unk_30054E0:: // 0x30054e0
	.space 42
unk_300550A:: // 0x300550a
	.space 4
unk_300550E:: // 0x300550e
	.space 22
unk_3005524:: // 0x3005524
	.space 4
unk_3005528:: // 0x3005528
	.space 22
unk_300553E:: // 0x300553e
	.space 34
unk_3005560:: // 0x3005560
	.space 16
off_3005570:: // 0x3005570
	.space 4
off_3005574:: // 0x3005574
	.space 28
off_3005590:: // 0x3005590
	.space 36
dword_30055B4:: // 0x30055b4
	.space 8
dword_30055BC:: // 0x30055bc
	.space 36
dword_30055E0:: // 0x30055e0
	.space 4
dword_30055E4:: // 0x30055e4
	.space 4
dword_30055E8:: // 0x30055e8
	.space 4
dword_30055EC:: // 0x30055ec
	.space 4
dword_30055F0:: // 0x30055f0
	.space 4
dword_30055F4:: // 0x30055f4
	.space 4
off_30055F8:: // 0x30055f8
	.space 4
off_30055FC:: // 0x30055fc
	.space 4
byte_3005600:: // 0x3005600
	.space 40
unk_3005628:: // 0x3005628
	.space 12
unk_3005634:: // 0x3005634
	.space 26
unk_300564E:: // 0x300564e
	.space 26
unk_3005668:: // 0x3005668
	.space 112
unk_30056D8:: // 0x30056d8
	.space 40
byte_3005700:: // 0x3005700
	.space 1024
