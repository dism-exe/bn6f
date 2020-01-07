
	.macro start_screen_struct, label=oStartScreen, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct StartScreen
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u0 Unk_00 // loc=0x00 accessed as u16
	u8 JumpTableOff_00 // loc=0x0
	u8 JumpTableOff_01 // loc=0x1
	u8 Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	u16 LogoShowTimer // loc=0x4
	u8 Unk_06 // loc=0x6
	u8 Unk_07 // loc=0x7
	u8 CurrCursorPos // loc=0x8
	u8 NumChoices // loc=0x9
	flags16 AchievmentFlags // loc=0xA
	u8 Unk_0C // loc=0xC
	u8 Und_0D // loc=0xD
	u8 Unk_0E // loc=0xE
	u8 Unk_0F // loc=0xF
	// implied size via ZeroFillByWord(&eStartScreen, 32);
	struct_org 0x20
	u0 Size // loc=0x20
	restore_struct_label
	.endm

	def_struct_offsets start_screen_struct, oStartScreen
