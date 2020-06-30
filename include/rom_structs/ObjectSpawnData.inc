
	.macro ObjectSpawnType field:req, value
	enum8 \field, \value
	struct_const OBJECT_SPAWN_TYPE_OWPLAYER, 0
	struct_const OBJECT_SPAWN_TYPE_UNK_1, 1
	struct_const OBJECT_SPAWN_TYPE_OVERWORLD_NPC, 2
	struct_const OBJECT_SPAWN_TYPE_UNK_3, 3
	struct_const OBJECT_SPAWN_TYPE_UNK_4, 4
	struct_const OBJECT_SPAWN_TYPE_OVERWORLD_MAP, 5
	.endm

	.macro object_spawn_data_struct type, index, x, y, z, object_id
	init_rom_struct object_spawn_data_struct
	ObjectSpawnType Type, \type // loc=0x0
	u8 Index, \index // loc=0x1
	u8 Padding2, 0 // loc=0x2
	u8 Padding3, 0 // loc=0x3
	u32 X, \x // loc=0x4
	u32 Y, \y // loc=0x8
	u32 Z, \z // loc=0xc
	u32 ObjectID, \object_id // loc=0x10
	u0 Size // loc=0x14
	.endm

	def_rom_struct_offsets object_spawn_data_struct, oObjectSpawnData
