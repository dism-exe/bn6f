//! type: struct S20364C0

	.macro s_20364C0_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	
	u8 JumpOffset00 // loc=0x0
	u8 JumpOffset01 // loc=0x1
	bool Unk_02 // loc=0x2
	u8 Unk_03 // loc=0x3
	u8 Unk_04 // loc=0x4
	u8 Unk_05 // loc=0x5
	u8 Unk_06 // loc=0x6
  // this tracks the position of the cursor on which chip slot is selected. `0x00, 0x01, 0x02, 0x03, 0x04` for the first row. `OK` is `0x0A`
  // If written, it will also move the cursor to that position in the UI.
	u8 ChipSelectCursorPos // loc=0x7
	u8 NumChipsSelected // loc=0x8
	u8 Unk_09 // loc=0x9
	u8 Unk_0a // loc=0xa
	u8 Unk_0b // loc=0xb
	u8 Unk_0c // loc=0xc
	u8 Unk_0d // loc=0xd
	u8 Unk_0e // loc=0xe
	u8 Unk_0f // loc=0xf
	u16 Unk_10 // loc=0x10
	u8 JumpOffset12 // loc=0x12
  u8 Unk_13 // loc=0x13
	u8 Unk_14 // loc=0x14
	u8 Unk_15 // loc=0x15
	u8 Unk_16 // loc=0x16
  u8 Unk_17 // loc=0x17
	// conflict, sub_802BD60 treats 0x18 as ptr
	u8 Unk_18 // loc=0x18
	u8 Unk_19 // loc=0x19
  u8 Unk_1a // loc=0x1a

	struct_org 0x1c
	u32 Unk_1c // loc=0x1c
	u16 Unk_20 // loc=0x20

	struct_org 0x38
	u16 Unk_38 // loc=0x38
	u16 Unk_3a // loc=0x3a

	// sub_8026840 implies 0x70, but this conflicts with unk_2036500 which has references. So up to conflict is 0x40
  // But we do see uses in sub_8026B04 of 0x40 and 0x44
	struct_org 0x40
	u0 Size // loc=0x40

	restore_struct_label
	.endm
	
	def_struct_offsets s_20364C0_struct, oS20364C0

	// Calling it Extra for now until we understand why the conflicting references
  .equiv oS20364C0_Extra_Unk_40, 0x40 // u32
  .equiv oS20364C0_Extra_Unk_44, 0x44 // flags32
  .equiv oS20364C0_Extra_Size, 0x48

