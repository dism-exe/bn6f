//! type: S200A290

  .macro s_200A290_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
  \set_struct_start_address \label
  set_struct_label \struct_entry, \label

  u8 Index_00 // loc=0x00

  // `sub_8049DDC`, `sub_8039570`, and `sub_8048F9C` all zero it with size `0x1b0`
  struct_org 0x1b0
  u0 Size // loc=0x1b0

  restore_struct_label
  .endm

  // TODO This might be an overlay so it can't go in ewram.s yet
  def_struct_offsets s_200A290_struct, oS200A290
