
    // all unused flags are permanently set to 1
    .macro joypad_enum_t label, field:req
        u16 \label, \field
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

	.macro joypad_struct, label=oJoypad, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin
        struct_init_defs \struct_entry, \label
        joypad_enum_t \label, Held // loc=0x0
        // no unused flags set to one, only used signals
        joypad_enum_t \label, Pressed // loc=0x2
        joypad_enum_t \label, LowSensitivityHeld // loc=0x4
        joypad_enum_t \label, Held2 // loc=0x6
        u8 \label, AHeldTimer // loc=0x8
        u8 \label, BHeldTimer // loc=0x9
        u8 \label, SelectHeldTimer // loc=0xa
        u8 \label, StartHeldTimer // loc=0xb
        u8 \label, RightHeldTimer // loc=0xc
        u8 \label, LeftHeldTimer // loc=0xd
        u8 \label, UpHeldTimer // loc=0xe
        u8 \label, DownHeldTimer // loc=0xf
        u8 \label, RHeldTimer // loc=0x10
        u8 \label, LHeldTimer // loc=0x11
        u8 \label, Undetected_12 // loc=0x12
        u8 \label, LowSensitivityTimer // loc=0x13
        u0 \label, Size // loc=0x14
	.endm

	def_struct_offsets joypad_struct, oJoypad
