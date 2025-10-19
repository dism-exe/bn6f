//! type: S200F348

  .macro s_200F348_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
  \set_struct_start_address \label
  set_struct_label \struct_entry, \label

  u8 Index_00 // loc=0x00

  struct_org 0x04

  // Used as a down counter used to time when to play game over song
  u16 DownCounter // loc=0x04

  // sub_803FB28 implies 0x08
  struct_org 0x08
  u0 Size // loc=0x08

  restore_struct_label
  .endm

  def_struct_offsets s_200F348_struct, oS200F348
