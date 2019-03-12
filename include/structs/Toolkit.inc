    // toolkit struct, always in r10
	.macro toolkit_struct, label:req, struct_entry=label_struct_entry, struct_begin=struct_begin
        \struct_begin
        struct_init_defs \struct_entry, \label
        ptr \label, MainJumptableIndexPtr // loc=0x0
    	ptr \label, JoypadPtr // loc=0x4
        ptr \label, RenderInfoPtr // loc=0x8
        ptr \label, CameraPtr // loc=0xc
        ptr \label, S2011c50_Ptr // loc=0x10
        ptr \label, Unk2011bb0_Ptr // loc=0x14
        ptr \label, BattleStatePtr // loc=0x18
        ptr \label, Unk200f3a0_Ptr // loc=0x1c
        ptr \label, Unk2009740_Ptr // loc=0x20
        ptr \label, CurFramePtr // loc=0x24
        ptr \label, iBGTileIdBlocks_Ptr // loc=0x28
        ptr \label, ChatboxPtr // loc=0x2c
        ptr \label, Unk20384f0_Ptr // loc=0x30
        ptr \label, SubmenuPtr // loc=0x34
        ptr \label, Unk200a220_Ptr // loc=0x38
        ptr \label, GameStatePtr // loc=0x3c
        ptr \label, Unk2001c04_Ptr // loc=0x40
        ptr \label, EventFlagsPtr // loc=0x44
        ptr \label, S_Chip_2002178_Ptr // loc=0x48
        ptr \label, Unk2002230_Ptr // loc=0x4c
        ptr \label, Unk2003134_Ptr // loc=0x50
        ptr \label, Unk20032c8_Ptr // loc=0x54
        ptr \label, Unk200414c_Ptr // loc=0x58
        ptr \label, Unk2004190_Ptr // loc=0x5c
        ptr \label, Unk200431c_Ptr // loc=0x60
        ptr \label, Unk2004330_Ptr // loc=0x64
        ptr \label, Unk2004334_Ptr // loc=0x68
        ptr \label, Unk2004338_Ptr // loc=0x6c
        ptr \label, Unk2004348_Ptr // loc=0x70
        ptr \label, Unk20047cc_Ptr // loc=0x74
        ptr \label, Unk2004a8c_Ptr // loc=0x78
        ptr \label, Unk2004c20_Ptr // loc=0x7c
        ptr \label, Unk2004e24_Ptr // loc=0x80
        ptr \label, Unk2005028_Ptr // loc=0x84
        ptr \label, Unk2005030_Ptr // loc=0x88
        ptr \label, Unk2005038_Ptr // loc=0x8c
        u32 \label, UnusedGarbage // loc=0x90
        u0  \label, Size // loc=0x94
	.endm

	def_struct_offsets toolkit_struct, oToolkit
