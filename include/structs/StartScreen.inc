
	.macro start_screen_struct, label=oStartScreen, struct_entry=label_struct_entry, struct_begin=struct_begin
		\struct_begin
		struct_init_defs \struct_entry, \label
		u0 \label, Unk_00 // loc=0x00 accessed as u16
		u8 \label, JumpTableOff_00 // loc=0x0
		u8 \label, JumpTableOff_01 // loc=0x1
		u8 \label, Unk_02 // loc=0x2
		u8 \label, Unk_03 // loc=0x3
		u16 \label, LogoShowTimer // loc=0x4
		u8 \label, Unk_06 // loc=0x6
		u8 \label, Unk_07 // loc=0x7
		u8 \label, CurrCursorPos // loc=0x8
		u8 \label, NumChoices // loc=0x9
		u16 \label, AchievmentFlags // loc=0xA
		u8 \label, Unk_0C // loc=0xC
		u8 \label, Und_0D // loc=0xD
		u8 \label, Unk_0E // loc=0xE
		u8 \label, Unk_0F // loc=0xF
		// implied size via ZeroFillByWord(&eStartScreen, 32);
		struct_org 0x20
		u0 \label, Size // loc=0x20
	.endm

	def_struct_offsets start_screen_struct, oStartScreen
