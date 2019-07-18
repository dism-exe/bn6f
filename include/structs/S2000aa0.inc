
	.macro s_2000aa0_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u8 OWPlayerNaviHorizontalCompress // loc=0x0
		struct_const DEFAULT_OW_PLAYER_NAVI_HORIZONTAL_COMPRESS, 0x40
	u8 OWPlayerNaviVerticalCompress // loc=0x1
		struct_const DEFAULT_OW_PLAYER_NAVI_VERTICAL_COMPRESS, 0x40
	u8 OWPlayerNaviRotation // loc=0x2
		struct_const DEFAULT_OW_PLAYER_NAVI_ROTATION, 0
	u8 Unk_03 // loc=0x3
	u8 Sprite_04
	u8 OWPlayerNaviPaletteIndex // loc=0x5
	u16 OWPlayerNaviColorShader // loc=0x6
	struct_org 0x1c
	u0 Size // loc=0x1c
	restore_struct_label
	.endm

	def_struct_offsets s_2000aa0_struct, oS2000aa0
