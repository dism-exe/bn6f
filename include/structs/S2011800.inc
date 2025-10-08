//! type: S2011800

  .macro s_2011800_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
  \set_struct_start_address \label
  set_struct_label \struct_entry, \label

  u8 Index_00 // loc=0x0

  // init_803D1A8 implies 0x08
  struct_org 0x08
  u0 Size // loc=0x08

  restore_struct_label
  .endm

  def_struct_offsets s_2011800_struct, oS2011800
