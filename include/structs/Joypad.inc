
	.macro joypad_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
	\struct_begin
	\struct_entry \label\()_Held, 2 // loc=0x0
	\struct_entry \label\()_Pressed, 2 // loc=0x2
	\struct_entry \label\()_LowSensitivityHeld, 2 // loc=0x4
	\struct_entry \label\()_Held2, 2 // loc=0x6
	\struct_entry \label\()_AHeldTimer, 1 // loc=0x8
	\struct_entry \label\()_BHeldTimer, 1 // loc=0x9
	\struct_entry \label\()_SelectHeldTimer, 1 // loc=0xa
	\struct_entry \label\()_StartHeldTimer, 1 // loc=0xb
	\struct_entry \label\()_RightHeldTimer, 1 // loc=0xc
	\struct_entry \label\()_LeftHeldTimer, 1 // loc=0xd
	\struct_entry \label\()_UpHeldTimer, 1 // loc=0xe
	\struct_entry \label\()_DownHeldTimer, 1 // loc=0xf
	\struct_entry \label\()_RHeldTimer, 1 // loc=0x10
	\struct_entry \label\()_LHeldTimer, 1 // loc=0x11
	\struct_entry \label\()_Undetected_12, 1 // loc=0x12
	\struct_entry \label\()_LowSensitivityTimer, 1 // loc=0x13
	\struct_entry \label\()_Size // loc=0x14
	.endm

	def_struct_offsets joypad_struct, oJoypad
