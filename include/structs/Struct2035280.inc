//! type: struct Struct2035280

  .macro s_2035280_struct label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
  \set_struct_start_address \label
  set_struct_label \struct_entry, \label

	struct_org 0x17
  u8 NaviStatusGfxIdx // loc=0x17

  // RetrieveAndRenderEnemyVirusNamesInBattle_801E574 seems to imply that this is an inner array [u16; 4] (size 0x08)
  struct_org 0x28
  u0 VirusNameIdxU16Arr // loc=0x28

	struct_org 0x44
	flags32 UnkFlags_44 // loc=0x44

  // sub_801BE70 implies 0x60
  struct_org 0x60
  u0 Size // loc=0x60

  restore_struct_label
  .endm

  def_struct_offsets s_2035280_struct, oStruct2035280
