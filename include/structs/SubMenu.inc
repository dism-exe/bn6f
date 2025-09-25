//! type: SubMenu

  .macro sub_menu_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
  \set_struct_start_address \label
  set_struct_label \struct_entry, \label

  u8 idx_00 // loc=0x0

  // sub_8123408 implies 0x80, but we only have this much space as implied by ewram.s
  struct_org 0x50
  u0 Size // loc=0x80

  restore_struct_label
  .endm

  def_struct_offsets sub_menu_struct, oSubMenu
