
	.macro cutscene_camera_info_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	u32 CutsceneCameraScriptPtr // loc=0x0
	union
		u16 Timer // loc=0x4
		u16 CommandInitialized // loc=0x6
	nextu
		u32 Timer_CommandInitialized // loc=0x4
	endu
	u32 OldX // loc=0x8
	u32 OldY // loc=0xc
	u32 OldZ // loc=0x10
	u32 NewX // loc=0x14
	u32 NewY // loc=0x18
	u32 NewZ // loc=0x1c
	u32 SmoothAutoScrollDelta // loc=0x20
	u32 Unk_24 // loc=0x24
	struct_org 0x40
	u0 Size // loc=0x40
	restore_struct_label
	.endm

	def_struct_offsets cutscene_camera_info_struct, oCutsceneCameraInfo
