
	.macro object_header_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin \label
	\struct_entry \label\()_Flags, 1 // loc=0x0
	\struct_entry \label\()_Index, 1 // loc=0x1
	\struct_entry \label\()_TypeAndSpriteOffset // loc=0x2
	\struct_entry \label\()_Type
	\struct_entry \label\()_SpriteOffset, 1
	\struct_entry \label\()_ListIndex, 1 // loc=0x3
	.endm

	def_struct_offsets object_header_struct, oObjectHeader
