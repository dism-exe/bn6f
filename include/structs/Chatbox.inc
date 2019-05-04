
	.macro chatbox_struct, label=oChatbox, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
		bool8 Visible // loc=0x0
		u8 TextScriptIdx // loc=0x1
		u8 CurrLine // loc=0x2
		u8 Unk_03 // loc=0x3
		u8 TextScriptState_04 // loc=0x4
		u8 Unk_05 // loc=0x5
		u8 Und_06 // loc=0x6
		u8 MugshotPaletteIdx // loc=0x7
		u8 TextScriptPrintSpeed // loc=0x8
		bool8 CharInPrint // loc=0x9
		u8 Unk_0A // loc=0xA
		// Set to -1 everytime a page loads for some reason
		u8 Unk_0B // loc=0xB
		// BoxX: 0x00 is neutral position
		union
		u8 BoxY // loc=0xC
		u8 BoxX // loc=0xD
		nextu
		u16 BoxYX // loc=0xC
		endu
		u8 Unk_0E // loc=0xE
		// box gfx loaded from 0x00 to 0x08 at max
		u8 BoxGfxLoadState_0F // loc=0xF
		u8 OpenState_10 // loc=0x10
		u8 JumpTableOffset_11 // loc=0x11
		u8 Unk_12 // loc=0x12
		u8 ChoiceCursorPos // loc=0x13
		u8 Unk_14 // loc=0x14
		u8 Unk_15 // loc=0x15
		u8 Unk_16 // loc=0x16
		u8 Unk_17 // loc=0x17
		u8 TextScriptCharIdx // loc=0x18
		u8 Unk_19 // loc=0x19
		u8 CursorIdx // loc=0x1A
		u8 Unk_1B // loc=0x1B
		u8 CurTileXBlockPos // loc=0x1C
		u8 CurTileYBlockPos // loc=0x1D
		// size in number of u16 TileIds to copy
		u8 CurTileWidth16 // loc=0x1E
		u8 CurTileHeight16 // loc=0x1F
		u16 Und_20 // loc=0x20
		// joypad inner struct? also in AIData
		u16 JoypadHeld // loc=0x22
		u16 JoypadDown // loc=0x24
		u16 JoypadUp // loc=0x26
		u16 JoypadReleased // loc=0x28
		struct_org 0x2c
		ptr TextScriptCursorPtr // loc=0x2C
		ptr TextScriptPtr // loc=0x30
		// ?? check this
		ptr CurrTextScriptPtr // loc=0x34
		u32 Unk_38 // loc=0x38
		u0 Und_3C_32 // suspect u32 access?
		u8 Und_3C // loc=0x3C
		u8 Unk_3D // loc=0x3D
		u16 flags_3E // loc=0x3E
			struct_const FLAGS_3E_UNK_0001,			  0x0001
			struct_const FLAGS_3E_MUGSHOT_ACTIVE,		0x0002
			struct_const FLAGS_3E_UNK_0004,			  0x0004
			struct_const FLAGS_3E_UNK_0008,			  0x0008
			struct_const FLAGS_3E_UNK_0010,			  0x0010
			struct_const FLAGS_3E_UNK_0020,			  0x0020
			struct_const FLAGS_3E_UNK_0040,			  0x0040
			struct_const FLAGS_3E_UNK_0080,			  0x0080
			struct_const FLAGS_3E_HIDE_CHATBOX,		  0x0100
			struct_const FLAGS_3E_UNK_0200,			  0x0200
			struct_const FLAGS_3E_UNK_0400,			  0x0400
			struct_const FLAGS_3E_UNK_0800,			  0x0800
			struct_const FLAGS_3E_UNK_1000,			  0x1000
		u32 MugshotColorFilter_40 // loc=0x40
		u32 Unk_44 // loc=0x44
		u32 Und_48 // loc=0x48
		u32 Unk_4C // loc=0x4C
		u32 Unk_50 // loc=0x50
		u32 Unk_54 // loc=0x54
		u32 Unk_58 // loc=0x58
		struct_org 0x64
		u16 Unk_64 // loc=0x64
		u16 Und_66 // loc=0x66
		u16 Unk_68 // loc=0x68
		u16 Unk_6A // loc=0x6A
		u16 Unk_6C // loc=0x6C
		u16 Unk_6E // loc=0x6E
		u32 Unk_70 // loc=0x70
		u32 Unk_74 // loc=0x74
		u32 Unk_78 // loc=0x78
		u32 Unk_7C // loc=0x7C
		u8 Unk_80 // loc=0x80
		struct_org 0x84
		u32 Unk_84 // loc=0x84
		u32 Unk_88 // loc=0x88
		u32 Und_8C // loc=0x8C
		u32 Unk_90 // loc=0x90
		u8 Unk_94 // loc=0x94
		// finish scanning fields? Is this struct really that big?
		struct_org 0x230
		// size guessed as 0x230 from ZeroFillByWord(tk->ChatboxPtr, 0x230)
		u0 Size // loc=0x230
		struct_end
	.endm

	def_struct_offsets chatbox_struct, oChatbox
