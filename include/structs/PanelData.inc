
	.macro panel_data_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: BattleState
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Visible // loc=0x0
	u8 Unk_01 // loc=0x1
	u8 Type // loc=0x2
	u8 Alliance // loc=0x3
	u8 Unk_04 // loc=0x4
	struct_org 0x6
	u8 Animation // loc=0x6
	u8 Unk_07 // loc=0x7
	u8 Unk_08 // loc=0x8
	u8 Unk_09 // loc=0x9
	struct_org 0xd
	u8 Unk_0d // loc=0xd
	struct_org 0x10
	u16 Unk_10 // loc=0x10
	u16 Unk_12 // loc=0x12
	u32 Flags // loc=0x14
	struct_org 0x1c
	ptr ReserverObjectPtr // loc=0x1c
	u0 Size // loc=0x20
	u0 End // loc=0x20
	restore_struct_label
	.endm

	def_struct_offsets panel_data_struct, oPanelData
