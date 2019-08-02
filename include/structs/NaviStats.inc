
	.macro navi_stats_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	struct_org 0xe
	u8 Mood // loc=0xe
	struct_org 0x2c
	u8 Transformation // loc=0x2c
	struct_org 0x40
	u16 CurHP // loc=0x40
	u16 MaxHP // loc=0x42
	struct_org 0x64
	u0 Size // loc=0x64
	u0 End // loc=0x64
	restore_struct_label
	.endm

	def_struct_offsets navi_stats_struct, oNaviStats
