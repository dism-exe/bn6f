	// all unused flags are permanently set to 1
	.macro JoypadFlags field:req // type: enum JoypadFlags
        enum16 \field
        struct_const JOYPAD_DEFAULT, 0xFC00
        struct_const JOYPAD_A, 0x0001
        struct_const JOYPAD_B, 0x0002
        struct_const JOYPAD_SELECT, 0x0004
        struct_const JOYPAD_START, 0x0008
        struct_const JOYPAD_RIGHT, 0x0010
        struct_const JOYPAD_LEFT, 0x0020
        struct_const JOYPAD_UP, 0x0040
        struct_const JOYPAD_DOWN, 0x0080
        struct_const JOYPAD_ARROWS, JOYPAD_RIGHT | JOYPAD_LEFT | JOYPAD_UP | JOYPAD_DOWN
        struct_const JOYPAD_R, 0x0100
        struct_const JOYPAD_L, 0x0200
	.endm

	.macro joypad_struct, label=oJoypad, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
	\set_struct_start_address
	set_struct_label \struct_entry, \label
	JoypadFlags Held // loc=0x0
	// no unused flags set to one, only used signals
	JoypadFlags Pressed // loc=0x2
	JoypadFlags LowSensitivityHeld // loc=0x4
	JoypadFlags Held2 // loc=0x6
	u8 AHeldTimer // loc=0x8
	u8 BHeldTimer // loc=0x9
	u8 SelectHeldTimer // loc=0xa
	u8 StartHeldTimer // loc=0xb
	u8 RightHeldTimer // loc=0xc
	u8 LeftHeldTimer // loc=0xd
	u8 UpHeldTimer // loc=0xe
	u8 DownHeldTimer // loc=0xf
	u8 RHeldTimer // loc=0x10
	u8 LHeldTimer // loc=0x11
	u8 Undetected_12 // loc=0x12
	u8 LowSensitivityTimer // loc=0x13
	u0 Size // loc=0x14
	restore_struct_label
	.endm

	def_struct_offsets joypad_struct, oJoypad
