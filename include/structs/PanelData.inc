
	.macro panel_data_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: BattleState
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Visible // loc=0x0
	u8 Unk_01 // loc=0x1
	u8 Type // loc=0x2
	u8 Alliance // loc=0x3
	struct_org 0x6
	u8 Animation // loc=0x6
	struct_org 0x14
	u32 Flags // loc=0x14
	struct_org 0x1c
	ptr ReserverObjectPtr // loc=0x1c
	u0 Size // loc=0x20
	u0 End // loc=0x20
	restore_struct_label
	.endm

	def_struct_offsets panel_data_struct, oPanelData
