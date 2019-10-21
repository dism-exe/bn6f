
	.macro ow_npc_sprite_variations_struct sprite_id, hidden_oam_pieces, palette_index
	init_rom_struct ow_npc_sprite_variations_struct
	u8 SpriteId, \sprite_id // loc=0x0
	u8 HiddenOAMPieces, \hidden_oam_pieces // loc=0x1
	u8 PaletteIndex, \palette_index // loc=0x2
	u0 Size // loc=0x3
	.endm

	def_rom_struct_offsets ow_npc_sprite_variations_struct, oOverworldNPCSpriteVariations
