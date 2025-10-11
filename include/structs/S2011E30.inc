//! type: eS2011E30

  .macro s_2011E30_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
  \set_struct_start_address \label
  set_struct_label \struct_entry, \label

  struct_org 0x4
  u8 Idx_04 // loc=0x4

  struct_org 0x7
  u8 Unk_07 // loc=0x7
  u16 Unk_08 // loc=0x8


  // sub_8033948 implies 0x10
  struct_org 0x10
  u0 Size // loc=0x10

  restore_struct_label
  .endm

  def_struct_offsets s_2011E30_struct, oS2011E30
