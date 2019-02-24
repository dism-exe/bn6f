
	.macro object_sprite_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_entry \label\()_Unk_00, 1 // loc=0x0
	\struct_entry \label\()_Unk_01, 1 // loc=0x1
	\struct_entry \label\()_Unk_02, 1 // loc=0x2
	\struct_entry \label\()_Unk_03, 1 // loc=0x3
	\struct_entry \label\()_Unk_04, 1 // loc=0x4
	\struct_entry \label\()_Unk_05, 1 // loc=0x5
	\struct_entry \label\()_Unk_06, 2 // loc=0x6
	.space 0x2
	\struct_entry \label\()_Unk_0a, 2 // loc=0xa
	.space 0x4
	\struct_entry \label\()_Unk_10, 1 // loc=0x12 // also size 2
	\struct_entry \label\()_Unk_11, 1 // loc=0x11
	\struct_entry \label\()_Unk_12, 1 // loc=0x12 // also size 2
	\struct_entry \label\()_Unk_13, 1 // loc=0x13
	\struct_entry \label\()_Unk_14, 1 // loc=0x14
	\struct_entry \label\()_Unk_15, 1 // loc=0x15
	\struct_entry \label\()_Unk_16, 2 // loc=0x16
	\struct_entry \label\()_Unk_18, 4 // loc=0x18
	\struct_entry \label\()_Unk_1c, 4 // loc=0x1c
	\struct_entry \label\()_Unk_20, 4 // loc=0x20
	\struct_entry \label\()_Unk_24, 4 // loc=0x24
	\struct_entry \label\()_Unk_28, 4 // loc=0x28
	\struct_entry \label\()_Unk_2c, 4 // loc=0x2c
	\struct_entry \label\()_Unk_30, 4 // loc=0x30
	\struct_entry \label\()_Unk_34, 4 // loc=0x34
	\struct_entry \label\()_Size // loc=0x38
	.endm

	.struct 0
	def_struct_offsets object_sprite_struct, oObjectSprite
