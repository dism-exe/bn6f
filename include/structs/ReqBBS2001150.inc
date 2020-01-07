	.macro req_bbs_2001150_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label

    struct_org 0x04
    u8 Unk_04 // loc=0x04
    struct_org 0x28
    u32 Unk_28 // loc=0x28

	u0 Size // loc=0x2c
	
    restore_struct_label
	.endm

	def_struct_offsets req_bbs_2001150_struct, oReqBBS2001150

