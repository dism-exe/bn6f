
	.macro chatbox_struct, label=oChatbox, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
        bool8 \label, Visible // loc=0x0
        u8 \label, TextScriptIdx // loc=0x1
        u8 \label, CurrLine // loc=0x2
        u8 \label, Unk_03 // loc=0x3
        u8 \label, TextScriptState_04 // loc=0x4
        u8 \label, Unk_05 // loc=0x5
        u8 \label, Und_06 // loc=0x6
        u8 \label, MugshotPaletteIdx // loc=0x7
        u8 \label, TextScriptPrintSpeed // loc=0x8
        bool8 \label, CharInPrint // loc=0x9
        u8 \label, Unk_0A // loc=0xA
        // Set to -1 everytime a page loads for some reason
        u8 \label, Unk_0B // loc=0xB
        u0 \label, BoxYX // loc=0xC
        u8 \label, BoxY // loc=0xC
        // 0x00 is neutral position
        u8 \label, BoxX // loc=0xD
        u8 \label, Unk_0E // loc=0xE
        // box gfx loaded from 0x00 to 0x08 at max
        u8 \label, BoxGfxLoadState_0F // loc=0xF
        u8 \label, ChatboxOpenState_10 // loc=0x10
        u8 \label, JumpTableOffset_11 // loc=0x11
        u8 \label, Unk_12 // loc=0x12
        u8 \label, ChoiceCursorPos // loc=0x13
        u8 \label, Unk_14 // loc=0x14
        u8 \label, Unk_15 // loc=0x15
        u8 \label, Unk_16 // loc=0x16
        u8 \label, Unk_17 // loc=0x17
        u8 \label, TextScriptCharIdx // loc=0x18
        u8 \label, Unk_19 // loc=0x19
        u8 \label, CursorIdx // loc=0x1A
        u8 \label, Unk_1B // loc=0x1B
        u8 \label, Unk_1C // loc=0x1C
        u8 \label, Unk_1D // loc=0x1D
        u8 \label, Unk_1E // loc=0x1E
        u8 \label, Unk_1F // loc=0x1F
        u16 \label, Und_20 // loc=0x20
        // joypad inner struct? also in AIData
        u16 \label, JoypadHeld // loc=0x22
        u16 \label, JoypadDown // loc=0x24
        u16 \label, JoypadUp // loc=0x26
        u16 \label, JoypadReleased // loc=0x28
        struct_org 0x2c
        ptr \label, TextScriptCursorPtr // loc=0x2C
        ptr \label, TextScriptPtr // loc=0x30
        // ?? check this
        ptr \label, CurrTextScriptPtr // loc=0x34
        u32 \label, Unk_38 // loc=0x38
        u0 \label, Und_3C_32 // suspect u32 access?
        u8 \label, Und_3C // loc=0x3C
        u8 \label, Unk_3D // loc=0x3D
        u16 \label, flags_3E // loc=0x3E
            struct_const FLAGS_3E_UNK_0001,              0x0001
            struct_const FLAGS_3E_MUGSHOT_ACTIVE,        0x0002
            struct_const FLAGS_3E_UNK_0004,              0x0004
            struct_const FLAGS_3E_UNK_0008,              0x0008
            struct_const FLAGS_3E_UNK_0010,              0x0010
            struct_const FLAGS_3E_UNK_0020,              0x0020
            struct_const FLAGS_3E_UNK_0040,              0x0040
            struct_const FLAGS_3E_UNK_0080,              0x0080
            struct_const FLAGS_3E_HIDE_CHATBOX,          0x0100
            struct_const FLAGS_3E_UNK_0200,              0x0200
            struct_const FLAGS_3E_UNK_0400,              0x0400
            struct_const FLAGS_3E_UNK_0800,              0x0800
            struct_const FLAGS_3E_UNK_1000,              0x1000
        u32 \label, MugshotColorFilter_40 // loc=0x40
        u32 \label, Unk_44 // loc=0x44
        u32 \label, Und_48 // loc=0x48
        u32 \label, Unk_4C // loc=0x4C
        u32 \label, Unk_50 // loc=0x50
        u32 \label, Unk_54 // loc=0x54
        u32 \label, Unk_58 // loc=0x58
        struct_org 0x64
        u16 \label, Unk_64 // loc=0x64
        u16 \label, Und_66 // loc=0x66
        u16 \label, Unk_68 // loc=0x68
        u16 \label, Unk_6A // loc=0x6A
        u16 \label, Unk_6C // loc=0x6C
        u16 \label, Unk_6E // loc=0x6E
        u32 \label, Unk_70 // loc=0x70
        u32 \label, Unk_74 // loc=0x74
        u32 \label, Unk_78 // loc=0x78
        u32 \label, Unk_7C // loc=0x7C
        u8 \label, Unk_80 // loc=0x80
        struct_org 0x84
        u32 \label, Unk_84 // loc=0x84
        u32 \label, Unk_88 // loc=0x88
        u32 \label, Und_8C // loc=0x8C
        u32 \label, Unk_90 // loc=0x90
        u8 \label, Unk_94 // loc=0x94
        // finish scanning fields? Is this struct really that big?
        struct_org 0x230
        // size guessed as 0x230 from ZeroFillByWord(tk->ChatboxPtr, 0x230)
        u0 \label, Size // loc=0x230
	.endm

	def_struct_offsets chatbox_struct, oChatbox
