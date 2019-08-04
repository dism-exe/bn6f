
	.macro cutscene_camera_info_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	struct_org 0x4
	u16 Unk_04 // loc=0x4
	struct_org 0x40
	u0 Size // loc=0x40
	restore_struct_label
	.endm

	def_struct_offsets cutscene_camera_info_struct, oCutsceneCameraInfo
