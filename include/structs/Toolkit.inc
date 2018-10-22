.macro toolkit_struct, label, struct_entry=label_struct_entry, struct_begin=struct_begin
\struct_begin
  \struct_entry \label\()_MainJumptableIndexPtr, 4 // loc=0x0
  \struct_entry \label\()_JoypadPtr, 4 // loc=0x4
  \struct_entry \label\()_RenderInfoPtr, 4 // loc=0x8
  \struct_entry \label\()_CameraPtr, 4 // loc=0xc
  \struct_entry \label\()_S2011c50_Ptr, 4 // loc=0x10
  \struct_entry \label\()_Unk2011bb0_Ptr, 4 // loc=0x14
  \struct_entry \label\()_S2034880_Ptr, 4 // loc=0x18
  \struct_entry \label\()_Unk200f3a0_Ptr, 4 // loc=0x1c
  \struct_entry \label\()_Unk2009740_Ptr, 4 // loc=0x20
  \struct_entry \label\()_CurFramePtr, 4 // loc=0x24
  \struct_entry \label\()_GFX30025c0_Ptr, 4 // loc=0x28
  \struct_entry \label\()_ChatboxPtr, 4 // loc=0x2c
  \struct_entry \label\()_Unk20384f0_Ptr, 4 // loc=0x30
  \struct_entry \label\()_SubmenuPtr, 4 // loc=0x34
  \struct_entry \label\()_Unk200a220_Ptr, 4 // loc=0x38
  \struct_entry \label\()_GameStatePtr, 4 // loc=0x3c
  \struct_entry \label\()_Unk2001c04_Ptr, 4 // loc=0x40
  \struct_entry \label\()_Flags2001c88_Ptr, 4 // loc=0x44
  \struct_entry \label\()_S_Chip_2002178_Ptr, 4 // loc=0x48
  \struct_entry \label\()_Unk2002230_Ptr, 4 // loc=0x4c
  \struct_entry \label\()_Unk2003134_Ptr, 4 // loc=0x50
  \struct_entry \label\()_Unk20032c8_Ptr, 4 // loc=0x54
  \struct_entry \label\()_Unk200414c_Ptr, 4 // loc=0x58
  \struct_entry \label\()_Unk2004190_Ptr, 4 // loc=0x5c
  \struct_entry \label\()_Unk200431c_Ptr, 4 // loc=0x60
  \struct_entry \label\()_Unk2004330_Ptr, 4 // loc=0x64
  \struct_entry \label\()_Unk2004334_Ptr, 4 // loc=0x68
  \struct_entry \label\()_Unk2004338_Ptr, 4 // loc=0x6c
  \struct_entry \label\()_Unk2004348_Ptr, 4 // loc=0x70
  \struct_entry \label\()_Unk20047cc_Ptr, 4 // loc=0x74
  \struct_entry \label\()_Unk2004a8c_Ptr, 4 // loc=0x78
  \struct_entry \label\()_Unk2004c20_Ptr, 4 // loc=0x7c
  \struct_entry \label\()_Unk2004e24_Ptr, 4 // loc=0x80
  \struct_entry \label\()_Unk2005028_Ptr, 4 // loc=0x84
  \struct_entry \label\()_Unk2005030_Ptr, 4 // loc=0x88
  \struct_entry \label\()_Unk2005038_Ptr, 4 // loc=0x8c
  \struct_entry \label\()_UnusedGarbage, 4  // loc=0x90
.endm

def_struct_offsets toolkit_struct, oToolkit
